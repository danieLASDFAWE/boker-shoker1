@echo off
chcp 65001 >nul
echo ==========================================
echo   בוקר שוקר - בניית קובץ APK
echo ==========================================
where gradle >nul 2>nul
if %errorlevel% neq 0 (
  echo [!] Gradle לא מותקן במחשב. פתח את התיקייה ב-Android Studio או העלה ל-GitHub Actions.
  pause
  exit /b 1
)
gradle assembleDebug
if %errorlevel% equ 0 (
  echo.
  echo [OK] ה-APK מוכן בנתיב: app\build\outputs\apk\debug\app-debug.apk
)
pause
