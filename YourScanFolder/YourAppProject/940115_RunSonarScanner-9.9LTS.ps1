## @echo off

# 定義專案 utf8 繁體中文避免亂碼 , 必須存 UTF-8 with BOM
# [console]::OutputEncoding = [System.Text.Encoding]::UTF8
# 
# https://blog.poychang.net/sonarqube-no-analysable-projects-were-found/

Write-Host 
Write-Host "========如果 dotnet sonarScanner 指令執行有異常========" -foregroundColor yellow
Write-Host 
Write-Host "---> 請確認本機上是否有安裝 dotnet sonarScanner 工具" -foregroundColor DarkMagenta
Write-Host "安裝 Dotnet Core 指令 : dotnet tool install --global dotnet-sonarscanner"
Write-Host 


# 定義專案 key 與 專案名稱*.sln 或 .csproj
$token="sqp_9aab436148de78ab0a19db2a2a2318392de4d171"
$projectName="YourAppProject"
$projectSlnPath=".\YourAppProject.sln"
$sonarUsername="admin"  # 將 "Your_SonarQube_Username" 改為您的 SonarQube 使用者帳號
$sonarPassword="admin"  # 將 "Your_SonarQube_Password" 改為您的 SonarQube 使用者密碼

Write-Host "========開始進行 SonarScanner 程式碼掃描流程=========" -foregroundColor yellow
Write-Host "當前執行路徑: "$TargetPath -foregroundColor blue
Write-Host 

Write-Host "========目前命令執行路徑========" -foregroundColor yellow
Write-Host $PSScriptRoot
Write-Host 

Write-Host "========開始進行 程式碼掃瞄作業========" -foregroundColor yellow
#dotnet sonarscanner begin /key:$projectName /d:sonar.host.url="http://localhost:9001"  /d:sonar.login=$token
dotnet sonarscanner begin /key:$projectName /d:sonar.host.url="http://localhost:9001"  /d:sonar.login=$sonarUsername /d:sonar.password=$sonarPassword 

Write-Host 
Write-Host "========開始進行 專案建置作業========" -foregroundColor yellow
dotnet build $projectSlnPath

Write-Host
Write-Host "========開始進行 程式碼掃瞄分析結果上傳作業========" -foregroundColor yellow
#dotnet sonarscanner end /d:sonar.login=$token
dotnet sonarscanner end /d:sonar.login=$sonarUsername /d:sonar.password=$sonarPassword 

PAUSE
# Read-Host -Prompt "Press any key to contine"
