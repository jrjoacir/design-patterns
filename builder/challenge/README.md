# 🚀 Desafio de Negócio – Montagem de Viagens Personalizadas (montado com ajuda do ChatGPT)

Uma **agência de turismo digital** está lançando um sistema para criar pacotes de viagem personalizados para seus clientes.

A ideia é que cada pacote seja montado de forma flexível, já que diferentes clientes querem combinações diferentes de serviços.

## Contexto de Negócio

A agência oferece os seguintes componentes de um pacote:

1. **Transporte:** pode ser avião, ônibus, trem ou nenhum (viagem própria).
2. **Hospedagem:** hotel 3 estrelas, 4 estrelas, 5 estrelas, hostel ou nenhum.
3. **Alimentação:** café da manhã, meia pensão, pensão completa ou nenhuma.
4. **Passeios:** o cliente pode incluir zero, um ou mais passeios turísticos (city tour, museus, parques temáticos etc.).
5. **Seguro viagem:** opcional.

A equipe de vendas precisa poder **criar diferentes pacotes rapidamente**, como por exemplo:

- **Pacote Econômico:** ônibus + hostel + sem alimentação + city tour + sem seguro.
- **Pacote Luxo:** avião + hotel 5 estrelas + pensão completa + todos os passeios + seguro viagem.
- **Pacote Personalizado:** combinações escolhidas livremente pelo cliente.

## Regras de Negócio

1. Um pacote **deve ter pelo menos um meio de transporte ou hospedagem** (não pode ser totalmente vazio).
2. Se o cliente escolher **hospedagem**, deve ser possível adicionar também um plano de alimentação.
3. Os passeios são opcionais e ilimitados, mas só podem ser adicionados se houver transporte incluso.
4. O seguro viagem só pode ser incluído em pacotes que tenham transporte de longa distância (avião ou ônibus).

## O Desafio

Implemente um sistema em **Ruby puro** que permita criar **diferentes tipos de pacotes de viagem** de forma organizada, flexível e extensível, respeitando as regras acima.
O sistema deve permitir:

- Montar pacotes passo a passo.
- Garantir que as regras de negócio sejam respeitadas.
- Obter ao final um objeto representando o pacote completo, pronto para ser apresentado ao cliente.

⚠️ **Observação:** Você deve escolher como organizar o código para tornar a montagem dos pacotes clara, extensível e de fácil manutenção.