# <p align="center">🚀 Urano CLI</p>

<p align="center">
  <strong>Agentes de IA ultrapotentes directamente en tu terminal.</strong><br>
  <em>Headless, ligero, y conectado al ecosistema Urano.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Powered%20by-Urano Project-blueviolet?style=for-the-badge" alt="Urano Project">
  <img src="https://img.shields.io/badge/Runtime-Node.js%2020-green?style=for-the-badge&logo=node.js" alt="Node JS">
  <img src="https://img.shields.io/badge/Interface-TUI-orange?style=for-the-badge" alt="TUI">
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License">
</p>

---

## ✨ Características Premium

- 🤖 **Orquestación Multi-Agente**: Chatea con varios agentes en paralelo o haz broadcast.
- 🛠 **Ecosistema MCP**: Acceso inmediato a Google Calendar, Gmail, CRM y más.
- ⚡ **Streaming en Tiempo Real**: Respuestas instantáneas carácter por carácter.
- 🔒 **Seguridad Flexible**: Soporte para secretos cifrados y local-first.
- 📦 **Zero Dependencies**: Binarios compilados, no necesitas instalar nada más.

---

## 📥 Instalación Rápida

Instala la última versión v1.2.0 en un solo paso:

### Windows (PowerShell)
```powershell
irm https://get.uranoai.com/win | iex
```

### Mac / Linux (Bash/Zsh)
```bash
curl -sSL https://get.uranoai.com/sh | bash
```

---

## 🎮 Modo Interactivo (TUI)

Simplemente ejecuta `uranocli` para entrar en la interfaz de terminal enriquecida.

```text
╭──────────────────────────────────────────────────────────────────╮
│  🚀 Urano CLI  v1.2.0                                           │
│                                                                  │
│  Agentes:   4 registrados   │  Skills:  34 cargados             │
│  Proveedor: openai                                               │
│                                                                  │
│  Escribe tu mensaje o usa /help para ver comandos.              │
╰──────────────────────────────────────────────────────────────────╯

🤖 default › _
```

### Comandos Slash ⚡

| Comando | Acción |
|---|---|
| `/agent <id>` | Cambia el agente activo (persona) |
| `/history` | **Nuevo:** Selector interactivo para continuar charlas previas |
| `/tasks` | Gestiona tus tareas agendadas y autónomas |
| `/parallel <ids> <p>` | Ejecuta prompt en varios agentes a la vez |
| `/all <prompt>` | Envía mensaje a todos los agentes |
| `/cancel` | Detiene la generación actual |
| `/mcp` | Gestiona tus módulos y herramientas |
| `/exit` | Cierra la sesión de forma segura |

---

## 🛠️ Modo Experto (Comandos Directos)

Ideal para scripts, CI/CD y automatizaciones.

```bash
# Chat directo con un agente
uranocli chat -a soporte

# Ejecución rápida de una tarea
uranocli run -p "Resume mis correos de hoy"

# Configuración de llaves API
uranocli mcp config OpenAI API_KEY sk-...

# Ver versión actual
uranocli --version
```

---

## 🧠 Tecnología y Arquitectura

Urano CLI utiliza un núcleo compartido con la versión Desktop para garantizar consistencia total. Los agentes que creas en un entorno están disponibles instantáneamente en el otro.

- **IA**: Soporte nativo para OpenRouter, OpenAI, Anthropic y Ollama.
- **Update System**: Detección inteligente de nuevas versiones al inicio.
- **Tools**: Basado en el estándar **Model Context Protocol (MCP)**.
- **Packaging**: Binarios nativos de alto rendimiento.

---

<p align="center">
  Desarrollado con ❤️ por <strong>AndyGomezb7</strong><br>
  <a href="https://uranoai.com">sitio web</a> • <a href="https://github.com/andygomezb7/UranoApp">repositorio principal</a>
</p>

---

### Persistencia e Interoperabilidad
Todos los datos se guardan en `~/.urano/` (o la carpeta de AppData de UranoDesktop) para mantener la sincronía:

| Archivo | Contenido |
|---|---|
| `agents.json` | Configuraciones de agentes y system prompts. |
| `chat_history/` | Todas tus conversaciones (compartidas entre App y CLI). |
| `mcp_vault.json` | API Keys cifradas y estado de los módulos. |

> [!CAUTION]
> **Seguridad y Cifrado:**
> - **App de Escritorio:** Usa `safeStorage` (cifrado por hardware del OS). Estas claves **no pueden ser leídas por el CLI** por seguridad del sistema operativo.
> - **CLI:** Guarda claves en texto plano (`plain:key`). Estas claves **son visibles para ambos entornos**.
> - **Recomendación:** Si quieres usar tus API Keys en el CLI, configúralas directamente desde la terminal con `mcp config`.

## 🔄 Actualización
Para actualizar a la última versión, simplemente vuelve a ejecutar el instalador:
- **Windows**: `irm get.uranoai.com/win | iex`
- **Linux/Mac**: `curl -sSL get.uranoai.com/sh | bash`
