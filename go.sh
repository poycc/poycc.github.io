# 在source分支下将除public文件夹外的所有文件推送到source分支
git add .
git commit -m $1
git push github source:source
git push gitee source:source

cd /Users/andy/Documents/code/rblog/public
git add .
git commit -m $1
git push github master:master
git push gitee master:master
