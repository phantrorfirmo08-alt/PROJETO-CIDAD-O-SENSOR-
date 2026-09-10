# README — Sarah IA

## Sobre o projeto

A **Sarah IA** é um aplicativo web comunitário voltado para informação, orientação e comunicação sobre Defesa Civil, monitoramento climático e apoio à comunidade.

O projeto foi desenvolvido para funcionar em celulares, computadores e navegadores modernos. Ele também possui estrutura para ser instalado como aplicativo no celular por meio de uma **PWA — Progressive Web App**.

A aplicação inclui:

- Chat com a Sarah.
- Digitação de mensagens.
- Respostas automáticas.
- Entrada de voz pelo microfone.
- Resposta falada.
- Avatar animado com olhos piscando.
- Monitoramento de chuva.
- Monitoramento estimado do nível do rio.
- Registro local de ocorrências.
- Compartilhamento do aplicativo.
- Botão de instalação.
- Modo claro e escuro.
- Consentimento de privacidade.
- Armazenamento local.
- Funcionamento básico offline quando publicado corretamente.

---

## Status atual

O projeto está em fase de desenvolvimento.

A interface, o chat, os botões e as funções básicas estão implementados em um único arquivo:

```text
index.html
```

O arquivo também cria automaticamente o manifesto e o Service Worker necessários para a instalação como PWA.

> Para que a instalação funcione corretamente, o arquivo precisa ser executado em `localhost` ou publicado em um endereço HTTPS.

---

## Tecnologias utilizadas

- HTML5.
- CSS3.
- JavaScript.
- Web Speech
