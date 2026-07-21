@echo off
rem Only the three JPGs are used by the page. The raw PNG captures are large and
rem do not belong in the published repo.
cd /d "C:\Users\amake\Claude\Projects\ybn_android_ios\_icon_stage\pages_repo"
git rm --cached shots/approach.png shots/approach_live.png shots/favorites.png shots/map.png shots/timetable.png shots/timetable.jpg
del shots\approach.png shots\approach_live.png shots\favorites.png shots\map.png shots\timetable.png shots\timetable.jpg 2>nul
echo shots/*.png> .gitignore
git add -A
git commit -m "Keep only the JPGs the page uses; drop the raw PNG captures"
echo COMMIT_EXIT=%ERRORLEVEL%
git push origin main
echo PUSH_EXIT=%ERRORLEVEL%
dir /b shots
echo ===DONE===
