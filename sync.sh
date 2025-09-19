#!/bin/bash
# 一键同步博主更新 + 提交自己的练习 + 推送到自己仓库

# 如果有未保存修改，先提醒
if ! git diff-index --quiet HEAD --; then
  echo "⚠️ 当前有未提交的修改，将一并提交"
fi

# 1. 拉取博主的最新更新
echo "🔄 正在拉取 upstream 更新..."
git pull upstream main

# 2. 让你输入提交信息
read -p "请输入这次提交的信息: " commit_msg

# 3. 添加练习文件（你可以改成指定目录，比如 my_exercise/）
git add my_exercise/

# 4. 提交到本地
git commit -m "$commit_msg"

# 5. 推送到你自己的远程仓库
echo "🚀 正在推送到 origin..."
git push origin main

echo "✅ 同步与推送完成"
