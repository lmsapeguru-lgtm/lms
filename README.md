# 🤖 JARVIS AI Desktop Assistant

<div align="center">

![JARVIS](https://img.shields.io/badge/JARVIS-AI%20Assistant-00f0ff?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-3.9+-blue?style=for-the-badge&logo=python)
![Gemini](https://img.shields.io/badge/Google-Gemini%202.0-purple?style=for-the-badge&logo=google)
![Status](https://img.shields.io/badge/Status-Phase%201-success?style=for-the-badge)

**Your Intelligent Desktop AI Assistant Powered by Google Gemini**

සිංහල & English Bilingual Support | PC Automation | Natural Conversations

</div>

---

## ✨ Features

### 🎯 Current Features (Phase 1)
- 💬 **Natural Language Chat** - සිංහල සහ English යන භාෂා දෙකෙන්ම කතා කරන්න
- 🖥️ **PC Command Execution** - Open apps, create files/folders, control system
- 🎨 **Beautiful Glassmorphism UI** - Modern, premium design with animations
- 🔒 **Secure Architecture** - Whitelisted commands, confirmation for dangerous actions
- 📝 **Command Logging** - Full audit trail of all executed commands
- ⚡ **Real-time Responses** - Fast AI processing with streaming support

### 🔮 Coming Soon (Phase 2-4)
- 🎤 Voice Input/Output
- 🔌 Plugin System
- 📅 Calendar Integration
- 🏠 Smart Home Control
- 📱 Mobile Companion App
- ☁️ Cloud Sync

---

## 🚀 Quick Start

### Prerequisites
- Python 3.9 or higher
- Modern web browser (Chrome, Edge, Firefox)
- Windows 10/11 (other platforms coming soon)

### Installation

1. **Clone or Download this repository**
   ```powershell
   cd "c:\Users\Mrshenal\Documents\ai luna\ai"
   ```

2. **Install Python Dependencies**
   ```powershell
   pip install -r requirements.txt
   ```

3. **Configure API Key**
   - Your Gemini API key is already configured in `.env` file
   - To change it, edit `.env` and update `GEMINI_API_KEY`

4. **Start Backend Server**
   ```powershell
   python backend/server.py
   ```

5. **Open Frontend**
   - Open `frontend/index.html` in your web browser
   - Or use a local server:
     ```powershell
     cd frontend
     python -m http.server 8000
     ```
   - Then visit: `http://localhost:8000`

---

## 📖 Usage Guide

### Basic Chat
1. Type your message in the input box
2. Press Enter or click Send
3. JARVIS will respond naturally

### Command Examples

**English:**
- "Open Chrome browser"
- "Create a folder called Projects on my desktop"
- "Search for report.pdf in my Documents"
- "Open YouTube"

**සිංහල:**
- "Chrome browser එක විවෘත කරන්න"
- "Desktop එකේ Projects කියලා folder එකක් හදන්න"
- "Documents එකේ report.pdf file එක හොයන්න"

### Available Commands

| Command | Parameters | Example |
|---------|-----------|---------|
| `open_app` | app_name | "Open Notepad" |
| `close_app` | app_name | "Close Chrome" |
| `create_folder` | folder_name, path | "Create folder on desktop" |
| `create_file` | filename, content, path | "Create a text file" |
| `search_file` | query, location | "Find my document" |
| `open_url` | url | "Open Google" |
| `system_volume` | level/action | "Set volume to 50" |

**⚠️ Dangerous Commands (require confirmation):**
- `shutdown_pc`
- `restart_pc`

---

## 🏗️ Project Structure

```
jarvis-ai/
│
├── backend/
│   ├── gemini_engine.py      # AI engine with Gemini integration
│   └── server.py              # Flask API server
│
├── commands/
│   └── command_executor.py    # PC command execution engine
│
├── frontend/
│   ├── index.html             # Main UI
│   ├── styles.css             # Glassmorphism design
│   └── app.js                 # Frontend logic
│
├── services/                  # Future services (Phase 2+)
├── security/                  # Security layers (Phase 2+)
├── database/                  # Data storage (Phase 2+)
├── logs/                      # Command execution logs
│
├── .env                       # Environment configuration
├── requirements.txt           # Python dependencies
├── instructions.md            # Full technical documentation
└── README.md                  # This file
```

---

## 🔧 API Endpoints

### Backend Server (http://localhost:5000)

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/health` | GET | Check server status |
| `/chat` | POST | Send chat message |
| `/execute` | POST | Execute command directly |
| `/history` | GET | Get conversation history |
| `/history/clear` | POST | Clear conversation history |
| `/commands/history` | GET | Get command execution logs |

---

## 🎨 Keyboard Shortcuts

- **Ctrl + K** - Focus input box
- **Ctrl + L** - Clear chat
- **Enter** - Send message
- **Shift + Enter** - New line
- **Escape** - Clear input

---

## 🔐 Security Features

✅ **Command Whitelisting** - Only pre-approved commands can execute  
✅ **Confirmation System** - Critical actions require user approval  
✅ **Audit Logging** - All commands logged with timestamps  
✅ **API Key Protection** - Stored securely in environment variables  
✅ **No Arbitrary Code Execution** - Sandboxed command system  

---

## 🐛 Troubleshooting

### Backend won't start
```powershell
# Make sure all dependencies are installed
pip install -r requirements.txt

# Check if port 5000 is available
netstat -ano | findstr :5000
```

### API Error: "Server offline"
1. Make sure backend server is running (`python backend/server.py`)
2. Check if API key is valid in `.env` file
3. Verify internet connection for Gemini API

### Commands not working
1. Check command logs in `logs/command_log.json`
2. Ensure app paths are correct for your system
3. Run backend with administrator privileges if needed

---

## 🗺️ Roadmap

### Phase 1: Foundation ✅ (Current)
- [x] Chat system
- [x] Gemini integration
- [x] Basic UI
- [x] Command execution
- [x] Security layer

### Phase 2: Voice & Intelligence 🔄
- [ ] Speech-to-Text
- [ ] Text-to-Speech
- [ ] Advanced command parsing
- [ ] Context awareness

### Phase 3: Productivity & Monetization 📅
- [ ] To-do manager
- [ ] Calendar integration
- [ ] Usage analytics
- [ ] Premium features

### Phase 4: Ecosystem 🌐
- [ ] Plugin marketplace
- [ ] Mobile app
- [ ] Cloud sync
- [ ] Multi-user support

---

## 📝 License

This project is for educational and personal use.  
Gemini API usage subject to Google's terms of service.

---

## 🙏 Acknowledgments

- **Google Gemini** - AI capabilities
- **Flask** - Backend framework
- **Design inspiration** - JARVIS from Iron Man

---

## 📧 Support

For issues or questions:
1. Check `instructions.md` for detailed technical documentation
2. Review command logs in `logs/` folder
3. Ensure all dependencies are properly installed

---

<div align="center">

**Made with ❤️ using Google Gemini 2.0 Flash**

සිංහල & English | 🇱🇰 Sri Lanka

</div>
