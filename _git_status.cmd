@echo off
cd /d "C:\Users\amake\Claude\Projects\ybn_android_ios\_icon_stage\pages_repo"
echo ===REMOTE===
git remote -v
echo ===BRANCH===
git branch --show-current
echo ===STATUS===
git status --short
echo ===FETCH===
git fetch origin
git log --oneline -3
echo ===DONE===
