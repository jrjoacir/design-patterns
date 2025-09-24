# Exercício – Abstract Factory em Ruby

## Contexto do Problema

Uma empresa de tecnologia está desenvolvendo um sistema de **assistentes virtuais** que precisam se adaptar ao **idioma do usuário**. O sistema deve ser capaz de criar dois tipos de componentes principais:

1. **Saudação inicial** – uma mensagem de boas-vindas no idioma configurado.
2. **Mensagem de ajuda** – uma resposta padrão com instruções básicas no mesmo idioma.

O detalhe é que, dependendo do idioma escolhido (por exemplo, **Português** ou **Inglês**), o sistema deve fornecer **um conjunto completo de mensagens coerentes entre si**, sem misturar idiomas.

## Requisitos

- O código deve permitir que novas famílias de idiomas sejam adicionadas futuramente sem alterar a lógica principal do sistema.

- O sistema precisa garantir que, ao escolher um idioma, **todas as mensagens** venham da mesma "família" (Português ou Inglês).

- Não se pode simplesmente usar condicionais (`if/else` ou `case`) espalhadas pelo código para decidir o idioma em cada mensagem.

## Tarefa

Implemente, em Ruby puro, um design que permita ao sistema:

1. Selecionar uma família de mensagens com base no idioma.
2. Gerar as duas mensagens necessárias (saudação e ajuda) de forma consistente.
3. Possibilitar a adição de novos idiomas no futuro sem quebrar o código existente.

👉 O objetivo aqui é que o aluno perceba que precisa criar uma **fábrica abstrata** que declare a interface para criar os dois tipos de mensagens, e fábricas concretas (Português, Inglês, etc.) que implementem essas criações.