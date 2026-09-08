# Sarah • Defesa Civil Digital (Gemini 3.6 & GOES-19)

Aplicativo web progressivo de monitoramento preventivo e apoio comunitário desenvolvido para a **Comunidade do Sebinho (Rocha Sobrinho, Mesquita - RJ)** e a **Bacia do Sarapuí**.

---

## 🚀 Sobre o Projeto

A **Sarah** é uma assistente virtual inteligente operada pelo motor cognitivo **Gemini 3.6**, projetada para atuar em regime de plantão de 24 horas. O sistema foi arquitetado para operar em cenários reais de Defesa Civil sem depender de contratos públicos burocráticos, chaves de API restritas ou aprovações governamentais lentas.

Para isso, utiliza uma **arquitetura de dados abertos (Open Access)** que consome diretamente telemetria meteorológica e varreduras espectrais abertas (como dados de satélite do GOES-19 e estações abertas da região da Baixada Fluminense).

---

## 🛠️ Principais Funcionalidades

1. **Consulta Automatizada de Dados Abertos (Sem Contrato):**
   - Integração via JavaScript nativo (`Fetch API`) com endpoints públicos de clima e meteorologia (`Open-Meteo` adaptado para as coordenadas exatas `-22.785, -43.428` de Mesquita / Sebinho).
   - Coleta em tempo real de temperatura, umidade relativa do ar e velocidade dos ventos.

2. **Painel Satelital GOES-19:**
   - Visualização de varredura espectral e condições da Baixada Fluminense diretamente no aplicativo por meio de um modal interativo dedicado.

3. **Interface Mobile-First de Alta Resiliência:**
   - Desenvolvido com Tailwind CSS moderno, modo escuro (Dark Mode) nativo, painéis com efeito *glassmorphism* e barra de navegação inferior estilo aplicativo nativo.

4. **Acessibilidade Universal (VLibras):**
   - Widget oficial do Governo Federal (VLibras) integrado nativamente para tradução automática em LIBRAS, garantindo inclusão total na comunidade.

5. **Termo de Responsabilidade e Segurança:**
   - Tela de aceite obrigatório na inicialização, definindo claramente o escopo de atuação colaborativa e de autoproteção comunitária.

---

## 📂 Estrutura do Repositório

O projeto foi construído inteiramente em um **arquivo HTML autossuficiente (Single-File Architecture)** para garantir implantação instantânea, sem necessidade de servidores complexos, banco de dados ou dependências de build:

* `index.html`: Contém todo o layout estrutural (Tailwind), lógica de interface, estilização customizada e o script assíncrono de consulta meteorológica e inteligência da Sarah.

---

## ⚙️ Como Executar

Por ser um arquivo web independente, você pode executá-lo de duas formas simples:

1. **Localmente (No Navegador):**
   - Baixe ou salve o código fornecido como `index.html`.
   - Dê um duplo clique no arquivo para abri-lo em qualquer navegador moderno (Chrome, Safari, Edge, Firefox).
   - Funciona perfeitamente em smartphones (Xiaomi, Android, iOS) e computadores.

2. **Hospedagem Instantânea (Deploy em 24h):**
   - Suba o arquivo `index.html` para qualquer plataforma de hospedagem estática gratuita (como GitHub Pages, Vercel ou Netlify) para disponibilizar o link de acesso imediato aos moradores da Comunidade do Sebinho.

---

## 🛡️ Licença e Governança Comunitária

Desenvolvido para apoio voluntário e resiliência climática na Baixada Fluminense. Todos os direitos de uso comunitário reservados à Comunidade do Sebinho.
