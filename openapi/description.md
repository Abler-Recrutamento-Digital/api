# Introdução

Nossos clientes podem utilizar nossa API para integrar a Abler com suas aplicações.

## Recursos

- **Clientes**
  - Buscar, cadastrar, atualizar e deletar clientes
- **Vagas**
  - Buscar, cadastrar, atualizar e deletar vagas
  - Buscar e cadastrar candidatos
- **Webhook**
  - Buscar, cadastrar, atualizar e deletar inscrições em webhooks

# Autenticação

O primeiro passo para iniciar a integração com a Abler é gerar o token de acesso. 
Você consegue obter o token da seguinte forma:
1. Acesse a conta da empresa na plataforma Abler;
2. Clique em "Configurações" na página de início. Se você estiver usando o novo ATS, clique em "Empresa" e precisará efetuar login novamente;
3. Na aba Dados da sua empresa, vá para o fim da página até chegar em "Integrações";
4. Crie o token e use ele na sua aplicação como descrito abaixo. 

### Como usar o token

Em toda requisição que realizar, envie no header da requisição:
 
`Authorization: Bearer {COLOQUE_O_TOKEN_AQUI}`

ATENÇÃO: Este token não expira. Insira-o em um lugar seguro dentro da aplicação, tais como gerenciadores de secrets ou arquivos .env. Não insira o token diretamente em seu código-fonte.


## Limite de requisições

|Tipo de acesso   	| Limite   	      |Intervalo  |
|---	              |---	            |---	      |
|IP   	            | 300 requisições | 5 minutos |

No cabeçalho da resposta, disponibilizamos os parâmetros abaixo para que você consiga calcular o tempo entre suas requisições:

- `X-RateLimit-Limit`: Limite de requisições por 5 minutos.
- `X-RateLimit-Remaining`: Tempo disponível para exceder o limite.
- `X-RateLimit-Reset`: Tempo no qual você pode enviar requisições novamente (segundos).

