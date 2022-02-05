# devops-tool
Only docker, avoid install on vm.
## yamllint
```
# Build docker image
docker build . -t devops-tool

# Action
docker run -i devops-tool bash -c 'cat > /test.yaml' < test.yaml && yamllint test.yaml  

# Clear
docker ps -a | grep devops | awk '{print $1}' | xargs docker rm 
```