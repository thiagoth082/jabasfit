# Escopo, personas e jornadas

## Perfis
**Super Admin** controla a plataforma e o faturamento SaaS (não deve poder visualizar detalhes de saúde de alunos por padrão). **Personal/gestor de estúdio** gerencia seus alunos, fichas e equipe conforme plano. **Aluno** vê somente seus próprios dados e treinos. **Equipe** (P1) recebe permissões limitadas no tenant do personal.

## Fluxos essenciais
1. Personal cria conta → confirma email → aceita termos → inicia trial/seleciona plano → cria perfil → cadastra aluno → atribui treino.
2. Personal abre editor → busca exercício → visualiza GIF autorizado → define séries, descanso, carga-alvo e observações → publica versão da ficha.
3. Aluno recebe convite → cria senha → aceita termos/privacidade → abre treino do dia → assiste GIF → registra repetições, carga, esforço → conclui → acompanha histórico.
4. Personal avalia o cumprimento dos treinos e ajusta ficha; uma nova versão não deve sobrescrever histórico de sessões já concluídas.
5. Super Admin cria/edita plano e preço (com versionamento), acompanha assinaturas, usuários e receita, aplica cortesia/bloqueio com motivo e log, administra suporte e conteúdo de exercício.
6. Webhook de pagamento confirma status no backend → acesso é concedido/restrito por uma checagem central de entitlement e limites. Redirecionamento para tela de sucesso NÃO ativa acesso sozinho.

## Divisão por entregas
**MVP (P0):** auth; tenant; alunos; catálogo inicial com placeholders de mídia licenciada; treinos e execução; progresso simples; dashboard personal; planos SaaS; checkout; webhooks; super admin; logs mínimos; PWA.
**V1.1 (P1):** chat, agenda, avaliações avançadas, importação de exercícios em lote, fotos, cupons, templates avançados e temas por personal.
**V2 (P2):** aplicativos nativos, pagamentos personal→aluno, white-label, automações sofisticadas, IA assistiva com aprovação humana.

## Regras de produto
- Nenhuma demonstração pode conter dados pessoais reais.
- Cada tenant tem isolamento de dados verificável por políticas e testes, não apenas por filtros no front.
- Aluno pode estar vinculado a mais de um profissional somente mediante consentimento e escopo explícito por vínculo; começar com 1 tenant por vínculo é mais seguro.
- Bloqueio de conta por não pagamento preserva dados e oferece fluxo transparente de regularização/exportação aplicável.
- Preços/planos do SaaS são controlados pelo Super Admin. Valores na interface são apenas apresentação; valores cobrados vêm do backend/provedor.
