git add public  && git commit -m $1
git subtree push --prefix public github master
git subtree push --prefix public gitee master




git add . -n /public
git commit -m $1

git subtree push --prefix github source  
git subtree push --prefix gitee source  