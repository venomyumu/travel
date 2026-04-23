@echo off
chcp 65001 >nul 2>&1
color 0A
echo ==========================================
echo           Git 自动提交推送工具
echo ==========================================
echo.

set /p commit="请输入commit提交信息："

echo.
echo [1/3] 正在添加所有文件...
git add .

echo.
echo [2/3] 正在提交：%commit%
git commit -m "%commit%"

echo.
echo [3/3] 正在推送到远程仓库...
git push

echo.
echo ==========================================
echo              操作完成！
echo ==========================================
echo.
pause