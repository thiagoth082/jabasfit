-- EXEMPLO DIDÁTICO, NÃO PRONTO PARA PRODUÇÃO. Faça revisão de segurança.
create extension if not exists pgcrypto;
create table if not exists public.tenants (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid not null references auth.users(id),
  name text not null,
  status text not null default 'trialing',
  created_at timestamptz not null default now()
);
create table if not exists public.tenant_members (
  tenant_id uuid not null references public.tenants(id),
  user_id uuid not null references auth.users(id),
  role text not null check (role in ('owner','coach','assistant')),
  status text not null default 'active' check (status in ('active','invited','disabled')),
  primary key(tenant_id,user_id)
);
create table if not exists public.students (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references public.tenants(id),
  display_name text not null,
  created_at timestamptz not null default now()
);
create index if not exists students_tenant_idx on public.students(tenant_id);
create or replace function public.is_active_tenant_member(p_tenant uuid)
returns boolean language sql stable security definer set search_path = '' as $$
  select exists (
    select 1 from public.tenant_members tm
    where tm.tenant_id = p_tenant and tm.user_id = (select auth.uid()) and tm.status = 'active'
  );
$$;
revoke all on function public.is_active_tenant_member(uuid) from public;
grant execute on function public.is_active_tenant_member(uuid) to authenticated;
alter table public.tenants enable row level security;
alter table public.tenant_members enable row level security;
alter table public.students enable row level security;
create policy students_select_by_tenant on public.students
 for select to authenticated using (public.is_active_tenant_member(tenant_id));
-- Não criar policies de escrita genéricas: implementar por papel + função protegida.
-- Falta também policy para aluno autenticado via student_links, validação de quotas,
-- logs de auditoria e bloqueio por entitlements. NÃO instalar isoladamente.
