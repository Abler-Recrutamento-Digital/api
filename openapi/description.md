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

# Autenticação

* Dentro do painel gerencial da empresa na seção **Integrações** gere o token para acesso de empresa (**TOKEN_EMPRESA**).
* Envie o header **Authorization** com o valor `Bearer TOKEN_EMPRESA` para a autenticação.
* Para os endpoints relacionados a **criação, alteração e exclusão** dos recursos de [Vagas](#tag/Vagas), [Candidaturas](#tag/Vagas/paths/~1vacancies~1%7Bid%7D~1candidates/post) e [Clientes](#tag/Clientes) será necessário realizar login para obter seu **TOKEN_USUARIO** utilizando o recurso de [Autenticação](#tag/Auth)
* Utilize o **TOKEN_USUARIO** para utilizar os recursos da API enviando o header **Authorization** com o valor `Bearer TOKEN_USUARIO`.

## Limite de requisições

|Tipo de acesso   	| Limite   	      |Intervalo  |
|---	              |---	            |---	      |
|IP   	            | 300 requisições | 5 minutos |

No cabeçalho da resposta, disponibilizamos os parâmetros abaixo para que você consiga calcular o tempo entre suas requisições:

- `X-RateLimit-Limit`: Limite de requisições por 5 minutos.
- `X-RateLimit-Remaining`: Tempo disponível para exceder o limite.
- `X-RateLimit-Reset`: Tempo no qual você pode enviar requisições novamente (segundos).

