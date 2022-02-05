# Introdução

Essa é uma API pública para que os nossos clientes possam
realizar integrações com seus sistemas.

## Recursos

- **Clientes**
  - Buscar clientes
- **Vagas**
  - Buscar vagas e candidatos
- **Webhook**
  - Buscar, cadastrar, atualizar e deletar inscrições em webhooks

## Autenticação

- Envie o header **Authorization** com o Bearer {JWT} para a autenticação.

## Limite de requisições

|Tipo de acesso   	| Limite   	      |Intervalo  |
|---	              |---	            |---	      |
|IP   	            | 300 requisições | 5 minutos |

No cabeçalho da resposta, disponibilizamos os parâmetros abaixo para que você consiga calcular o tempo entre suas requisições:

- `X-RateLimit-Limit`: Limite de requisições por 5 minutos.
- `X-RateLimit-Remaining`: Tempo disponível para exceder o limite.
- `X-RateLimit-Reset`: Tempo no qual você pode enviar requisições novamente (segundos).

