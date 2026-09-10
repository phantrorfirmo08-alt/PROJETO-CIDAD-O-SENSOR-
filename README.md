# SARAH IA - DEFesa CIVIL DIGITAL (ROCHA SOBRINHO / MESQUITA - RJ)
[![PWA Ready](https://img.shields.io/badge/PWA-Ready-blue)](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps) [![Status](https://img.shields.io/badge/Status-Operacional-green)](https://github.com)
Aplicativo progressivo (PWA) e assistente inteligente desenvolvido para o monitoramento hidrológico e meteorológico preditivo do **Rio Sarapuí em Rocha Sobrinho, Mesquita - RJ**, atuando como ferramenta de alerta preventivo e apoio comunitário para a Defesa Civil.

## Funcionalidades Principais
* **Monitoramento em Tempo Real:** Integração nativa com as APIs públicas do **Open-Meteo (Weather & Flood)** para rastreamento de precipitação (mm) e nível do rio através de gráficos dinâmicos (Chart.js).
* **Alerta Preditivo de Transbordo:** Sistema automático que identifica cotas críticas (acima de 4.0m), acionando alertas visuais, vibração no dispositivo e estimativa de tempo até o risco.
* **Avatar Animado (Cidadão Sensor):** Ilustração vetorial SVG integrada diretamente ao código com animação de piscar os olhos em loop contínuo.
* **PWA Nativo via Data URI:** Manifesto e estrutura otimizados sem dependências externas, permitindo instalação imediata na tela inicial de dispositivos móveis sem erros de rota (404) no GitHub Pages.
* **Assistente de Voz e Chat:** Suporte a comandos de voz nativos (`SpeechRecognition`) e respostas interativas orientadas à segurança urbana e serviços públicos.
* **Modo Escuro / Claro:** Alternância de tema com persistência local no navegador e ajuste dinâmico da barra de status do sistema.
* **Modo Offline:** Capacidade de registrar ocorrências de transbordo no armazenamento local (`localStorage`) mesmo sem conexão com a internet.
* **Privacidade e LGPD:** Termos locais integrados e suporte a configuração opcional de chave de API externa.

## Tecnologias Utilizadas
* **HTML5 & CSS3** (Layout responsivo com variáveis de customização de tema)
* **JavaScript Vanilla (ES6+)** (Consumo de APIs, manipulação de estado e lógica preditiva)
* **Chart.js** (Visualização gráfica de dados climáticos)
* **Open-Meteo APIs** (Previsão meteorológica e hidrológica gratuita)
* **FontAwesome** (Iconografia de interface)

## Como Publicar no GitHub Pages
1. Crie um novo repositório em sua conta do GitHub.
2. Salve o código unificado do sistema em um arquivo chamado `index.html`.
3. Faça o envio (`commit` e `push`) do arquivo para a branch principal do repositório.
4. No GitHub, acesse a aba **Settings** do repositório e clique em **Pages** no menu lateral.
5. Em *Build and deployment*, defina a fonte como a branch principal e clique em **Save**.
6. Acesse o link gerado pelo GitHub Pages diretamente no navegador do seu smartphone para navegar e instalar o aplicativo.

## Licença
Projeto voltado à proteção civil, resiliência urbana e segurança comunitária em Mesquita - RJ.
