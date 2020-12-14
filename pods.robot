*** Settings ***
Library           KubeLibrary
Resource          ./system_smoke_kw.robot

*** Variables ***
${KUBELET_VERSION}     v1.19.2
${NUM_NODES}           1
${NUM_WORKERS}         1

*** Test Cases ***
Kubernetes has correct version
    [Tags]    version    smoke
    Given kubernetes has "${NUM_NODES}" healthy nodes
    When getting kubelet version
    Then Kubernetes version is correct

Pods in kube-system are ok
    [Tags]    ok    smoke
    Given kubernetes API responds
    When getting all pods names in "kube-system"
    Then all pods in "kube-system" are running or succeeded

Traefik has enough replicas
    [Documentation]  Test if Ingress (Traefik) has enough replicas
    [Tags]    traefik    smoke
    Given kubernetes API responds
    When getting all pods names in "kube-system"
    Then "traefik*" has "${NUM_WORKERS}" replicas    