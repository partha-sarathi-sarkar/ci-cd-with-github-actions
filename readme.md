Install choco : Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))   

Install act-cli : choco install act-cli


Make sure your docker is desktop is running 


open cmd in and run - act

act workflow_dispatch
act workflow_dispatch --container-architecture linux/amd64

RUN specific file :
act -W .github/workflows/build-services-matrix.yaml
act -W .github/workflows/build-services.yaml

act --secret-file .secrets -W .github/workflows/build-services.yaml
act --env-file .env -W .github/workflows/build-services.yaml






## for runtime
act workflow_dispatch \
  --secret DOCKER_USERNAME=yourname \
  --secret DOCKER_PASSWORD=yourtoken \
  --container-architecture linux/amd64 \
  --privileged