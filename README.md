# k8s-elixir
Kubernetesローカル開発環境構築を目指しています｡

- Elixir:1.6
- Phoenix:1.3
- PostgreSQL:9.6
- Swagger-UI
- Swagger-Editor
- Swagger-API
- Kubernetes Dashboard
- Skaffold 

# 作業
### 1. DockerFileのビルド
```
docker build -t k8s-elixir-1.6:latest infra/development/docker/backend/.
docker build -t k8s-nodejs-10.16:latest infra/development/docker/frontend/.
```
### 2. 各プロジェクト作成
```
docker run -it -v $(pwd):/app k8s-elixir-1.6:latest bash "mix phx.new app_ex --no-brunch"
```
### 3. yamlのapply 
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml
kubectl apply -f infra/development/k8s/ingress.yaml
kubectl apply -f infra/development/k8s/postgres.yaml
```
### 4. skaffold起動 
```
skaffold dev
```

# お掃除
```
kubectl delete -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
kubectl delete -f infra/development/k8s/.
```
