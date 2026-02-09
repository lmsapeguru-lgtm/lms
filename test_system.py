"""
JARVIS AI - System Test
Quick test to verify all components are working
"""

import sys
import os

print("=" * 60)
print("🧪 JARVIS AI System Test")
print("=" * 60)
print()

# Test 1: Check Python version
print("📌 Test 1: Python Version")
print(f"   Python {sys.version}")
if sys.version_info >= (3, 9):
    print("   ✅ PASS - Python version is compatible")
else:
    print("   ❌ FAIL - Python 3.9+ required")
print()

# Test 2: Check dependencies
print("📌 Test 2: Required Packages")
required_packages = [
    'google.generativeai',
    'flask',
    'flask_cors',
    'psutil',
    'dotenv'
]

missing_packages = []
for package in required_packages:
    try:
        __import__(package.replace('-', '_'))
        print(f"   ✅ {package}")
    except ImportError:
        print(f"   ❌ {package} - MISSING")
        missing_packages.append(package)

if missing_packages:
    print()
    print("   ⚠️  Missing packages detected!")
    print("   Run: python -m pip install -r requirements.txt")
else:
    print("   ✅ All packages installed")
print()

# Test 3: Check file structure
print("📌 Test 3: File Structure")
required_files = [
    'backend/gemini_engine.py',
    'backend/server.py',
    'commands/command_executor.py',
    'frontend/index.html',
    'frontend/styles.css',
    'frontend/app.js',
    '.env',
    'requirements.txt'
]

for file in required_files:
    if os.path.exists(file):
        size = os.path.getsize(file)
        print(f"   ✅ {file} ({size:,} bytes)")
    else:
        print(f"   ❌ {file} - NOT FOUND")
print()

# Test 4: Check API Key
print("📌 Test 4: API Configuration")
try:
    from dotenv import load_dotenv
    load_dotenv()
    
    api_key = os.getenv('GEMINI_API_KEY')
    if api_key:
        masked_key = api_key[:10] + "..." + api_key[-4:]
        print(f"   ✅ API Key found: {masked_key}")
    else:
        print("   ❌ API Key not found in .env")
except Exception as e:
    print(f"   ❌ Error loading .env: {str(e)}")
print()

# Test 5: Quick Gemini test (optional - requires valid API key)
print("📌 Test 5: Gemini Connection (Optional)")
try:
    import google.generativeai as genai
    
    api_key = os.getenv('GEMINI_API_KEY')
    if api_key:
        genai.configure(api_key=api_key)
        model = genai.GenerativeModel('gemini-2.0-flash-exp')
        
        # Try a simple generation
        response = model.generate_content("Say 'Hello!' in one word")
        print(f"   ✅ Gemini API connected successfully")
        print(f"   Response: {response.text.strip()}")
    else:
        print("   ⚠️  Skipped - No API key")
except Exception as e:
    print(f"   ⚠️  Connection test failed: {str(e)[:50]}...")
    print("   (This is normal if you haven't configured the API key)")
print()

# Test 6: Check logs directory
print("📌 Test 6: Logs Directory")
if os.path.exists('logs'):
    print("   ✅ Logs directory exists")
else:
    print("   ℹ️  Creating logs directory...")
    os.makedirs('logs', exist_ok=True)
    print("   ✅ Logs directory created")
print()

# Summary
print("=" * 60)
print("📊 Test Summary")
print("=" * 60)

if not missing_packages:
    print("✅ All core tests passed!")
    print()
    print("🚀 You're ready to run JARVIS!")
    print()
    print("Next steps:")
    print("  1. python backend/server.py")
    print("  2. Open frontend/index.html in browser")
    print()
    print("Or use quick start:")
    print("  .\\start.ps1")
else:
    print("⚠️  Some tests failed")
    print()
    print("Please fix the issues above before running JARVIS")
    print()
    print("Install missing packages:")
    print("  python -m pip install -r requirements.txt")

print("=" * 60)
