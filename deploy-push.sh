echo "开始执行清楚和编译。。。"
hexo clean && hexo g
echo "开始推送博客。。。"
hexo d

echo "开始备份文件。。。"
sj=$(date '+%Y-%m-%d')
git add .
git commit -m "$sj 备份文件"
git push