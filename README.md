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

Instala la última versión v1.0.2 en un solo paso:

### Windows (PowerShell)
```powershell
irm https://sh.uranoai.com | iex
```

### Mac / Linux (Bash/Zsh)
```bash
curl -sSL https://sh.uranoai.com | bash
```

---

## 🎮 Modo Interactivo (TUI)

Simplemente ejecuta `uranocli` para entrar en la interfaz de terminal enriquecida.

```text
╭──────────────────────────────────────────────────────────────────╮
│  🚀 Urano CLI  v1.0.2                                           │
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
```

---

## 🧠 Tecnología y Arquitectura

Urano CLI utiliza un núcleo compartido con la versión Desktop para garantizar consistencia total.

- **Frontend**: Custom TUI con `readline` y `chalk`.
- **IA**: Compatible con `Ollama`, `OpenAI`, `Anthropic`, y `OpenRouter`.
- **Tools**: Basado en el estándar **Model Context Protocol (MCP)**.
- **Packaging**: Binarios nativos generados con `pkg`.

---

<p align="center">
  Desarrollado con ❤️ por <strong>AndyGomezb7</strong><br>
  <a href="https://uranoai.com">sitio web</a> • <a href="https://github.com/andygomezb7/UranoApp">repositorio principal</a>
</p>

---

### Persistencia
Todos los datos del usuario se guardan en `~/.urano/`:

| Archivo | Contenido |
|---|---|
| `agents.json` | Configuraciones de agentes |
| `chat_history/` | Historial de conversaciones |
| `mcp_vault.json` | API Keys y estado de módulos (Compartido) |

> [!CAUTION]
> **Seguridad y Cifrado:**
> - **App de Escritorio:** Usa `safeStorage` (cifrado por hardware del OS). Estas claves **no pueden ser leídas por el CLI** por seguridad del sistema operativo.
> - **CLI:** Guarda claves en texto plano (`plain:key`). Estas claves **son visibles para ambos entornos**.
> - **Recomendación:** Si quieres usar tus API Keys en el CLI, configúralas directamente desde la terminal con `mcp config`.
> - **Ruta Compartida:** El CLI detecta automáticamente la configuración de la App en `AppData/Roaming/UranoDesktop` (Windows) o `Application Support` (Mac).

### Multi-target Shared Core
Un agente creado en el CLI aparece en Electron y viceversa. El historial de chat es compartido. La única diferencia es el almacenamiento de secrets (ver arriba).
