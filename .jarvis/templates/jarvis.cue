package templates

import (
    v1 "k8s.io/api/core/v1"
    appsv1 "k8s.io/api/apps/v1"
)


#Service0: v1.#Service & {
    apiVersion: "v1"
    kind: "Service"
    metadata: {
        name: "simple-service"
    }
    spec: {
        selector: {
            app: "MyApp"
        }
        ports: [{
            protocol: "TCP"
            port: 80
            targetPort: 8080
        }]
    }
}


#Deployment0: appsv1.#Deployment & {
    apiVersion: "apps/v1"
    kind: "Deployment"
    metadata: {
        name: "simple-deployment"
    }
    spec: {
        replicas: 3
        selector: {
            matchLabels: {
                app: "MyApp"
            }
        }
        template: {
            metadata: {
                labels: {
                    app: "MyApp"
                }
            }
            spec: {
                containers: [{
                    name: "myapp-container"
                    image: "nginx:1.14.2"
                    ports: [{
                        containerPort: 8080
                    }]
                }]
            }
        }
    }
}


#Instance: {
    objects: {
        obj0: #Service0,
        obj1: #Deployment0
    }
}

