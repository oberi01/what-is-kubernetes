## Kubernetes Demo basierend auf Minikube

### Was ist Minikube
Minikube ist ein Open Source-Tool, mit dem Kubernetes auf einem lokalen Computer ausführbar ist. Es wird ein einzelner Node in einer VM auf einem lokalen Computer ausgeführt.
Die minikube VM verwendet Docker, um alle Container auszuführen

1) Installation
Die Installation ist auf Windows, MacOS und Linux möglich. 
Auf Windows wird als Virtualisierungs-Infrastruktur HyperV verwendet, in der Docker als Container Runtime läuft.

* Link https://storage.googleapis.com/kubernetes-release/release/v1.19.4/bin/windows/amd64/kubectl.exe
* Latest version: https://storage.googleapis.com/kubernetes-release/release/stable.txt

2) Minikube wird über das Kommando minikube gesteuert. Es bietet Kommandos zum starten, Stoppen und für das Kubernetes Dashboard

    minikube start | stop | dashboard

1) Nach dem Start von Minikube kann dieser (Mini) Kubernetes Cluster mit dem dashboard betrachtet und mit dem Kubernetes CLI kontrolliert werden:

    kubectl describe pods 

1) kubectl Einführung
 * Syntax https://kubernetes.io/docs/reference/kubectl/overview/
 * Basics https://kubernetes.io/docs/tutorials/hello-minikube/
 * Simple Deployment https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/
 * Deployment and Rollout https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
 * https://kubernetes.io/docs/concepts/services-networking/service/

### Tipp
Autoverfollständigung mit bash durch Kommando kc (Windows: git bash)

    kubectl.exe completion bash > ~/.bashkube   
    echo "source ~/.bashkube; alias kc=kubectl.exe; complete -F __start_kubectl kc" >> ~/.bashrc

## robotframework
k8s Steuerung und Informationsabruf ist über die offizielle k8s Python Client Library einfach möglich.
https://github.com/kubernetes-client/python

Es existiert eine Robotframework Library, die jedoch sich momentan jedoch im Pre-Alpha Status befindet
https://pypi.org/project/robotframework-kubelibrary

### Installation
 source ~/gitwork/venv/k8s/Scripts/activate
 pip install kubernetes requests robotframework-requests robotframework-kubelibrary

### Beispiel
 robot pods.robot
 