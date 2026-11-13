# Direção visual — premium, esportivo e elegante

**Conceito original:** painel de performance com estética editorial: superfícies claras, tipografia forte, contraste refinado e toques de verde-lima/menta como acento. Evitar o template genérico de dashboard roxo. Referências de *linguagem*, não para copiar: Linear (densidade e estrutura), Apple Fitness (clareza e motivação), WHOOP (dados e tendências), Strava (histórico e comunidade), Nike Training Club (visual de treino), Hevy/Strong (registro de séries). Consultar os produtos para inspiração própria e conferir direitos de marca/arte.

## Design tokens propostos
- Fundo `#F7F8F5`; superfície `#FFFFFF`; texto `#17201B`; secundário `#65746B`; bordas `#E4E9E2`.
- Acento `#B5F36B`; acento escuro `#183E2B`; alerta `#B75242`; foco `#4C7D50`.
- Alternativa dark `#101714`, cards `#19221D`, texto `#F1F6F0`, acento `#C1F877`.
- Fontes abertas a verificar: **Manrope** para títulos e **Inter** para conteúdo; fallback `system-ui`.
- Radius 14–22 px em cards; espaçamento 8pt; sombra suave; transições 140–220 ms.

## Portal do personal
Sidebar fixa no desktop: Visão Geral, Alunos, Treinos, Exercícios, Avaliações, Agenda, Mensagens, Financeiro (P1), Configurações. Topbar com busca global, notificações e seletor de unidade. Dashboard: alunos ativos, adesão da semana, treinos concluídos, pendências; gráfico de evolução e atividade recente. Ações principais: `Novo aluno` e `Montar treino`.

## Portal do aluno
Mobile-first: saudação, treino de hoje com tempo estimado e status, histórico recente e progresso. Tela de treino: GIF demonstrativo amplo (com botão de pausar), instruções curtas, tabela de séries editável (rep/carga/RPE), descanso com cronômetro e CTA `Concluir treino`. Navegação inferior: Hoje, Treinos, Progresso, Perfil.

## Super Admin
Identidade visual semelhante mas distinta por banner `Admin da plataforma`; menus: Visão Geral, Profissionais, Assinaturas, Planos e Preços, Faturas, Cupons, Catálogo, Suporte, Auditoria, Configurações. Cartões com crescimento de assinantes, MRR com nota metodológica, churn, trials. Tabela de clientes com status e ações auditadas. Editor de plano com validações, publicação versionada e prévia do preço.

## Estados obrigatórios
Loading/skeleton, vazio orientado, erro com retry, offline, limite do plano, trial expirado, pagamento pendente, acesso suspenso e sem permissão. Responsivo 360/768/1280px; WCAG 2.2 AA como meta (contraste, foco, teclado, reduzir movimento, descrições de mídia).

## Referência navegável
Abra `design/REFERENCIA_VISUAL.html` no navegador: é um **mockup estático de estilo**, não o aplicativo final nem uma cópia do MFit.
