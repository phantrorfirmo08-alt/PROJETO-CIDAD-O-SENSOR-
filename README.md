
A **Sarah IA** é um protótipo de aplicativo comunitário para Android, acessível pelo navegador Chrome como **PWA**. O projeto reúne:

- Conversa por texto.
- Entrada de voz pelo microfone.
- Respostas demonstrativas da Sarah.
- Animação facial simples.
- Registro comunitário de ocorrências.
- Envio de fotos.
- Modo claro e escuro.
- Termos de Uso e Política de Privacidade.
- Avisos relacionados à LGPD.
- Controles básicos de acessibilidade.

> Esta primeira versão é apenas um protótipo. A inteligência artificial, o banco de dados e o envio real para um servidor ainda precisam ser conectados.

---

## 2. Como executar

### Opção A — Abrir diretamente

1. Crie um arquivo chamado `index.html`.
2. Cole nele o código do protótipo.
3. Salve o arquivo.
4. Abra o arquivo no Google Chrome.

A interface será exibida, mas o microfone pode não funcionar diretamente pelo arquivo local.

### Opção B — Usar servidor local

Na pasta do projeto, execute:

```bash
python -m http.server 5500
```

Depois, abra:

```text
http://localhost:5500
```

O uso do microfone costuma funcionar melhor em `localhost`.

---

## 3. Estrutura inicial

```text
sarah-ia/
├── index.html
├── README.md
├── manifest.json
├── service-worker.js
├── assets/
│   ├── icone-192.png
│   └── icone-512.png
└── src/
    ├── app.js
    ├── styles.css
    └─
