package main

import (
	"tool/cli"
	"encoding/yaml"
)

_resources: timoni.apply.app
command: build: task: print: cli.Print & {
	text: yaml.MarshalStream(_resources)
}
