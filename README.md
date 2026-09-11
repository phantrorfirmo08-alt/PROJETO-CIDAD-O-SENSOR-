# Cidadão Sensor - Sarah IA | Defesa Civil Digital 🛡️🤖

Plataforma de Defesa Civil Digital e Monitoramento Climático desenvolvida para o bairro **Rocha Sobrinho (Mesquita/RJ)**, integrada ao plano de ação **"A Chave da Esperança"**.

---

## 🌟 Visão Geral

O **Cidadão Sensor** é um aplicativo Progressivo Web App (PWA) de código aberto projetado para conectar a comunidade e a Defesa Civil local. Ele fornece telemetria climática em tempo real, mapeamento georreferenciado de riscos, canal direto para registro de demandas urbanas (como poda de árvores, bueiros entupidos e iluminação) e conta com a **Sarah IA**, uma assistente inteligente com telemetria visual dinâmica.

---

## ✨ Principais Funcionalidades

1. **Telemetria Climática Open-Meteo:** Monitoramento em tempo real de temperatura, umidade e precipitação na bacia local sem necessidade de chaves de API pagas.
2. **Sarah IA (Mind & Command) com Humor Dinâmico:** 
   * **Verde (#10b981):** Clima estável / Normalidade.
   * **Amarelo (#eab308):** Atenção / Chuva moderada.
   * **Vermelho (#ef4444):** Alerta / Risco ou chuva forte.
3. **Setor de Pedidos da População:** Registro de ocorrências comunitárias com painel gráfico estatístico integrado (Chart.js) e atalho direto para o grupo oficial do WhatsApp *"A Chave da Esperança"*.
4. **Mapa Georreferenciado:** Integração completa com Leaflet e OpenStreetMap focado em Rocha Sobrinho.
5. **Acessibilidade Completa:** Suporte nativo ao **VLibras**, modo Noite/Dia e ajuste dinâmico de fontes (A-, A, A+).
6. **Motor Neural Opcional:** Integração nativa com modelos da **Hugging Face** para respostas avançadas da Sarah.
7. **Pronto para PWA:** Funciona offline e pode ser instalado diretamente no celular como um aplicativo nativo.

---

## 📁 Estrutura de Arquivos do Projeto

Para que o PWA e o Service Worker funcionem corretamente no GitHub Pages, certifique-se de manter os seguintes arquivos na raiz do repositório:

```text
seu-repositorio/
├── index.html       # Código principal consolidado (Interface, Estilos, Lógica e Gráficos)
├── manifest.json    # Configurações do PWA (Metadados, ícones e tema)
└── sw.js            # Service Worker para cache e suporte offline
