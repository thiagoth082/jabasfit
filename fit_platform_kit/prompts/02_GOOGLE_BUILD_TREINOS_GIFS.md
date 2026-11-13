# ETAPA 2 — Editor de treinos e GIFs

Partindo do projeto existente, NÃO reinicie o projeto nem destrua telas já implementadas. Implemente uma jornada demonstrável ponta a ponta de Personal → ficha → Aluno → execução.

- Biblioteca: grade/lista, filtros por músculo/equipamento/dificuldade, busca debounce; ficha de exercício com instruções, grupo muscular, GIF demonstrativo **apenas se licenciado**; placeholders elegantes com etiqueta “Mídia em preparação”.
- Estrutura de dado: exercícios, mídia, treinos, versões de treino, dias, prescrições, logs de sessão e logs de séries. Interfaces TypeScript explícitas.
- Editor personal: arrastar e soltar / reordenar por teclado, adicionar exercícios, criar dias A/B/C, séries x repetições, tempo sob tensão opcional, descanso, carga-alvo, RPE, notas, salvar rascunho, publicar versão, atribuir a aluno.
- Execução aluno: cada exercício abre GIF looping com pause, tabela de séries interativa, carga real, reps reais, esforço, timer de descanso com notificações locais quando permitido, continuar treino e concluir.
- Histórico preserva valores salvos por sessão e versão de ficha.
- Sem enviar gifs proprietários/aleatórios. Incluir 6 exercícios DEMO com placeholders e metadata. Criar mecanismo de upload autorizado com validação de tipo/tamanho no futuro.
- Cobrir estados de erro, progresso parcial, celular e acessibilidade. Testar fluxo inteiro e registrar pendências reais.
