# Arquitetura sugerida para Google AI Studio Build → Antigravity/Codex

## Stack
- Frontend: React + TypeScript + Vite ou Next.js (decidir a partir do código exportado), Tailwind CSS, componentes acessíveis, TanStack Query, React Hook Form + Zod, gráficos leves.
- Backend: Supabase (Postgres/Auth/Storage/RLS/Edge Functions) **ou** API Node/TypeScript com Postgres. Para orçamento enxuto, Supabase é uma opção prática. Não misturar autenticação simulada com real.
- Billing: servidor + provedor selecionado e homologado, webhooks, tabela de eventos, entitlements. Nunca executar lógica administrativa com service_role no browser.
- Hospedagem: frontend em host compatível; funções backend em ambiente com segredos; monitorar custos de storage, CDN, egress e GIFs.
- Produto: web app responsivo e PWA instalável; modo offline apenas para cache de assets públicos e rascunhos não sensíveis até haver sincronização consistente.

## Entidades/tabelas propostas
`auth.users` (provedor), `profiles` (user_id, display_name, app_role limitado), `tenants` (owner_id, status), `tenant_members` (tenant_id,user_id,role,status), `students` (tenant_id,owner_member_id,invitation_status), `student_links` (student_id, auth_user_id), `assessments` (tenant_id,student_id), `measurements` (tenant_id,student_id), `exercises` (id, visibility, title, muscle_groups, equipment, instructions,media_id), `media_assets` (mime, path, license_type, source, attribution, rights_verified), `training_programs` (tenant_id,student_id,current_version_id), `program_versions` (immutable published snapshot), `workout_days`, `prescriptions`, `workout_sessions`, `set_logs`, `notifications`, `plans`, `plan_prices`, `subscriptions`, `invoices`, `payments`, `entitlements`, `coupons`, `webhook_events`, `admin_actions`, `consents`, `data_requests`.

### Isolamento
Todas as tabelas com informações pessoais de alunos têm `tenant_id` e RLS habilitado. Uma função SQL segura determina membros ativos do tenant e permissões, usando `auth.uid()` e **nunca** valores de role enviados pelo front. Policy separada permite aluno ler/salvar somente seus próprios programas e logs; edição de prescrição fica apenas com personal autorizado. RLS não substitui validação por endpoint, constraints e índices.

### Dados sensíveis/LGPD
Medidas corporais, fotos, anamnese e restrições físicas podem constituir dados pessoais sensíveis sobre saúde. Aplicar minimização, finalidade clara, base legal adequada, transparência, consentimento quando necessário, proteção de mídia privada, política de retenção, exportação e exclusão, trilha de acesso, encarregado/canal de contato, backups. Não publicar fotos ou GIFs enviados por alunos em buckets públicos.

### Media GIF
- `exercises` referencia `media_assets`; originar apenas de assets criados por você, adquiridos com licença adequada, ou conteúdos próprios enviados com comprovação de direitos.
- Para cada demonstração: capa estática WebP/AVIF, GIF otimizado e opcional MP4/WebM para economia de banda; o requisito de produto é **a exibição de GIF** no detalhe do exercício, com opção de reprodução equivalente. GIF pode consumir muito mais banda.
- Autoplay somente quando visível (lazy loading), controles de pausar animação para acessibilidade, alt text, ângulo consistente, movimentos tecnicamente corretos e revisão profissional.
- Catálogo sem material licenciado pode usar `placeholder` textual, **não** scraping ou reaproveitamento de GIF do MFit/terceiros sem autorização.

## Resiliência
Versionar migrações, semear apenas dados fictícios, backups e restore testado, logs e monitoramento; tratamento de erros, rate limiting, testes de roles, índices por tenant, privacidade e custo por cliente. Agendar limpeza de mídia órfã somente após confirmação de não referência.
