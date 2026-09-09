# Cidadão Censor - Sebinho AI 📡

Aplicativo Web Progressivo (PWA) de Defesa Civil Comunitária e monitoramento de riscos hidrológicos, desenvolvido para a Comunidade do Sebinho (Mesquita, Rio de Janeiro).

## 📍 Escopo de Monitoramento
O sistema fiscaliza em tempo real o trecho crítico compreendido entre:
* **Rua Amazonas** (leito do rio e ponte de entrada)
* **Confluência do Rio Dona Eugênia com o Rio Sarapuí**
* **Extensão até a Linha Férrea** (área com histórico de elevação rápida do nível das águas).

## 🚀 Principais Funcionalidades
- **Monitoramento Climático Automático:** Consulta periódica via API aberta (Open-Meteo) para rastrear índices de precipitação e temperatura local em tempo real.
- **Avatar Reativo Dinâmico:** O avatar da assistente altera cor e brilho automaticamente (Verde para estabilidade, Amarelo para atenção e Vermelho para alerta crítico na calha).
- **Sarah (Assistente de Defesa Civil):** Integração com a API do Gemini para suporte técnico, diretrizes preventivas e tiragem de dúvidas com base no contexto de risco local.
- **Modo Claro / Escuro:** Alternância de tema integrada para garantir legibilidade perfeita em qualquer condição de luz.
- **PWA Instalável:** Pronto para ser adicionado à tela inicial de smartphones Android e iOS.

## 🛠️ Como Publicar no GitHub Pages
1. No seu repositório do GitHub, certifique-se de salvar o código principal do aplicativo com o nome exato: **`index.html`**.
2. Mantenha este arquivo **`README.md`** na raiz do repositório para documentar o projeto.
3. Vá em **Settings > Pages** no seu repositório.
4. Em **Build and deployment**, selecione a branch `main` (ou `master`) e a pasta `/ (root)`.
5. Clique em **Save** e acesse o link gerado pelo GitHub Pages.

## 🔑 Configuração da Chave de API
Para habilitar as respostas inteligentes da Sarah, insira sua chave de API do Gemini diretamente no campo dedicado na interface do aplicativo e clique em salvar.
