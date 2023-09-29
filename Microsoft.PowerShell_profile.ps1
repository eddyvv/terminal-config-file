# oh-my-posh --init --shell pwsh --config "D:\ChromeDownloads\download.json" | Invoke-Expression
oh-my-posh --init --shell pwsh --config "C:\Users\16946\AppData\Local\Programs\oh-my-posh\themes\easy-term.omp.json" | Invoke-Expression

#------------------------------- Import Modules BEGIN -------------------------------
# 引入 posh-git
Import-Module posh-git

# 引入 oh-my-posh
Import-Module oh-my-posh

# 引入 ps-read-line
Import-Module PSReadLine

# 设置 PowerShell 主题
# Set-PoshPrompt ys
# Set-PoshPrompt -Theme Paradox
#------------------------------- Import Modules END   -------------------------------





#-------------------------------  Set Hot-keys BEGIN  -------------------------------
# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History

# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

# 设置 Tab 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete

# 设置 Ctrl+d 为退出 PowerShell
Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit

# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo

# 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

# 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
#-------------------------------  Set Hot-keys END    -------------------------------





# #-------------------------------    Functions BEGIN   -------------------------------
# # Python 直接执行
# $env:PATHEXT += ";.py"





# #-------------------------------   Set Alias BEGIN    -------------------------------
# # 1. 编译函数 make
# function MakeThings {
# 	nmake.exe $args -nologo
# }
# Set-Alias -Name make -Value MakeThings

# # 2. 更新系统 os-update
# Set-Alias -Name os-update -Value Update-Packages

# # 3. 查看目录 ls & ll
# function ListDirectory {
# 	(Get-ChildItem).Name
# 	Write-Host("")
# }
# Set-Alias -Name ls -Value ListDirectory
# Set-Alias -Name ll -Value Get-ChildItem
