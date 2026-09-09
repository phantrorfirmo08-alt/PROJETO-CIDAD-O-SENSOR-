# Cidadão Censor - Sebinho AI 📡🌊

Aplicativo Web Progressivo (PWA) de Defesa Civil Comunitária e monitoramento hidrológico em tempo real, desenvolvido para a Comunidade do Sebinho (Mesquita, Rio de Janeiro).

---

## 📍 Escopo e Área de Monitoramento
O sistema foi dimensionado para fiscalizar e emitir alertas preventivos no trecho crítico que abrange:
* **Rua Amazonas:** Leito do rio e ponte de entrada.
* **Confluência:** Encontro do **Rio Dona Eugênia** com o **Rio Sarapuí**.
* **Linha Férrea:** Extensão da calha até a travessia ferroviária, ponto sensível a elevações rápidas do nível das águas.

---

## 🚀 Principais Funcionalidades

- **Monitoramento Climático Automático:** Integração contínua com a API aberta Open-Meteo para rastrear índices de precipitação (mm/h) e temperatura local em tempo real.
- **Avatar Reativo Dinâmico ("Sarah"):**
  - Olhos centralizados e animados com efeito de piscar natural.
  - Indicador visual de status na borda do avatar (Verde para estabilidade, Amarelo para atenção e Vermelho para alerta crítico).
  - Movimento de fala automatizado durante as interações.
- **Assistente Técnica Inteligente (Sarah):** Conectada à API do Gemini para auxiliar moradores e voluntários de Defesa Civil com diretrizes de mitigação de riscos e resposta rápida.
- **Interface Otimizada e Limpa:**
  - Caixinha de configuração da Chave API que desaparece automaticamente após o salvamento, despoluindo a tela.
  - Alternância fluida entre **Modo Claro** e **Modo Escuro** para garantir legibilidade perfeita sob qualquer iluminação.
- **PWA Instalável:** Pronto para ser instalado diretamente na tela inicial de dispositivos móveis (Android/iOS) como um aplicativo nativo.

---

## 🛠️ Tecnologias Utilizadas
* **HTML5 / CSS3 / JavaScript (Vanilla):** Arquitetura leve em arquivo único (`index.html`) para máxima velocidade de carregamento em redes móveis.
* **Open-Meteo API:** Dados meteorológicos e pluviométricos de alta precisão geográfica.
* **Google Gemini API:** Processamento de linguagem natural para a assistente de Defesa Civil.
* **Web Speech API:** Recursos de reconhecimento de voz para comandos falados.
* **Service Worker / Web App Manifest:** Suporte completo a PWA.

---

## 📦 Como Publicar no GitHub Pages

Para colocar o sistema no ar rapidamente e acessá-lo pelo celular:

1. Crie um repositório no GitHub (ex: `cidadao-censor-sebinho`).
2. Adicione o arquivo principal com o nome exato de **`index.html`** contendo o código da aplicação.
3. Adicione este arquivo **`README.md`** na raiz do repositório.
4. No seu repositório do GitHub, vá em **Settings** (Configurações) > **Pages**.
5. Em **Build and deployment**, na seção **Branch**, selecione `main` (ou `master`) e a pasta `/ (root)`.
6. Clique em **Save**. O GitHub gerará um link público para o seu PWA em poucos segundos.

---

## 🔑 Configuração Inicial da API
Ao abrir o aplicativo pela primeira vez:
1. Cole sua chave da **Google Gemini API** (obtida no Google AI Studio) no campo dedicado na barra inferior.
2. Clique no botão **Salvar**. A caixa de configuração se ocultará instantaneamente, mantendo na tela apenas a interface de chat, microfone e envio.

---

## 🛡️ Compromisso Comunitário
Ferramenta de apoio técnico voluntário para a gestão de riscos, mapeamento de calhas e preservação de vidas na Bacia do Sarapuí.
