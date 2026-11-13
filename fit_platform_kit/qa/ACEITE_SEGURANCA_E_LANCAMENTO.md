# Testes de aceitação — travas de lançamento

## Jornadas P0
- [ ] Personal consegue se cadastrar, confirmar email, entrar, sair e recuperar senha.
- [ ] Personal cria aluno, envia convite, atribui ficha, revisa histórico sem perder dados.
- [ ] Aluno vê treino com GIF licenciado, registra séries, descansa, conclui e visualiza progresso.
- [ ] Ficha publicada guarda versão imutável; sessões antigas preservam dados originais.
- [ ] Busca/filtros de exercícios acessíveis, sem mídia quebrada, com fallback elegante.
- [ ] Interfaces de personal, aluno e Super Admin são utilizáveis em 360, 768, 1280px.

## Segurança (bloqueadores)
- [ ] Tentativas de ler/editar aluno de outro tenant são negadas por RLS/API.
- [ ] Aluno não consegue editar ficha publicada; personal não altera assinatura no cliente.
- [ ] Nenhuma service key, secret de billing ou credencial privada consta no frontend/logs.
- [ ] Rotas Super Admin dependem de checagem real de papel no servidor, com MFA.
- [ ] Admin não acessa anamnese/fotos/medidas por padrão.
- [ ] Imagens privadas protegidas com URLs assinadas e prazo curto; regras de retenção.
- [ ] Ações críticas auditadas: ator, entidade, antes/depois resumidos, hora e motivo.
- [ ] Proteções básicas XSS, CSRF conforme arquitetura, brute force, uploads/mime e rate limiting.

## Billing (bloqueadores)
- [ ] Plano/price_id sempre confirmado no backend; manipulação de preço no browser não funciona.
- [ ] Assinatura só é ativada por confirmação verificada do backend/webhook.
- [ ] Replay/duplicação/reordenação de eventos não concede múltiplos benefícios.
- [ ] Testar pagamento aprovado, recusado, cancelado, estornado, atrasado e recuperação.
- [ ] Trial, grace period, upgrade, downgrade, término de período, cupom e cortesia.
- [ ] Reconciliar divergências com painel do provedor; logs com IDs e sem dados de cartão.

## Legal, operação e UX
- [ ] Política de privacidade, termos, base legal e mecanismos LGPD revisados.
- [ ] Direitos comprovados sobre todas as demonstrações em GIF.
- [ ] Consentimento e segurança de fotos/dados de saúde.
- [ ] Monitoramento, backup/restore e alertas de custos.
- [ ] Fluxos claros para cancelar assinatura, emitir comprovante e suporte.
- [ ] Teste com 3 personais e 6 alunos fictícios usando dispositivos reais.

**Regra:** UI bonita com botões fictícios não equivale a sistema concluído. Não publicar como produto pago antes de completar fluxos P0, segurança e billing homologado.
