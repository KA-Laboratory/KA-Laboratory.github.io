@echo off
cd /d "C:\Users\amake\Claude\Projects\ybn_android_ios\_icon_stage\pages_repo"
git add index.html shots
git commit -m "Redesign the top page around real app screenshots" -m "Rebuilt on the Digital Agency design system: body 17px, line-height 1.7, letter-spacing 2%, 8px spacing scale, Noto Sans JP. Replaced the illustrated hero with actual light-mode app screenshots (approach list, favourite card close-up, map with the new bus liveries). Added a second CTA near the foot, a plain-language disclaimer, and a skip link. Fade-in is now additive (html.js) so content stays visible if JS fails."
echo COMMIT_EXIT=%ERRORLEVEL%
git push origin main
echo PUSH_EXIT=%ERRORLEVEL%
git log --oneline -2
echo ===DONE===
