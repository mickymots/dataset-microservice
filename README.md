# dataset-microservice


To deploy  app on Kubernetes with the kubectl create deployment command. We need to provide the 

deployment name and app image location (include the full repository url for images hosted outside Docker hub).



Pods that are running inside Kubernetes are running on a private, isolated network. 
By default they are visible from other pods and services within the same kubernetes cluster, but not outside that network. 
When we use kubectl, we're interacting through an API endpoint to communicate with our application



kubectl apply -f kubernetes.yaml


spec:
  containers:
    - name: front-end
      image: nginx
      ports:
        - containerPort: 80
    - name: rss-reader
      image: nickchase/rss-php-nginx:v1
      ports:
        - containerPort: 88


—
apiVersion: v1
kind: Pod
metadata:
 name: rss-site
 labels:
   app: web
spec:
 containers:
   – name: front-end
     image: nginx
     ports:
       – containerPort: 80
   – name: rss-reader
     image: nickchase/rss-php-nginx:v1
     ports:
       – containerPort: 88



# Minikube

minikube service --url dataset-loadbalancer

kubectl cluster-info

kubectl get nodes

kubectl get [deployent | pod] - list resources
kubectl describe - show detailed information about a resource
kubectl logs - print the logs from a container in a pod
kubectl exec - execute a command on a container in a pod


kubectl proxy 

http://localhost:8001/api/v1/namespaces/default/pods/dataset-microservice/proxy/user/amit/singh

