# k8s-elixir
Kubernetesローカル開発環境構築を目指しています｡

- Elixir:1.8
- Phoenix:1.4
- PostgreSQL:9.6
- Swagger-UI
- Swagger-Editor
- Swagger-API
- Kubernetes Dashboard
- Skaffold 

# 作業
### 1. DockerFileのビルド ※現時点はバックエンドのみ
### 2. Docker For Mac の Kubernetes有効化
### 3. ローカルのKubernetesはIngressが無いので以下コマンドを実行
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml
```
### 4. yamlのapply
```
kubectl apply -f infra/development/.
```
### 5. Kubernetes Dashboardのapply
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
```
#### 5-1. proxy実行
```
kubectl proxy
```
#### 5-2. Kubernetes Dashboardにアクセス
```
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/.
```

# お掃除
```
kubectl delete -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
kubectl delete -f infra/development/.
```
