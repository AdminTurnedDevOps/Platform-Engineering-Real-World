```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

```
helm repo update
```

```
helm install kube-prometheus -n monitoring prometheus-community/kube-prometheus-stack --create-namespace
```

```
kubectl create -f manifests/setup

until kubectl get servicemonitors --all-namespaces ; do date; sleep 1; echo ""; done

kubectl create -f manifests/
```