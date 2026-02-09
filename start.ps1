# JARVIS AI Assistant - Quick Start Script
# This script starts the backend server and opens the frontend

Write-Host "================================" -ForegroundColor Cyan
Write-Host "🤖 JARVIS AI Assistant" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check if Python is installed
Write-Host "🔍 Checking Python installation..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Python found: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Python not found!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Python first:" -ForegroundColor Yellow
    Write-Host "1. Download from: https://www.python.org/downloads/" -ForegroundColor White
    Write-Host "2. During installation, check 'Add Python to PATH'" -ForegroundColor White
    Write-Host "3. Run this script again" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if dependencies are installed
Write-Host ""
Write-Host "🔍 Checking dependencies..." -ForegroundColor Yellow
$pipList = python -m pip list 2>&1
if ($pipList -like "*google-generativeai*") {
    Write-Host "✅ Dependencies installed" -ForegroundColor Green
} else {
    Write-Host "⚠️  Dependencies not found. Installing..." -ForegroundColor Yellow
    Write-Host ""
    python -m pip install --upgrade pip
    python -m pip install -r requirements.txt
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Dependencies installed successfully" -ForegroundColor Green
    } else {
        Write-Host "❌ Failed to install dependencies" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
}

# Start backend server in new window
Write-Host ""
Write-Host "🚀 Starting backend server..." -ForegroundColor Yellow
$backendPath = Join-Path $PSScriptRoot "backend\server.py"

Start-Process powershell -ArgumentList @(
    "-NoExit",
    "-Command",
    "cd '$PSScriptRoot'; python '$backendPath'"
) -WindowStyle Normal

# Wait for server to start
Write-Host "⏳ Waiting for server to initialize..." -ForegroundColor Yellow
Start-Sleep -Seconds 5

# Check if server is running
Write-Host "🔍 Checking server status..." -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:5000/health" -UseBasicParsing -TimeoutSec 5 -ErrorAction Stop
    if ($response.StatusCode -eq 200) {
        Write-Host "✅ Backend server is running!" -ForegroundColor Green
    }
} catch {
    Write-Host "⚠️  Server may still be starting..." -ForegroundColor Yellow
}

# Open frontend
Write-Host ""
Write-Host "🌐 Opening JARVIS UI..." -ForegroundColor Yellow
$frontendPath = Join-Path $PSScriptRoot "frontend\index.html"

# Try to open with default browser
Start-Process $frontendPath

Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host "✅ JARVIS is starting!" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Backend Server: http://localhost:5000" -ForegroundColor White
Write-Host "Frontend UI: Opening in browser..." -ForegroundColor White
Write-Host ""
Write-Host "Tips:" -ForegroundColor Yellow
Write-Host "  • Keep the backend server window open" -ForegroundColor White
Write-Host "  • Close backend window to stop JARVIS" -ForegroundColor White
Write-Host "  • Check SETUP.md for detailed instructions" -ForegroundColor White
Write-Host ""
Write-Host "Happy chatting! 🎉" -ForegroundColor Green
Write-Host ""
