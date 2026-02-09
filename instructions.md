# JARVIS AI Assistant PC System
## instructions.md

---

# 1. Project Overview

Build a production-ready AI desktop assistant (JARVIS-style) for Windows PC using Google Gemini API.

The system must:
- Understand natural language (text + voice)
- Execute PC-level commands
- Automate tasks
- Integrate with web services
- Be secure and scalable
- Support future feature expansion

This is a commercial-ready system, not a demo.

---

# 2. Business Requirements

## 2.1 Objectives

- Build a personal AI assistant for PC users
- Monetizable SaaS-ready architecture
- Modular design for premium feature unlocks
- Support Sinhala + English language
- Secure API key management

## 2.2 Target Users

- Students
- Developers
- Business users
- Content creators
- Power users

## 2.3 Core Features

### 1. Conversational AI
- Text chat interface
- Voice input (Speech-to-Text)
- Voice output (Text-to-Speech)
- Context memory per session
- Conversation history

### 2. PC Automation
- Open/close applications
- File search
- Create folders/files
- System control (volume, brightness)
- Launch URLs
- Shutdown / restart confirmation flow

### 3. Smart Commands
- "Summarize this PDF"
- "Write email"
- "Generate code"
- "Explain error"
- "Schedule reminder"
- "Search and summarize web results"

### 4. Productivity Tools
- Note taking system
- To-do manager
- Calendar integration
- Clipboard intelligence
- Code assistant mode

### 5. Security Layer
- User authentication
- Encrypted API storage
- Command permission control
- Dangerous action confirmation

### 6. Monetization Ready
- Free tier (limited usage)
- Pro tier (unlimited + automation)
- Usage tracking
- Admin dashboard

---

# 3. Technical Requirements

## 3.1 Architecture

Architecture Type: Modular Microservice-Based Desktop Architecture

Layers:
1. UI Layer
2. Assistant Engine Layer
3. Command Execution Layer
4. AI Processing Layer
5. Security Layer
6. Storage Layer

---

## 3.2 Tech Stack

Frontend:
- Electron.js or Tauri (Windows Desktop App)
- React.js UI
- TailwindCSS or ShadCN UI

Backend (Local Engine):
- Node.js
- Express (if local API needed)

AI Integration:
- Google Gemini API (latest stable model)
- Streaming response enabled

Voice:
- Speech-to-Text (Web Speech API or Whisper local)
- Text-to-Speech (Windows TTS or ElevenLabs optional)

Database:
- SQLite (local storage)
- Optional: Supabase or Firebase (cloud sync)

---

## 3.3 Gemini API Integration

API Key Security:
- Store in .env file
- Never expose in frontend
- Use backend proxy layer

Flow:
User Input → Local Backend → Gemini API → Response → UI Render

Use:
- Streaming mode
- System instructions
- Tool calling support

---

## 3.4 AI Engine Design

### Prompt Structure

System Role:
"You are a powerful desktop AI assistant. You can execute commands only when structured in JSON format."

Output Format:
If normal response:
{
  "type": "chat",
  "content": "response"
}

If action required:
{
  "type": "command",
  "action": "open_app",
  "parameters": {
    "app_name": "chrome"
  }
}

Never mix both types.

---

## 3.5 Command Execution Engine

Create Command Registry:

Supported Actions:
- open_app
- close_app
- search_file
- create_file
- create_folder
- system_volume
- open_url
- shutdown_pc (confirmation required)
- restart_pc (confirmation required)

All commands must:
- Validate parameters
- Log activity
- Require confirmation for critical actions

---

## 3.6 Security Requirements

- API key must be stored in environment variables
- Rate limiting enabled
- Command whitelist only
- No arbitrary shell execution
- Admin override mode
- Encrypted local storage
- Dangerous commands require double confirmation

---

## 3.7 Performance Requirements

- Response time < 2 seconds (excluding AI latency)
- Streaming token display
- Efficient memory management
- Low CPU background usage

---

## 3.8 UI/UX Requirements

Design:
- Glassmorphism UI
- Dark mode default
- Animated assistant avatar
- Real-time response typing effect
- Floating microphone button

Sections:
- Chat panel
- Command history
- Settings
- API configuration
- Voice settings

---

## 3.9 Logging & Analytics

- Store all command logs
- Error tracking
- Token usage tracking
- Feature usage analytics

---

## 3.10 Future Feature Expansion

- Local LLM fallback
- Plugin marketplace
- Smart home integration
- Mobile companion app
- Custom workflows builder
- Multi-user profiles
- Cloud sync

---

# 4. Deployment Requirements

Development Mode:
- Localhost backend
- .env file config

Production Mode:
- Signed Windows installer
- Encrypted API config
- Auto-update mechanism

---

# 5. Folder Structure

jarvis-ai/
│
├── frontend/
├── backend/
├── commands/
├── services/
├── security/
├── database/
├── logs/
├── .env
├── main.js
└── instructions.md

---

# 6. Risk Management

Risks:
- API key exposure
- Unauthorized command execution
- OS-level vulnerabilities
- High token usage cost

Mitigation:
- Strict permission system
- Usage monitoring
- Command sandboxing
- Key rotation

---

# 7. Development Phases

Phase 1:
- Chat system
- Gemini integration
- Basic UI

Phase 2:
- Command execution engine
- Voice system
- Security layer

Phase 3:
- Monetization
- Analytics
- Installer build

Phase 4:
- Advanced automation
- Plugin system
- AI memory optimization

---

# 8. Non-Functional Requirements

- Secure
- Scalable
- Maintainable
- Modular
- Extensible
- Production-grade

---

END OF FILE
