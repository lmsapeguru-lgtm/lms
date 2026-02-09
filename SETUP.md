# 🚀 JARVIS AI - Setup & Installation Guide

## පළමුව කරන්න ඕනේ දේවල් (Prerequisites)

### 1. Python Install කරන්න

**ඇයි Python ඕනේ?**
Backend server එක සහ AI engine එක Python වලින් code කරලා තියෙනවා.

**Install කරන විදිහ:**

1. Python download කරන්න: https://www.python.org/downloads/
2. **Python 3.9 හෝ ඊට වැඩි version එකක්** download කරන්න
3. Install කරන ලෙස:
   - ✅ "Add Python to PATH" checkbox එක තෝරන්න (ඉතාමත් වැදගත්!)
   - Install Now ක්ලික් කරන්න
4. Installation කරලා ඉවර වුණාම PowerShell එක open කරලා verify කරන්න:
   ```powershell
   python --version
   ```
   Output එක: `Python 3.x.x` වගේ එකක් පෙන්විය යුතුයි

### 2. Dependencies Install කරන්න

PowerShell එක open කරලා project folder එකට යන්න:

```powershell
cd "c:\Users\Mrshenal\Documents\ai luna\ai"
```

Python dependencies install කරන්න:

```powershell
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

මේ command එක මේ packages install කරයි:
- `google-generativeai` - Gemini AI
- `flask` - Backend server
- `flask-cors` - API access
- `psutil` - System operations
- `python-dotenv` - Configuration
- `requests` - HTTP requests

### 3. API Key Verify කරන්න

`.env` file එක open කරලා බලන්න ඔයාගේ Gemini API key correct වගේ තියෙනවාද කියලා:

```
GEMINI_API_KEY=AIzaSyDT4-q0ozD_fD6spX-FCvUqcEpYmtpA7HQ
```

---

## 🎯 JARVIS Run කරන්නේ කොහොමද?

### Method 1: Separate Terminals (Recommended)

**Terminal 1 - Backend Server:**
```powershell
cd "c:\Users\Mrshenal\Documents\ai luna\ai"
python backend/server.py
```

ඔයාට පෙන්විය යුතුයි:
```
🤖 JARVIS AI Assistant - Backend Server
✅ All services initialized successfully!
🚀 Starting server...
📡 API Server: http://localhost:5000
```

**Terminal 2 හෝ Browser:**

Option A - Simple (Browser වලින් file open කරන්න):
```
frontend/index.html file එක double-click කරන්න
```

Option B - Local Server (Better):
```powershell
cd "c:\Users\Mrshenal\Documents\ai luna\ai\frontend"
python -m http.server 8000
```

Then open browser: `http://localhost:8000`

### Method 2: Quick Start Script (එකම command එකකින්)

PowerShell script එකක් use කරමු:

1. PowerShell open කරන්න
2. Run:
```powershell
cd "c:\Users\Mrshenal\Documents\ai luna\ai"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "python backend/server.py"
Start-Sleep -Seconds 3
Start-Process "frontend/index.html"
```

---

## 📝 Quick Test Commands

JARVIS අරන් කතා කරලා බලන්න:

**සිංහල:**
- "ආයුබෝවන්"
- "ඔයා මොනවද කරන්නේ?"
- "Chrome browser එක විවෘත කරන්න"
- "Desktop එකේ Test කියලා folder එකක් හදන්න"

**English:**
- "Hello"
- "What can you do?"
- "Open Notepad"
- "Create a folder called MyFiles on desktop"

---

## 🎨 Available Features

✅ **Natural Chat** - සාමාන්‍ය කතා බහක් කරන්න පුළුවන්
✅ **Open Apps** - Applications විවෘත කරන්න
✅ **Create Files/Folders** - Files සහ folders හදන්න
✅ **Search Files** - Files search කරන්න
✅ **Open Websites** - Websites විවෘත කරන්න
✅ **System Control** - Volume වගේ දේවල් control කරන්න

---

## ⚠️ Common Issues & Solutions

### Issue 1: "python not found"
**විසදුම:**
- Python install කරලා නැති නම් install කරන්න
- Python PATH එකට add කරලා නැති නම්, reinstall කරලා "Add to PATH" tick කරන්න

### Issue 2: "Module not found"
**විසදුම:**
```powershell
python -m pip install -r requirements.txt
```

### Issue 3: "Server offline" frontend එකේ
**විසදුම:**
- Backend server එක run වෙනවාද බලන්න
- `http://localhost:5000/health` browser එකෙන් open කරලා බලන්න
- Status "healthy" නම් හරි

### Issue 4: "Port already in use"
**විසදුම:**
```powershell
# Port 5000 use කරන process එක kill කරන්න
netstat -ano | findstr :5000
taskkill /PID <process_id> /F
```

### Issue 5: Commands don't work
**විසදුම:**
- PowerShell එක "Run as Administrator" කරලා open කරන්න
- Application paths correct වගේ තියෙනවාද verify කරන්න

---

## 🔐 Security Notes

⚠️ **API Key Security:**
- `.env` file එක කවදාවත් online එකට upload කරන්න එපා
- Git එකට commit කරන්න එපා
- Public repos වල share කරන්න එපා

⚠️ **Dangerous Commands:**
- Shutdown/Restart commands වලට confirmation ඕනේ
- Important files delete කරන්න කලින් double check කරන්න

---

## 📊 Project Status

**Phase 1: ✅ COMPLETE**
- Core AI chat system
- Command execution engine
- Glassmorphism UI
- Security layer

**Phase 2: 🔄 COMING SOON**
- Voice input/output
- Advanced automation
- Plugin system

---

## 💡 Tips

1. **Keyboard Shortcuts:**
   - `Ctrl + K` - Input box focus කරන්න
   - `Ctrl + L` - Chat clear කරන්න
   - `Enter` - Message send කරන්න

2. **Best Practices:**
   - Always keep backend server running
   - Clear chat occasionally for better performance
   - Check logs for debugging: `logs/command_log.json`

3. **Performance:**
   - First response might be slow (AI warm-up)
   - Subsequent responses are faster
   - Internet connection needed for AI

---

## 🆘 Help

ගැටලුවක් තියෙනවා නම්:

1. **Check logs:**
   ```powershell
   cat logs/command_log.json
   ```

2. **Test backend:**
   ```powershell
   python backend/gemini_engine.py
   ```

3. **Test executor:**
   ```powershell
   python commands/command_executor.py
   ```

4. **Read full docs:**
   - `README.md` - Overview
   - `instructions.md` - Technical details

---

## 🎉 You're All Set!

දැන් ඔයාට JARVIS use කරන්න පුළුවන්!

```powershell
python backend/server.py
```

Frontend open කරලා chat කරන්න පටන් ගන්න! 🚀

---

<div align="center">

**සුභ පැතුම්! 🎊**

Made with ❤️ | Powered by Google Gemini 2.0

</div>
