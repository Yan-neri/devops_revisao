# DevOps Revisão

## Exercício 23 e 24
Comandos: git init, git add, git commit, git log --oneline,
git checkout -b feature-mensagem, git merge feature-mensagem

* d8ebb83 (HEAD -> master, origin/master) Finaliza projeto de revisao DevOps
* 5183e75 Adiciona Dockerfile e requirements
* 978e48e Adiciona workflow do GitHub Actions
* 22cbcf7 (feature-mensagem) Altera mensagem de saida do programa
* 1418f18 Adiciona teste unitario com pytest
* 3b701c1 Adiciona aplicacao Python inicial

## Exercício 25
Workflow em `.github/workflows/ci.yml`

## Exercício 26
Comandos: python -m http.server 8080, lsof -i :8080 (ou netstat -ano),
kill <PID> (ou taskkill)

PS C:\Users\Lucas\Documents\devops-revisao> netstat -ano | findstr :8080
  TCP    0.0.0.0:8080           0.0.0.0:0              LISTENING       22948
  TCP    [::]:8080              [::]:0                 LISTENING       22948
PS C:\Users\Lucas\Documents\devops-revisao> taskkill /PID 1234 /F 
ERRO: o processo "1234" não foi encontrado.
PS C:\Users\Lucas\Documents\devops-revisao> taskkill /PID 22948 /F
ÊXITO: o processo com PID 22948 foi finalizado.
PS C:\Users\Lucas\Documents\devops-revisao> netstat -ano | findstr :8080

## Exercício 27 e 28
docker build -t devops-revisao .
docker run -d --name app-devops -p 8080:8080 devops-revisao
docker ps
docker logs app-devops

PS C:\Users\Lucas\Documents\devops-revisao> docker build -t devops-revisao .
[+] Building 6.4s (9/9) FINISHED                                      docker:desktop-linux
 => [internal] load build definition from dockerfile                                  0.0s
 => => transferring dockerfile: 347B                                                  0.0s
 => [internal] load metadata for docker.io/library/python:3.12-slim                   1.2s
 => [internal] load .dockerignore                                                     0.0s
 => => transferring context: 72B                                                      0.0s
 => [1/4] FROM docker.io/library/python:3.12-slim@sha256:05cda9777409a9c3ffddd94a4c4  0.0s
 => => resolve docker.io/library/python:3.12-slim@sha256:05cda9777409a9c3ffddd94a4c4  0.0s
 => [internal] load build context                                                     0.0s
 => => transferring context: 1.70kB                                                   0.0s
 => CACHED [2/4] WORKDIR /app                                                         0.0s
 => [3/4] COPY . .                                                                    0.0s
 => [4/4] RUN pip install --no-cache-dir -r requirements.txt                          3.8s
 => exporting to image                                                                1.2s
 => => exporting layers                                                               0.8s
 => => exporting manifest sha256:dbd7a5564e026ee02a00b824a80c5b1bc8e358a69e649b06b05  0.0s
 => => exporting config sha256:a19142b3e6d3f12585b198818f4c2e32e4b912ed814f7c0c53fe2  0.0s
 => => exporting attestation manifest sha256:791302c2ef12dcd4e211a25e525f6f3a6202274  0.0s
 => => exporting manifest list sha256:a75489f9c9ff69b86f9614dafca0c2424da8c987bf6c93  0.0s
 => => naming to docker.io/library/devops-revisao:latest                              0.0s
 => => unpacking to docker.io/library/devops-revisao:latest                           0.4s
PS C:\Users\Lucas\Documents\devops-revisao> docker run -d --name app-devops -p 8080:8080 devops-revisao
acb05a8eaaf66e5b9939a61d9a82a53e9eaa438d5c16bba27eddc527d96cd996

CONTAINER ID   IMAGE            COMMAND                  CREATED          STATUS          PORTS                                         NAMES
acb05a8eaaf6   devops-revisao   "python -m http.servÔÇª"   50 seconds ago   Up 50 seconds   0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp   app-devops

172.17.0.1 - - [06/Oct/2026 14:08:32] "GET / HTTP/1.1" 200 -
172.17.0.1 - - [06/Oct/2026 14:08:32] code 404, message File not found
172.17.0.1 - - [06/Oct/2026 14:08:32] "GET /favicon.ico HTTP/1.1" 404 -