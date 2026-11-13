# Assinaturas — você como Super Admin

**Modelo inicial:** o personal paga mensalidade/anuidade para usar a plataforma; o aluno acessa através do personal sem pagar diretamente ao SaaS. Cobranças do aluno pelo personal são módulo separado (P2) e não devem ser misturadas com o faturamento do SaaS.

## Super Admin deve poder
- Criar, publicar, arquivar e versionar planos; definir `nome`, descrição, preço em BRL, periodicidade, trial, moeda, preço promocional com prazo, limite de alunos ativos, limite de armazenamento, equipe, funcionalidades incluídas.
- Ajustar os preços para **novos assinantes** sem modificar contratos ativos silenciosamente. Migração de valores existentes exige regra, aviso e consentimento quando aplicável.
- Ver MRR aproximado (com definição), receita recebida, churn, trials, planos por status, inadimplentes, taxas, reembolsos e crescimento. Não confundir receita projetada com recebimento.
- Buscar contas/tenants, inspecionar status de cobrança e limites, suspender/reactivar com motivo, conceder cortesia até data, redefinir quota de forma auditável, gerenciar cupons.
- Administrar catálogo de exercícios (com prova de direitos da mídia), mensagens da plataforma, tickets de suporte e logs de mudanças de planos/acessos.
- Criar outros administradores com permissões restritas. Ações críticas exigem MFA, log, confirmação reforçada e justificativa; evitar impersonação irrestrita.

## Estados de billing
`trialing`, `active`, `past_due`, `grace_period`, `canceled_at_period_end`, `canceled`, `suspended`, `unpaid`. Separar status interno de subscription e status de invoice/payment do provedor.

## Segurança da cobrança
- Checkout criado no servidor usando price IDs mapeados internamente e tenant autenticado; nunca confiar em preço, role ou tenant_id enviado pelo cliente.
- Provedor recomendado a avaliar no Brasil: Mercado Pago, Asaas, Pagar.me ou Stripe; verificar disponibilidade atual de Pix recorrente, cartão, taxas, parcelamento, split, webhooks e suporte **antes da escolha**.
- Webhook: validar assinatura, idempotência, proteção contra replay, reconciliar eventos fora de ordem, registrar evento e consultar estado atual quando necessário; não processar apenas pelo texto do evento.
- Acesso: consultar tabela `entitlements` atualizada pelo backend; definir grace period e limites. Sem acesso direto do cliente para editar assinaturas/entitlements.
- Reembolsos e cancelamentos acionados por funções protegidas no backend e sincronizados com o provedor.
- Nunca armazenar dados de cartão/PAN/CVV.

## Exemplo de planos (valores fictícios para mockup)
**Start:** até 10 alunos. **Pro:** até 50 alunos. **Studio:** até 200 alunos e equipe. **Enterprise:** sob negociação. **Não** habilitar cobrança com valores fictícios.

## RLS e suporte
Super Admin tem capacidade operacional restrita, **não** acesso irrestrito a prontuários/fotos/medidas dos alunos. Suporte excepcional deve exigir autorização, escopo, prazo e auditoria. Privacidade por padrão.
