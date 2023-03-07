# ~/.bash_logout

cdat=$(date "+%F %T")
cd code/Labs/CS1XC3
git add .
git commit -m "Shell Logout Commit $cdat"
git push origin master

