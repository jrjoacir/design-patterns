# Exercício – Factory Method em Ruby - Gerado via ChatGPT

## Contexto

Uma empresa de **entregas urbanas** está criando um sistema para gerenciar **diferentes tipos de transporte**. Dependendo da necessidade, a entrega pode ser feita de **bicicleta** ou de **moto**.

Cada transporte possui características próprias:

- A **bicicleta** tem velocidade limitada e não pode transportar cargas muito pesadas.

- A **moto** é mais rápida e pode levar cargas maiores, mas tem custo de combustível.

A empresa quer que o sistema seja facilmente extensível para incluir outros meios de transporte futuramente (como carros ou drones), sem que seja necessário modificar o código principal que gerencia as entregas.

## O Problema a Resolver

Crie uma solução em Ruby onde:

1. Haja uma **interface comum** para os diferentes tipos de transporte, garantindo que todos implementem o mesmo comportamento mínimo (ex.: iniciar entrega, exibir informações).

2. O processo de criação de cada tipo de transporte não deve ser feito diretamente pelo código cliente (que solicita a entrega).

3. O sistema deve decidir qual transporte usar de acordo com a escolha do usuário (bicicleta ou moto).

4. O cliente do sistema só deve lidar com uma **classe principal de criação** (o Creator), que delega a criação concreta para subclasses específicas de transporte.

## Objetivo do Exercício

- Implementar o padrão Factory Method em Ruby para resolver o problema.
- Garantir que novos tipos de transporte possam ser adicionados sem alterar o código principal.