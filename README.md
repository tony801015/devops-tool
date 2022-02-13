# devops-tool

Only docker, avoid install on vm.

## yamllint

```
# Build docker image
docker build . -t devops-tool

# Action
docker run --name devops-tool -dit ghcr.io/tony801015/devops-tool:main
docker exec -i devops-tool bash -c 'cat > /test.yaml' < test.yaml
docker exec -i devops-tool yamllint test.yaml

# Clear
docker ps -a | grep devops | awk '{print $1}' | xargs docker rm -f
```
