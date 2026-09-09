# Cidadão Censor - Sebinho AI 📡

Aplicativo Web Progressivo (PWA) de monitoramento de riscos hidrológicos e assistente de Defesa Civil comunitária, desenvolvido para a Comunidade do Sebinho (Mesquita, RJ).

## 📍 Escopo de Monitoramento
O sistema fiscaliza em tempo real o trecho crítico compreendido entre:
* **Rua Amazonas** (leito do rio e ponte de entrada)
* **Confluência do Rio Dona Eugênia com o Rio Sarapuí**
* **Extensão até a Linha Férrea** (área com histórico de elevação rápida do nível das águas).

---

## 🚀 Principais Funcionalidades

- **Monitoramento Climático Automático:** Consulta periódica via API aberta (Open-Meteo) para rastrear índices de precipitação e temperatura local.
- **Avatar Reativo Dinâmico:** O avatar da assistente altera cor e brilho automaticamente (Verde para estabilidade, Amarelo para atenção e Vermelho para alerta crítico na calha).
- **Sarah IA (Defesa Civil Comunitária):** Integração direta com a API do Gemini para suporte técnico, diretrizes preventivas e tiragem de dúvidas com base no contexto de risco local.
- **PWA Instalável:** Pronto para ser adicionado à tela inicial de smartphones Android e iOS para acesso rápido offline/online.
- **Alertas Sonoros e Visuais:** Painel de notificação em tela cheia quando os índices de chuva atingem patamares de risco na bacia do Sarapuí.

---

## 🛠️ Como Publicar no GitHub Pages

1. Crie um novo repositório no GitHub (ex: `cidadao-censor-sebinho`).
2. Adicione o arquivo principal com o nome exato: `index.html` colando o código completo fornecido.
3. Vá em **Settings > Pages**.
4. Em **Build and deployment**, selecione a branch `main` (ou `master`) e a pasta `/ (root)`.
5. Clique em **Save** e acesse o link gerado pelo GitHub Pages.

---

## 🔑 Configuração da Chave de API
Para utilizar as respostas inteligentes da Sarah IA, insira sua chave de API gratuita do Google AI Studio (Gemini) diretamente no campo dedicado na interface do aplicativo.
