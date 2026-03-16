<p align="center">
  <br>
  <font size="7">🚀</font>
  <br>
  <font size="6"><b>Urano CLI</b></font>
  <br>
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

Urano CLI es un **centro de orquestación autónomo** diseñado para la máxima productividad.

- 🤖 **Orquestación Multi-Agente**: Chatea con varios agentes en paralelo o haz broadcast.
- 📐 **Layout 100% Responsivo**: Interfaz inteligente que aprovecha todo el alto y ancho de tu terminal.
- 📝 **Markdown Nativo**: Soporte completo para bloques de código, tablas y formato enriquecido.
- 🧩 **Persistencia Autónoma**: Tareas programadas que corren de fondo incluso al cerrar la terminal.
- 🛠 **Ecosistema MCP**: Acceso directo a Google Calendar, Gmail, CRM y herramientas personalizadas.
- ⚡ **Sincronización Real**: Interoperabilidad instantánea entre el CLI y la App Desktop.

---

## 📥 Instalación Rápida

Obtén la última versión v1.0.4 en segundos:

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

> [!TIP]
> **Layout Adaptativo:** Si redimensionas tu ventana, Urano reajusta automáticamente el número de mensajes visibles y el área de entrada.

### Comandos Slash ⚡ (Dentro del Chat)

| Comando | Acción |
|---|---|
| `/help` | Muestra la ayuda interactiva |
| `/agent <id>` | Cambia el agente activo (persona) |
| `/history` | Abre el selector de conversaciones previas |
| `/tasks` | Gestiona tus tareas agendadas y autónomas |
| `/parallel <ids> <p>` | Ejecuta un prompt en varios agentes a la vez |
| `/all <prompt>` | Envía un mensaje a todos los agentes registrados |
| `/clear` | Limpia la pantalla del chat |
| `/cancel` | Detiene la generación de respuesta actual |
| `/mcp` | Muestra el estado y herramientas de módulos cargados |
| `/exit` | Cierra la interfaz de forma segura |

---

## 🛠️ Modo Experto (Comandos Directos)

Ideal para scripts, CI/CD y automatizaciones avanzadas.

### Chat & Ejecución 🚀
- `uranocli chat [-a id]` - Chat interactivo con un agente específico.
- `uranocli chat --all` - Chat broadcast (mismo mensaje a todos).
- `uranocli run -p "msg" [-a id]` - Ejecuta un prompt y devuelve el resultado.
- `uranocli run-parallel -p "msg" -a a,b` - Ejecución paralela con streaming.

### Sesiones Independientes 🔄
- `uranocli session new <agentId>` - Lanza una nueva sesión en background.
- `uranocli session list` - Lista todas las sesiones activas en el sistema.
- `uranocli session attach <sessionId>` - Conecta tu terminal a una sesión en curso.
- `uranocli session cancel <sessionId>` - Cancela una ejecución en background.

### Gestión de Agentes 🤖
- `uranocli agent list` - Lista todos los agentes disponibles.
- `uranocli agent create <id>` - Asistente interactivo para crear un agente.
- `uranocli agent edit <id>` - Modifica la configuración de un agente.
- `uranocli agent delete <id>` - Elimina un agente del registro.

### MCP & Módulos 📦
- `uranocli mcp list` - Muestra módulos habilitados/deshabilitados.
- `uranocli mcp enable/disable <mod>` - Gestiona el estado de un módulo.
- `uranocli mcp config <mod> <key> <val>` - Configura credenciales (API Keys).
- `uranocli mcp tools` - Detalla todas las herramientas disponibles.
- `uranocli mcp status` - Verifica el servidor local de Urano.

### Configuración General ⚙️
- `uranocli config get` - Muestra la URL del backend y estado del token.
- `uranocli config set <url|token> <val>` - Actualiza la configuración global.
- `uranocli --daemon` - **Modo Demonio:** Inicia solo el procesador de tareas de fondo.
- `uranocli --version` - Muestra la versión actual instalada.

---

## 🧠 Tecnología y Arquitectura

Urano CLI utiliza un núcleo compartido con la versión Desktop para garantizar consistencia total.

> [!IMPORTANT]
> **Interoperabilidad:** Los agentes y el historial son compartidos. Si inicias una tarea en la TUI, puedes ver el progreso en la App de Escritorio y viceversa.

- **IA**: Soporte nativo para OpenRouter, OpenAI, Anthropic y Ollama.
- **Tools**: Basado completamente en el estándar **Model Context Protocol (MCP)**.
- **Daemon Mode**: Permite que Urano siga ejecutando tareas agendadas sin necesidad de tener una terminal abierta.

---

<p align="center">
  Desarrollado con ❤️ por <strong>AndyGomezb7</strong><br>
  <a href="https://uranoai.com">sitio web</a> • <a href="https://github.com/andygomezb7/UranoApp">repositorio principal</a>
</p>

---

### 🔒 Privacidad y Seguridad
| Archivo | Contenido |
|---|---|
| `~/.urano/agents.json` | Tus agentes personalizados. |
| `~/.urano/local_chats.json` | Historial completo de conversaciones. |
| `~/.urano/mcp_vault.json` | API Keys y secretos (Plain-Text en CLI para compatibilidad). |

> [!CAUTION]
> **Cifrado:** Por razones de interoperabilidad con scripts, el CLI guarda las API Keys en texto plano dentro de tu carpeta de usuario. Usa el comando `mcp config` para gestionarlas de forma segura.

## 🔄 Actualización
Simplemente vuelve a ejecutar el instalador para obtener las últimas mejoras:
- **Windows**: `irm get.uranoai.com/win | iex`
- **Linux/Mac**: `curl -sSL get.uranoai.com/sh | bash`
