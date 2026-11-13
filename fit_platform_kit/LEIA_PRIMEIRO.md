# Projeto ATLAS FIT — SaaS de treinos para personal trainers

**Objetivo:** construir um produto original de gestão e entrega de treinos, com cobertura funcional inspirada na categoria do MFit Personal, mas com marca, interface, textos, ícones e componentes próprios. Não copiar código, logotipos, imagens, GIFs, textos ou identidade visual do concorrente.

**Importante sobre a pesquisa:** nesta sessão não foi possível navegar/verificar o endereço do MFit ao vivo. A lista em `produto/MATRIZ_FUNCIONALIDADES.md` é um inventário de requisitos **propostos** para investigação, e **não** uma auditoria factual de todas as telas e planos do MFit. Qualquer capacidade marcada `A CONFIRMAR` exige validação em demonstração pública, conta autorizada ou documentação oficial. O link do usuário foi registrado como referência, não inspecionado.

## Roteiro de execução
1. Abrir `prompts/01_GOOGLE_BUILD_PROMPT_MESTRE.md` no Google AI Studio Build e solicitar o projeto; anexar os documentos deste ZIP como contexto se possível.
2. Executar os prompts 02 a 05, **um de cada vez**, após revisar cada entrega. Não pedir tudo em uma única geração e assumir que está pronto.
3. Exportar o código e abrir no Google Antigravity ou Codex; usar `prompts/06_HANDOFF_ANTIGRAVITY_CODEX.md`.
4. Configurar Supabase, provedor de pagamentos, storage e domínio com segredos **somente no backend**.
5. Antes de produção, executar `qa/ACEITE_SEGURANCA_E_LANCAMENTO.md` e homologar o ciclo completo de pagamentos.

## Produto inicial recomendado
Web app responsivo/PWA com três portais: `Personal`, `Aluno` e `Super Admin`. Primeira versão: cadastro, gestão de alunos, exercícios com mídia GIF, editor de fichas, agenda básica, execução de treino, progresso, planos e assinaturas. Aplicativos nativos, marketplace, IA gerativa e integrações profundas entram depois da validação.

## Estrutura
- `prompts/`: prompt mestre, etapas incrementais e transferência para o Antigravity/Codex.
- `produto/`: matriz de requisitos, regras de assinaturas, fluxos e escopo.
- `arquitetura/`: dados, segurança, integrações e exemplos.
- `design/`: visual, telas, referências e protótipo HTML estático.
- `qa/`: critérios de aceite, segurança e checklist de homologação.
- `referencias/`: fontes e fontes de inspiração; pendências de pesquisa factual.

**Nome ATLAS FIT é provisório**: verificar disponibilidade de marca e domínio antes de divulgar.
