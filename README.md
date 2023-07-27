# ITRI_EasyDevOps

1. ### 描述：

   ITRI_EasyDevOps 專案的主要用於 CI/CD DevOps 的容器化工具集。容器化有助於方便部署和管理。目標是讓開發團隊能夠專注於開發本身，而不需花費過多時間處理""環境設置和部署的瑣碎事務""。透過容器化，我們致力於提供一個方便且快速的開發環境，讓 CICD DevOps 變得更加順暢。

2. ### 功能：

   - SonarQube：程式碼靜態分析工具，幫助確保程式碼品質，發現潛在的程式碼問題。
   - Jenkins：流程自動化工具，用於建置、測試和部署程式碼。
   - PostgreSQL：強大的開源關聯式資料庫，用於儲存和管理專案所需的資料。

3. ### SonarQube ( image: sonarqube:9.9-community )

   image: sonarqube:9.9-community  

   LTS SONARQUBE_VERSION=9.9.1.69595 

   提供即時的程式碼品質反饋，確保開發團隊可以持續提供高品質的程式碼。

4. ### Jenkins ( image: jenkins/jenkins:lts )

   image: jenkins/jenkins:lts 2.401.2

   負責自動化整個 CI/CD 流程，從程式碼的建置、測試，到最終的部署都能自動處理。

5. ### PostgreSQL ( image: postgres:13 )

   專案使用 PostgreSQL 作為可靠的資料庫，確保資料的儲存和管理是穩定且高效的。

   