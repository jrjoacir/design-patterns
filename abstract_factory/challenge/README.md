# Desafio de Negócio (Gerada pelo ChatGPT)

Uma rede internacional de clínicas de saúde está expandindo seus serviços digitais. Cada clínica pode operar em diferentes países, e precisa oferecer sistemas que sigam tanto as normas locais quanto a especialidade da clínica.

## Regras de Negócio

1. Cada clínica precisa oferecer **dois serviços principais** no seu sistema digital:
    - **Agendamento de consulta**
    - **Emissão de fatura**

2. Esses serviços variam de acordo com dois fatores:
    - **País** (ex.: Brasil, EUA, Alemanha), pois cada país tem **regras diferentes de cobrança e formato de fatura**.
    - **Especialidade médica** (ex.: Pediatria, Dermatologia), pois cada especialidade tem **fluxos** diferentes de agendamento (ex.: pediatria exige cadastrar responsável legal, dermatologia exige fotos de lesões, etc.).

3. É essencial que **cada clínica use uma combinação consistente**:
    - Se a clínica é de Pediatria no Brasil, **todos os serviços dela** (agendamento e fatura) devem respeitar **Brasil + Pediatria**.
    - Não pode misturar, por exemplo, “Agendamento Pediatria Brasil” com “Fatura Dermatologia EUA”.

4. O sistema deve permitir a **expansão futura** para novos países e especialidades sem quebrar as integrações existentes.

## Sua Missão

- Projetar a solução de software que atenda a esse cenário.
- O código deve garantir a **coerência entre serviços** de uma clínica.
- Você deve pensar em como organizar a criação desses objetos (agendamento + fatura), de forma que uma clínica sempre trabalhe com o **conjunto correto** de serviços.

👉 Esse desafio pode ser resolvido de várias formas, mas a ideia é que você perceba que precisa de uma **fábrica que cria famílias de objetos relacionados (agendamento + fatura)**, variando de acordo com país e especialidade.

## 🗓️ Exemplos de Agendamentos

1. **Agendamento Presencial**
    - **Cliente:** Maria Oliveira
    - **Tipo de serviço:** Consulta médica de rotina
    - **Data:** 05/10/2025 às 14h
    - **Local:** Clínica Saúde Mais – Sala 203
    - **Observação:** Cliente solicitou médico mulher.

2. **Agendamento Online**
    - **Cliente:** João Santos
    - **Tipo de serviço:** Psicoterapia
    - **Data:** 07/10/2025 às 19h
    - **Local:** Plataforma de videoconferência (link gerado automaticamente)
    - **Observação:** Sessão com 50 minutos de duração.

3. **Agendamento Domiciliar**
    - **Cliente:** Dona Ana Souza
    - **Tipo de serviço:** Fisioterapia
    - **Data:** 08/10/2025 às 09h
    - **Local:** Endereço do cliente (Rua das Palmeiras, 123 – Praia Grande)
    - **Observação:** Necessário levar equipamento portátil de exercícios.

## 💰 Exemplos de Faturas

1. **Fatura Presencial**
    - **Cliente:** Maria Oliveira
    - **Valor:** R$ 150,00
    - **Forma de pagamento:** Cartão de crédito (pago na clínica)
    - **Impostos aplicados:** 10%
    - **Total:** R$ 165,00

2. **Fatura Online**
    - **Cliente:** João Santos
    - **Valor:** R$ 120,00
    - **Forma de pagamento:** PIX ou cartão via gateway online
    - **Impostos aplicados:** 5% (incentivo fiscal para teleatendimento)
    - **Total:** R$ 126,00

3. **Fatura Domiciliar**
    - **Cliente:** Dona Ana Souza
    - **Valor:** R$ 180,00
    - **Forma de pagamento:** Dinheiro ou cartão na maquininha móvel
    - **Taxa de deslocamento**: R$ 20,00
    - **Total:** R$ 200,00

👉 Perceba que cada **tipo de serviço (presencial, online, domiciliar)** muda não só como o **agendamento** é configurado, mas também como a **fatura** é gerada.
Isso dá abertura perfeita para pensar em uma **fábrica abstrata** que encapsule essas variações.