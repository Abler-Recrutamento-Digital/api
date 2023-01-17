# Introdução

Essa é uma API pública para que os nossos clientes possam
realizar integrações com seus sistemas.

## Recursos

- **Clientes**
  - Buscar, cadastrar, atualizar e deletar clientes
- **Vagas**
  - Buscar, cadastrar, atualizar e deletar vagas
  - Buscar e cadastrar candidatos
- **Webhook**
  - Buscar, cadastrar, atualizar e deletar inscrições em webhooks

## Autenticação

- Envie o header **Authorization** com o Bearer {JWT} para a autenticação.
- Para os endpoints relacionados a **criação, alteração e exclusão de vagas**, candidatos e clientes será necessário realizar login utilizando os recursos de autenticação. 
- Nesses casos enviar no header **auth-token** com o token obtido pelos recursos de autenticação

## Limite de requisições

|Tipo de acesso   	| Limite   	      |Intervalo  |
|---	              |---	            |---	      |
|IP   	            | 300 requisições | 5 minutos |

No cabeçalho da resposta, disponibilizamos os parâmetros abaixo para que você consiga calcular o tempo entre suas requisições:

- `X-RateLimit-Limit`: Limite de requisições por 5 minutos.
- `X-RateLimit-Remaining`: Tempo disponível para exceder o limite.
- `X-RateLimit-Reset`: Tempo no qual você pode enviar requisições novamente (segundos).

