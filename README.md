# README — Sarah IA

## 1. Sobre o projeto

A **Sarah IA** é um protótipo de aplicativo comunitário desenvolvido em HTML, CSS e JavaScript. O projeto foi pensado para funcionar no navegador Chrome e, futuramente, ser instalado no celular como uma **PWA**.

O aplicativo reúne:

- Conversa por texto com a Sarah.
- Entrada de voz pelo microfone.
- Respostas faladas.
- Interface de chat moderna.
- Modo claro e escuro.
- Ajuste de tamanho da fonte.
- Termos de Uso e consentimento.
- Registro local de ocorrências.
- Envio de fotos.
- Estrutura preparada para instalação como aplicativo.
- Possibilidade de funcionamento com internet e recursos básicos offline.

> Esta versão é um protótipo. A inteligência artificial real, o banco de dados e o servidor ainda não estão conectados.

---

## 2. Tecnologias utilizadas

- HTML5.
- CSS3.
- JavaScript puro.
- Web Speech API.
- Speech Synthesis API.
- LocalStorage.
- Service Worker.
- Web App Manifest.
- Chart.js.
- Font Awesome.
- PWA — Progressive Web App.

---

## 3. Estrutura atual

A versão atual foi criada em um único arquivo:

```text
sarah-ia/
└── index.html
```

Para uma versão mais organizada, futuramente a estrutura poderá ser separada:

```text
sarah-ia/
├── index.html
├── manifest.json
├── service-worker.js
├── assets/
│   ├── icone-192.png
│   └── icone-512.png
├── css/
│   └── style.css
└── js/
    └── app.js
```

---

## 4. Como executar

### Abrindo diretamente

1. Crie um arquivo chamado:

```text
index.html
```

2. Cole o código completo dentro dele.
3. Salve o arquivo.
4. Abra no Google Chrome.

A interface será exibida, mas alguns recursos, como microfone e instalação PWA, podem não funcionar corretamente usando `file://`.

### Usando servidor local

Na pasta do projeto, execute:

```bash
python -m http.server 5500
```

Depois abra no navegador:

```text
http://localhost:5500
```

O endereço `localhost` permite testar melhor o microfone e outros recursos do navegador.

---

## 5. Funcionalidades

### 5.1 Tela de consentimento

O aplicativo apresenta uma tela inicial com informações sobre:

- Privacidade.
- Uso dos dados.
- Consentimento.
- LGPD.
- Funcionamento local do protótipo.

O aceite é salvo no navegador usando:

```javascript
localStorage
```

Depois que a pessoa aceita, a tela não aparece novamente no mesmo dispositivo, salvo se os dados do navegador forem apagados.

