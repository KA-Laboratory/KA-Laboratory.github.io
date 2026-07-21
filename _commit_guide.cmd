@echo off
set "R=C:\Users\amake\Claude\Projects\ybn_android_ios\_icon_stage\pages_repo"
git -C "%R%" add guide.html index.html
git -C "%R%" status --short
git -C "%R%" commit -m "Add detailed user guide (guide.html) and link from top page; What's New v4.0.1"
echo COMMIT_EXIT=%ERRORLEVEL%
git -C "%R%" push origin HEAD 2>&1
echo PUSH_EXIT=%ERRORLEVEL%
git -C "%R%" log --oneline -1
echo DONE_GUIDE
