package main

import (
	templates "timoni.sh/myapp/templates"
)

timoni: {
	apiVersion: "v1alpha1"
	instance: templates.#Instance
	apply: app: [for obj in instance.objects {obj}]
}
