package templates

import (

)

#Instance: {
    objects: [
        {
            apiVersion: "v1",
            kind: "Pod",
            metadata: {
                name: "example-pod",
                labels: {
                    app: "example"
                }
            },
            spec: {
                containers: [
                    {
                        name: "example-container",
                        image: "nginx:1.14.2",
                        ports: [
                            {
                                containerPort: 80
                            }
                        ]
                    }
                ]
            }
        }
    ]
}
