# PROMPT MESTRE — colar no Google AI Studio Build

Você é uma equipe sênior de produto, UX, front-end, back-end, segurança e QA. Desenvolva um SaaS original chamado provisoriamente **ATLAS FIT** para personal trainers, inspirado na **categoria funcional** do MFit Personal, porém com identidade e código inteiramente originais. Referência a verificar manualmente: https://user.mfitpersonal.com.br/user?type=2. NÃO alegue ter acessado o concorrente se não tiver acessado. NÃO copie marca, arte, layout específico, conteúdo ou catálogo de GIFs do MFit. Meta: plataforma mais moderna, tecnológica, elegante e especialmente fluida em celulares.

**REGRA CRÍTICA DE ENTREGA:** se o ambiente não suportar backend/credenciais, construa um protótipo de interface **claramente marcado DEMO**, com serviços mock isolados e interfaces prontas para integrar Supabase e billing mais tarde. Jamais simule pagamentos reais ou afirme que existe proteção multi-tenant se for apenas frontend. Não usar dados pessoais reais.

## Papéis e portais
1. Personal: dashboard, alunos, anamnese, exercícios, editor de fichas, acompanhamento, treinos concluídos, progresso, configurações.
2. Aluno: home, treino de hoje, GIF de cada exercício, séries/repetições/carga/descanso/RPE, histórico, evolução, perfil.
3. Super Admin (dono): visão geral, profissionais, assinaturas, planos/preços, trials, cupons, faturas, limites, catálogo, suporte, auditoria. Ele configura planos/valores e pode conceder cortesia ou suspender conta com justificativa. Acesso por permissões reais no backend na etapa de produção.

## Funcionalidades prioritárias
- Cadastro/login, recuperação, convites, tenant, roles e UX por papel.
- Busca de exercícios por nome, músculos e equipamentos; biblioteca extensível, exercícios próprios; mídia por **GIF autorizado**, placeholder quando não existir; thumbnails e acessibilidade.
- Criação de ficha por dias, exercícios ordenáveis, número de séries, repetições, carga, descanso, tempo e notas; salvar como rascunho, publicar versão e atribuir aluno.
- Execução de treino pelo aluno: GIF, cronômetro de descanso, checkboxes por série, inputs de carga/repetições, salvar progresso e finalizar.
- Dashboards e histórico de progresso.
- Planos SaaS com limites por alunos ativos e recursos, estrutura pronta para integração com provedor de pagamento confiável via backend e webhooks.

## Regras de interface
- Direção visual premium: fundo off-white, texto verde-negro, acento lima-menta (#B5F36B), cards brancos, tipografia Manrope/Inter, bordas suaves, sombra discreta, gráficos limpos e microinterações respeitando reduce motion.
- Três shells adaptativos; experiência de personal desktop-first e aluno mobile-first; Super Admin claramente separado.
- Nada de tela monolítica com informações falsas: usar estados vazios úteis, skeletons, feedback de sucesso/erro, validação, responsividade e navegação funcional.
- Criar dados de demonstração exclusivamente fictícios e rotulados.

## Arquitetura desejada
React + TypeScript, componentes reutilizáveis, organização por features, formulários com validação, estado previsível, API abstraída. Exportável para Antigravity/Codex. Preferência futura: Supabase Auth/Postgres/Storage/RLS + serviço de pagamentos com backend seguro; segredos fora do frontend. Não gerar políticas `allow all` para alunos, nem dar poderes administrativos pela UI.

## Páginas que devem existir como MVP visual
Landing/preços; login/registro; onboarding personal; dashboard personal; alunos/lista/detalhe; exercícios/biblioteca/detalhe GIF; editor de treino; dashboard aluno; treino ativo; progresso; Super Admin/overview; contas; planos; assinaturas; faturas; auditoria; configurações.

## Entregáveis e método de trabalho
1. Explique a arquitetura e a árvore de pastas em README.
2. Gere UI navegável com componentes reutilizáveis, rotas definidas, três perfis de demonstração selecionáveis SOMENTE no modo DEMO.
3. Implemente os fluxos de demonstração sem botões mortos: criar aluno, montar/publicar ficha, registrar treino, editar plano fictício.
4. Documente explícita e separadamente cada funcionalidade mock vs conectada de verdade em `INTEGRATION_STATUS.md`.
5. Crie README com comandos de instalação/rodar/build e variáveis de ambiente de exemplo, sem segredos.
6. Se capacidade de output for limitada, comece com arquitetura + shells + dashboards + editor e informe as etapas restantes. Não invente conclusão.

Use os arquivos anexos `MATRIZ_FUNCIONALIDADES`, `DIRECAO_VISUAL_E_TELAS`, `ASSINATURAS_E_SUPER_ADMIN`, `STACK_E_DADOS` e `ACEITE_SEGURANCA_E_LANCAMENTO` como critérios de design e requisitos. Construa primeiro uma experiência coesa, depois uma feature vertical completa. Ao final, relate o que funciona, o que é demo e o que está pendente.
