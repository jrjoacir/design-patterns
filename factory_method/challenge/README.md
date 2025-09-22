# Desafio de Negócio – Sistema de Pagamentos - Gerado via ChatGPT

## Contexto

Uma empresa de tecnologia está desenvolvendo um sistema de processamento de pagamentos online. Este sistema deve ser capaz de lidar com diferentes meios de pagamento, pois os clientes utilizam:

- **Cartão de Crédito**
- **Pix**
- **Boleto Bancário**

No futuro, a empresa deseja incluir outros meios de pagamento (como PayPal, Apple Pay, etc.), sem precisar alterar o funcionamento principal do sistema.

## Regras de Negócio

1. **Cartão de Crédito**
    - Necessita de validação do número do cartão e data de validade.
    - Cobra uma taxa de **2,5%** sobre o valor da transação.
    - A confirmação é ***imediata*** se aprovado.

2. **Pix**
    - Necessita de chave Pix válida (CPF, e-mail, telefone ou chave aleatória).
    - Não possui taxa para o cliente.
    - A confirmação é **instantânea**.

3. **Boleto Bancário**
    - Necessita gerar um código de barras único.
    - Cobra uma taxa fixa de **R$ 3,50** por boleto emitido.
    - A confirmação é **demorada**: só ocorre após o cliente pagar e o banco processar (mínimo de 1 dia útil).

## O Problema a Resolver

Implemente um sistema em Ruby que:

1. Permita ao cliente escolher o tipo de pagamento desejado.
2. Garanta que todos os meios de pagamento sigam uma interface comum, com comportamentos básicos como **validar**, **processar** e **confirmar**.
3. Evite que o código principal do sistema dependa diretamente das classes concretas de cada meio de pagamento.
4. Facilite a adição de novos meios de pagamento no futuro, **sem alterar** o funcionamento do código principal.

👉 O desafio está em **modelar o sistema de forma que o processo de criação de cada meio de pagamento seja flexível e extensível**, respeitando as regras de negócio acima.