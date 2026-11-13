# ETAPA 5 — Integração real backend (executar em ambiente com acesso aos serviços)

O frontend DEMO está aprovado. Substitua mocks por serviços reais gradualmente, SEM perder navegação. Antes de migrations, mostre plano e dependências; aplicar alterações em desenvolvimento, nunca direto em produção sem revisão. Preferência: Supabase Auth/Postgres/Storage/RLS + Edge Functions.

1. Criar migrations idempotentes e versionadas para tenant, membros, alunos, vínculo auth, exercícios, mídia, programas/versionamento, sessões/séries, planos/preços, assinaturas, entitlements, audit logs e eventos de webhook.
2. Implementar RLS com teste cruzado entre dois tenants e aluno; default deny. Separar admins com ações server-side e MFA.
3. Criar Auth com convite, email, reset de senha e controle de sessão.
4. Implementar storage privado com URLs assinadas para fotos/medidas, público apenas para mídia com direitos verificados.
5. Implementar checks de planos/quotas no backend.
6. Integrar sandbox de provedor de pagamentos escolhido após verificação de disponibilidade e taxas; validar webhooks, eventos repetidos e fora de ordem, reconciliação; nunca expor chave secreta.
7. Configurar LGPD/consentimento, exclusão/exportação, auditoria, observabilidade e testes.
8. Atualizar `INTEGRATION_STATUS.md`: nenhuma feature deve permanecer marcada real se estiver mockada.

Nunca imprimir segredos, nunca instalar políticas permissivas para facilitar desenvolvimento, não criar cobrança real sem consentimento e configuração explícita.
