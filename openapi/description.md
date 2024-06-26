# Introdução

Clientes abler podem utilizar nossa API para integrar suas aplicações.

## Casos de uso

Os casos de uso mais comuns dos clientes abler, incluem:

- **Consultorias de RH e Headhunters**
  - Ao ganhar um negócio em seu CRM, cadastrar automaticamente um cliente na abler;
  - Ao ganhar um negócio em seu CRM, iniciar o cadastro de um processo seletivo na abler;
  - Ao mover um candidato para a etapa "Contratação", cadastrar o candidato em um software de folha de pagamento;
  - Ao mover um candidato para a etapa "Contratação", criar uma nova fatura no ERP com dados da negociação referente ao processo seletivo;
  E muito mais!

- **RHs corporativos**
  - Ao mover um candidato para a etapa "Contratação", cadastrar o candidato em um software de folha de pagamento;
  - Ao mover um candidato para a etapa "Contratação", cadastrar o candidato em um software de admissão;
  - Ao receber uma candidatura, cadastrar o candidato em seu WhatsApp ou ferramenta de e-mail marketing;
  - Ao finalizar o processo de admissão na abler, cadastrar o candidato em um software de folha de pagamento; 
  E muito mais!

## Recursos

- **Clientes**
  - Buscar, cadastrar, atualizar e deletar clientes;
- **Vagas**
  - Buscar, cadastrar, atualizar e deletar vagas;
  - Buscar e cadastrar candidatos;
- **Webhook**
  - Buscar, cadastrar, atualizar e deletar inscrições em webhooks;

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