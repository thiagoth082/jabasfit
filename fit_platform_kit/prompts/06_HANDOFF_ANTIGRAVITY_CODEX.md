# PROMPT DE TRANSFERÊNCIA — Google Antigravity ou Codex

Você recebeu um projeto gerado no Google AI Studio Build para um SaaS de treinamento físico, ATLAS FIT (marca provisória). Trabalhe NO REPOSITÓRIO EXISTENTE; NÃO recomece, não apague UI validada sem autorização. Leia README, `INTEGRATION_STATUS.md`, `package.json`, migrations e este ZIP.

**Missão:** transformar protótipo em produto seguro e operacional com três portais: personal, aluno, super admin.

Procedimento obrigatório:
1. Inventariar pastas, arquitetura, rotas e features; rodar `install`, `lint`, `typecheck`, `test` e `build` onde existirem. Relatar erros reais.
2. Classificar módulos: REAL / MOCK / INCOMPLETO / INSEGURO. Não fingir que billing, login ou banco estão integrados quando não estão.
3. Priorizar uma jornada vertical: Auth real → personal cadastra aluno → cria/publica treino → aluno executa e salva → personal vê progresso.
4. Implantar Supabase em ambiente DEV com RLS e migrations versionadas; não alterar banco remoto ou produção sem instrução. Testes cruzados de tenant e papéis são bloqueadores.
5. Implementar billing seguro apenas em sandbox até receber credenciais e aprovação. Prover serviços backend, verificação de webhook e entitlements.
6. Conectar Super Admin a dados reais, controles auditados e MFA; impedir leitura de dados sensíveis sem autorização adequada.
7. Conferir GIFs/direitos, otimizar carregamento, promover acessibilidade e responsividade.
8. Testar e corrigir; gerar relatórios curtos `ARCHITECTURE_AUDIT.md`, `SECURITY_AUDIT.md`, `QA_RESULTS.md` e atualizar `INTEGRATION_STATUS.md`.

**Regras de engenharia:** commits pequenos; sem dependências desnecessárias; não usar segredos hardcoded; controle de custos; backups; validação do servidor; logs auditáveis; falha segura; sem acesso cross-tenant.

Inicie com diagnóstico técnico e plano de alterações por ordem de risco, depois execute a primeira fatia funcional com testes. Evite mudanças grandes não testadas. Não solicite Blender; todo conteúdo visual deve ser 2D/web/GIF autorizado.
