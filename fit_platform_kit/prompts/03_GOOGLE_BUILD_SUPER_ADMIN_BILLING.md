# ETAPA 3 — Console do Super Admin e billing

NÃO recrie o projeto. Construir portal `/platform-admin` completamente separado das rotas de personal/aluno. Modo DEMO deve conter status “simulação; não processa cobranças”.

UI: visão geral de assinaturas, MRR (identificar como estimativa), inadimplência, trials, churn, clientes; tabela de tenants com pesquisa, filtros e timeline; CRUD de planos e preços com versionamento; limites por alunos/armazenamento/equipe; cupons; cortesias até data; suspender/reactivar com motivo; faturas e eventos; auditoria; configurações; tela de suporte sem acesso padrão a anamnese/fotos.

Integração real futura obrigatória: provedor de billing com checkout criado no servidor, plano/price_id validado, webhooks autenticados/idempotentes, `entitlements` definidos server-side, audit logs, MFA, RBAC e RLS. Não tratar dados de cartão. Não liberar funcionalidades só porque o frontend diz `active`. Não dar ao super admin acesso irrestrito a dados sensíveis dos alunos.

Criar portas/interfaces de `BillingService`, `EntitlementService`, `PlanService`, `AdminAuditService` com implementação mock isolada. Documentar contratos de eventos, transições e endpoints em `INTEGRATION_STATUS.md`. Cobrir upgrade/downgrade/cancelamento/atraso/cortesia e limites em testes.
