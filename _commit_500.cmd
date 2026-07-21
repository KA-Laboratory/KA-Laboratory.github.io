@echo off
cd /d "C:\Users\amake\Claude\Projects\ybn_android_ios\_icon_stage\pages_repo"
git add index.html
git commit -m "What's New: v5.0.0 (learned travel times, bus livery on map, faster delay catch-up)"
echo COMMIT_EXIT=%ERRORLEVEL%
git push origin main
echo PUSH_EXIT=%ERRORLEVEL%
git log --oneline -2
echo ===DONE===
