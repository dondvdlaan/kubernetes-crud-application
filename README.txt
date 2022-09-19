Kubernetes CRUD Application

An existing (dockerized) application has been prepared for cloud-native Kubernetes. The application
consits of REACT FE, Nodejs BE and a MySQL database. A Docker image for the server has been created 
and loaded at Docker Hub. Kubernetes yaml files have been used to create PODs, Services and one Ingress. 
Kubernetes Minikube has been applied for development.

Summary:
- REACT as FE at localhost:3000
- Server (Node.js) as BE at Minikube container port 8000
- MySQL as DB at Minikube container port 3306
- Load the Kubernetes files to Minikube, install initial database from jobStructureDB.sql
  and connect FE to the node via the Address of server.ingress in the .env file.

Installation:
- Load the Kubernetes directory: kubectl create -f kubernetes
- Load a Mysql customer:
kubectl run -it --rm --image=mysql:5.7 --restart=Never mysql-client -- mysql -h mysql-service -proot
- Initialise MySQL DB and create user:
mysql> create database job;
mysql> use job;
mysql> create user pato identified by 'duck';
mysql> grant all on job.* to pato;
- Load jobStructureDB.sql at mysql> prompt
- Create 1 test company:
mysql> insert into companies(compName, compType, compStatus) values('testC','testT','registered');
mysql> select * from companies;
- Copy Address field form server ingress:
kubectl get ingress
- Past the server ingress Address field in .env file of the REACT FE at directory fe:
REACT_APP_BACK_END_URL = http://x.y.z.a/
- Start REACT FE at fe directory:
npm start
- Navigate to menu option Companies and you shall see the test company displayed
