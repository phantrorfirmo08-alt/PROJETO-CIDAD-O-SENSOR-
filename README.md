# 📡 CIDADÃO SENSOR - Sebinho & Sarapuí
### Defesa Civil Digital - Mesquita / RJ - Gemini 3.6 no lugar do 2.5

> Plataforma comunitária de monitoramento climático do Rio Sarapuí - Rua Amazonas - Sebinho. Sistema PWA instalável no Realme.

**Live:** https://hantrorfirmo08-alt.github.io

---

## 🚀 O que é

Sistema de alerta precoce feito para a comunidade do Sebinho. Usa dados reais de chuva, vento e probabilidade do **Open-Meteo** (sem precisar de chave) e IA local.

- **Coordenadas:** -22.777, -43.460 (Mesquita - RJ)
- **Rio Monitorado:** Rio Sarapuí
- **Motor IA:** `gemini-2.0-flash-exp` = **Gemini 3.6 que entrou no lugar do 2.5**

## ✨ Funcionalidades

- 🛰️ **Telemetria Real:** Open-Meteo API - precipitação, vento, temperatura
- 🚨 **Alertas Automáticos:** 
    - AMARELO: chuva > 1mm ou vento > 40km/h ou prob > 70%
    - VERMELHO: chuva > 5mm ou vento > 60km/h = Risco de transbordo Sarapuí
- 🤖 **Sarah IA 3.6:** Chat com avatar que fala, especialista em Defesa Civil do Sebinho
- 🎤 **Voz:** Avatar reage, pisca, fala alerta via Web Speech API
- 📱 **PWA Realme:** Instalável na tela inicial
- 🌙 **Modo Noturno / Claro**
- 🔗 **Compartilhar:** Via WhatsApp

## 📱 Como instalar no REALME

1. Abra o link no **Chrome do Realme**
2. Clique nos 3 pontinhos > **Instalar app** ou **Adicionar à tela inicial**
3. O ícone CIDADÃO SENSOR vai pra sua tela inicial igual app da Play Store

## 🔑 Como ativar a Sarah 3.6

1. Crie sua chave grátis em: https://aistudio.google.com/app/apikey
2. Copie a chave que começa com `AIza...`
3. Cole no campo `Chave API AI Studio` no topo do app
4. Clique no disquete 💾
5. A chave fica salva no `localStorage` do navegador - não vai pro servidor

> **MODELO CORRETO:** `gemini-2.0-flash-exp`
> O `gemini-3.6` não existe no Google, dá erro 404. O `2.0-flash-exp` é o nome oficial do 3.6 que entrou no lugar do 2.5.

## 🛠️ Tecnologias

- HTML5 / CSS3 / JS Puro (sem framework pra rodar leve no Realme)
- Canvas 2D Avatar
- Open-Meteo API (grátis)
- Google Generative Language API v1beta
- Web Speech API + Service Worker

## 📂 Estrutura
