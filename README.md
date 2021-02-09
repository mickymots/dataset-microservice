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


Performing a Rolling Update
Objectives
Perform a rolling update using kubectl.
Updating an application
Users expect applications to be available all the time and developers are expected to deploy new versions of them several times a day. In Kubernetes this is done with rolling updates. Rolling updates allow Deployments' update to take place with zero downtime by incrementally updating Pods instances with new ones. The new Pods will be scheduled on Nodes with available resources.

In the previous module we scaled our application to run multiple instances. This is a requirement for performing updates without affecting application availability. By default, the maximum number of Pods that can be unavailable during the update and the maximum number of new Pods that can be created, is one. Both options can be configured to either numbers or percentages (of Pods). In Kubernetes, updates are versioned and any Deployment update can be reverted to a previous (stable) version.

Summary:
Updating an app
Rolling updates allow Deployments' update to take place with zero downtime by incrementally updating Pods instances with new ones.


kubectl cluster-info

kubectl get nodes

kubectl get [deployent | pod] - list resources
kubectl describe - show detailed information about a resource
kubectl logs - print the logs from a container in a pod
kubectl exec - execute a command on a container in a pod


kubectl proxy 

http://localhost:8001/api/v1/namespaces/default/pods/dataset-microservice/proxy/user/amit/singh

