# Exercício – Padrão Builder em Ruby (gerado pelo ChatGPT)

Imagine que você precisa desenvolver um pequeno sistema para uma **lanchonete artesanal**. Os clientes podem montar um **lanche personalizado** escolhendo os ingredientes em diferentes etapas (pão, proteína, queijo, molhos e adicionais).

O problema é que os pedidos variam muito: alguns clientes querem um lanche simples (apenas pão e proteína), outros querem um lanche completo (com todos os itens possíveis), e outros ainda pedem combinações específicas.

O gerente da lanchonete pediu que o código seja organizado de forma que:

1. Seja **fácil criar diferentes tipos de lanches**, sem precisar escrever várias classes quase iguais.

2. Seja possível **reutilizar o processo de construção** para diferentes combinações.

3. O processo de montagem seja **passo a passo**, permitindo flexibilidade na criação dos pedidos.

## O Desafio

Você deve implementar uma solução em **Ruby puro** que permita **construir diferentes tipos de lanches** seguindo o conceito do **padrão de projeto Builder**.

O exercício deve:

- Permitir que a montagem do lanche seja feita passo a passo.
- Possibilitar que diferentes combinações sejam criadas sem modificar o código principal.
- Garantir que, ao final do processo de construção, seja possível **obter um objeto final representando o lanche pronto** com todos os itens escolhidos.

⚠️ Importante:

- O exercício deve ser resolvido **usando o padrão Builder**.
- Não utilize exemplos já conhecidos como carros, casas ou computadores.

### Cardápio
- **SimpleBurger** -> [Pão de Brioche; Carne Bovina]
- **SaladBurguer** -> [Pão de Brioche; Carne Bovina; Alface; Tomate]
- **CheeseBurguer** -> [Pão de Brioche; Carne Bovina; Queijo]
- **CheeseBaconBurguer** -> [Pão de Brioche; Carne Bovina; Queijo; Bacon]
- **DoubleCheeseBurguer** -> [Pão de Brioche; Carne Bovina; Carne Bovina; Queijo]
- **DoubleCheeseBaconBurguer** -> [Pão de Brioche; Carne Bovina; Carne Bovina; Queijo; Bacon]
- **SimpleChicken** -> [Pão Francês; Frango]
- **SaladChicken** -> [Pão Francês; Frango; Alface; Tomate]
- **DoubleSaladChicken** -> [Pão Francês; Frango; Frango; Alface; Tomate]
- **CompleteHotdog** -> [Pão de hotdog; Salsicha; Pure de batata; Ervilha; Milho; Batata palha]