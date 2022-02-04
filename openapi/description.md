# Abler API

Essa é uma API pública para que os nossos clientes possam
realizar integrações com seus sistemas.

## Recursos

- **Clientes**
  - Buscar clientes
- **Vagas**
  - Buscas de vagas
  - Buscas de candidatos relacionados a vagas
- **Webhook Subscriptions**
  - Buscar subscriptions
  - Cadastrar subscriptions
  - Atualizar subscriptions
  - Deletar subscriptions

## Autenticação

- Envie o header **Authorization** com o Bearer {JWT} para a autenticação.

## Limite de requisições

|Tipo de acesso   	| Limite   	     |Intervalo    |
|---	              |---	           |---	         |
|IP   	            | 10 requisições | 10 segundos |

