
#pos(eg(id0), {schema("AWSElasticBlockStoreVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "volumeID").
  input("properties", "volumeID", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "partition", "type", "integer").
  input("properties", "partition", "format", "int32").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id1), {schema("Affinity")}, {}, {
  input("type", "object").
  input("properties", "nodeAffinity", "type", "object").
  input("properties", "nodeAffinity", "allOf", 0, "$ref", "#/components/schemas/NodeAffinity").
  input("properties", "nodeAffinity", "nullable", true).
  input("properties", "podAffinity", "type", "object").
  input("properties", "podAffinity", "allOf", 0, "$ref", "#/components/schemas/PodAffinity").
  input("properties", "podAffinity", "nullable", true).
  input("properties", "podAntiAffinity", "type", "object").
  input("properties", "podAntiAffinity", "allOf", 0, "$ref", "#/components/schemas/PodAntiAffinity").
  input("properties", "podAntiAffinity", "nullable", true).
}).

#pos(eg(id2), {schema("AppArmorProfile")}, {}, {
  input("type", "object").
  input("required", 0, "type").
  input("properties", "type", "$ref", "#/components/schemas/AppArmorProfileType").
  input("properties", "localhostProfile", "type", "string").
  input("properties", "localhostProfile", "nullable", true).
}).

#pos(eg(id3), {schema("AppArmorProfileType")}, {}, {
  input("type", "string").
}).

#pos(eg(id4), {schema("AzureDiskVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "diskName").
  input("required", 1, "diskURI").
  input("properties", "diskName", "type", "string").
  input("properties", "diskURI", "type", "string").
  input("properties", "cachingMode", "type", "string").
  input("properties", "cachingMode", "nullable", true).
  input("properties", "fsType", "type", "string").
  input("properties", "fsType", "nullable", true).
  input("properties", "readOnly", "type", "boolean").
  input("properties", "readOnly", "nullable", true).
  input("properties", "kind", "type", "string").
  input("properties", "kind", "nullable", true).
}).

#pos(eg(id5), {schema("AzureFileVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "secretName").
  input("required", 1, "shareName").
  input("properties", "secretName", "type", "string").
  input("properties", "shareName", "type", "string").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id6), {schema("CSIVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "driver").
  input("properties", "driver", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "readOnly", "nullable", true).
  input("properties", "fsType", "type", "string").
  input("properties", "fsType", "nullable", true).
  input("properties", "volumeAttributes", "type", "object").
  input("properties", "volumeAttributes", "additionalProperties", "type", "string").
  input("properties", "nodePublishSecretRef", "type", "object").
  input("properties", "nodePublishSecretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "nodePublishSecretRef", "nullable", true).
}).

#pos(eg(id7), {schema("Capabilities")}, {}, {
  input("type", "object").
  input("properties", "add", "type", "array").
  input("properties", "add", "items", "$ref", "#/components/schemas/Capability").
  input("properties", "drop", "type", "array").
  input("properties", "drop", "items", "$ref", "#/components/schemas/Capability").
}).

#pos(eg(id8), {schema("Capability")}, {}, {
  input("type", "string").
}).

#pos(eg(id9), {schema("CephFSVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "monitors").
  input("properties", "monitors", "type", "array").
  input("properties", "monitors", "items", "type", "string").
  input("properties", "path", "type", "string").
  input("properties", "user", "type", "string").
  input("properties", "secretFile", "type", "string").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id10), {schema("CinderVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "volumeID").
  input("properties", "volumeID", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
}).

#pos(eg(id11), {schema("ClaimSource")}, {}, {
  input("type", "object").
  input("properties", "resourceClaimName", "type", "string").
  input("properties", "resourceClaimName", "nullable", true).
  input("properties", "resourceClaimTemplateName", "type", "string").
  input("properties", "resourceClaimTemplateName", "nullable", true).
}).

#pos(eg(id12), {schema("ClusterTrustBundleProjection")}, {}, {
  input("type", "object").
  input("required", 0, "path").
  input("properties", "name", "type", "string").
  input("properties", "name", "nullable", true).
  input("properties", "signerName", "type", "string").
  input("properties", "signerName", "nullable", true).
  input("properties", "labelSelector", "type", "object").
  input("properties", "labelSelector", "allOf", 0, "$ref", "#/components/schemas/LabelSelector").
  input("properties", "labelSelector", "nullable", true).
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("properties", "path", "type", "string").
}).

#pos(eg(id13), {schema("ConditionStatus")}, {}, {
  input("type", "string").
}).

#pos(eg(id14), {schema("ConfigMapEnvSource")}, {}, {
  input("type", "object").
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
}).

#pos(eg(id15), {schema("ConfigMapKeySelector")}, {}, {
  input("type", "object").
  input("properties", "key", "type", "string").
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("allOf", 1, "required", 0, "key").
}).

#pos(eg(id16), {schema("ConfigMapProjection")}, {}, {
  input("type", "object").
  input("properties", "items", "type", "array").
  input("properties", "items", "items", "$ref", "#/components/schemas/KeyToPath").
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
}).

#pos(eg(id17), {schema("ConfigMapVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "items", "type", "array").
  input("properties", "items", "items", "$ref", "#/components/schemas/KeyToPath").
  input("properties", "defaultMode", "type", "integer").
  input("properties", "defaultMode", "minimum", "int(\"-2147483648\")").
  input("properties", "defaultMode", "maximum", "int(\"2147483647\")").
  input("properties", "defaultMode", "nullable", true).
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
}).

#pos(eg(id18), {schema("Container")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
  input("properties", "image", "type", "string").
  input("properties", "command", "type", "array").
  input("properties", "command", "items", "type", "string").
  input("properties", "args", "type", "array").
  input("properties", "args", "items", "type", "string").
  input("properties", "workingDir", "type", "string").
  input("properties", "ports", "type", "array").
  input("properties", "ports", "items", "$ref", "#/components/schemas/ContainerPort").
  input("properties", "envFrom", "type", "array").
  input("properties", "envFrom", "items", "$ref", "#/components/schemas/EnvFromSource").
  input("properties", "env", "type", "array").
  input("properties", "env", "items", "$ref", "#/components/schemas/EnvVar").
  input("properties", "resources", "$ref", "#/components/schemas/ResourceRequirements").
  input("properties", "resizePolicy", "type", "array").
  input("properties", "resizePolicy", "items", "$ref", "#/components/schemas/ContainerResizePolicy").
  input("properties", "restartPolicy", "type", "string").
  input("properties", "restartPolicy", "nullable", true).
  input("properties", "volumeMounts", "type", "array").
  input("properties", "volumeMounts", "items", "$ref", "#/components/schemas/VolumeMount").
  input("properties", "volumeDevices", "type", "array").
  input("properties", "volumeDevices", "items", "$ref", "#/components/schemas/VolumeDevice").
  input("properties", "livenessProbe", "type", "object").
  input("properties", "livenessProbe", "allOf", 0, "$ref", "#/components/schemas/Probe").
  input("properties", "livenessProbe", "nullable", true).
  input("properties", "readinessProbe", "type", "object").
  input("properties", "readinessProbe", "allOf", 0, "$ref", "#/components/schemas/Probe").
  input("properties", "readinessProbe", "nullable", true).
  input("properties", "startupProbe", "type", "object").
  input("properties", "startupProbe", "allOf", 0, "$ref", "#/components/schemas/Probe").
  input("properties", "startupProbe", "nullable", true).
  input("properties", "lifecycle", "type", "object").
  input("properties", "lifecycle", "allOf", 0, "$ref", "#/components/schemas/Lifecycle").
  input("properties", "lifecycle", "nullable", true).
  input("properties", "terminationMessagePath", "type", "string").
  input("properties", "terminationMessagePolicy", "$ref", "#/components/schemas/TerminationMessagePolicy").
  input("properties", "imagePullPolicy", "$ref", "#/components/schemas/PullPolicy").
  input("properties", "securityContext", "type", "object").
  input("properties", "securityContext", "allOf", 0, "$ref", "#/components/schemas/SecurityContext").
  input("properties", "securityContext", "nullable", true).
  input("properties", "stdin", "type", "boolean").
  input("properties", "stdinOnce", "type", "boolean").
  input("properties", "tty", "type", "boolean").
}).

#pos(eg(id19), {schema("ContainerPort")}, {}, {
  input("type", "object").
  input("required", 0, "containerPort").
  input("properties", "name", "type", "string").
  input("properties", "hostPort", "type", "integer").
  input("properties", "hostPort", "format", "int32").
  input("properties", "containerPort", "type", "integer").
  input("properties", "containerPort", "format", "int32").
  input("properties", "protocol", "$ref", "#/components/schemas/Protocol").
  input("properties", "hostIP", "type", "string").
}).

#pos(eg(id20), {schema("ContainerResizePolicy")}, {}, {
  input("type", "object").
  input("required", 0, "resourceName").
  input("required", 1, "restartPolicy").
  input("properties", "resourceName", "$ref", "#/components/schemas/ResourceName").
  input("properties", "restartPolicy", "$ref", "#/components/schemas/ResourceResizeRestartPolicy").
}).

#pos(eg(id21), {schema("ContainerState")}, {}, {
  input("type", "object").
  input("properties", "waiting", "type", "object").
  input("properties", "waiting", "allOf", 0, "$ref", "#/components/schemas/ContainerStateWaiting").
  input("properties", "waiting", "nullable", true).
  input("properties", "running", "type", "object").
  input("properties", "running", "allOf", 0, "$ref", "#/components/schemas/ContainerStateRunning").
  input("properties", "running", "nullable", true).
  input("properties", "terminated", "type", "object").
  input("properties", "terminated", "allOf", 0, "$ref", "#/components/schemas/ContainerStateTerminated").
  input("properties", "terminated", "nullable", true).
}).

#pos(eg(id22), {schema("ContainerStateRunning")}, {}, {
  input("type", "object").
  input("properties", "startedAt", "$ref", "#/components/schemas/Time").
}).

#pos(eg(id23), {schema("ContainerStateTerminated")}, {}, {
  input("type", "object").
  input("required", 0, "exitCode").
  input("properties", "exitCode", "type", "integer").
  input("properties", "exitCode", "format", "int32").
  input("properties", "signal", "type", "integer").
  input("properties", "signal", "format", "int32").
  input("properties", "reason", "type", "string").
  input("properties", "message", "type", "string").
  input("properties", "startedAt", "$ref", "#/components/schemas/Time").
  input("properties", "finishedAt", "$ref", "#/components/schemas/Time").
  input("properties", "containerID", "type", "string").
}).

#pos(eg(id24), {schema("ContainerStateWaiting")}, {}, {
  input("type", "object").
  input("properties", "reason", "type", "string").
  input("properties", "message", "type", "string").
}).

#pos(eg(id25), {schema("ContainerStatus")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("required", 1, "ready").
  input("required", 2, "restartCount").
  input("required", 3, "image").
  input("required", 4, "imageID").
  input("properties", "name", "type", "string").
  input("properties", "state", "$ref", "#/components/schemas/ContainerState").
  input("properties", "lastState", "$ref", "#/components/schemas/ContainerState").
  input("properties", "ready", "type", "boolean").
  input("properties", "restartCount", "type", "integer").
  input("properties", "restartCount", "format", "int32").
  input("properties", "image", "type", "string").
  input("properties", "imageID", "type", "string").
  input("properties", "containerID", "type", "string").
  input("properties", "started", "type", "boolean").
  input("properties", "started", "nullable", true).
  input("properties", "allocatedResources", "$ref", "#/components/schemas/ResourceList").
  input("properties", "resources", "type", "object").
  input("properties", "resources", "allOf", 0, "$ref", "#/components/schemas/ResourceRequirements").
  input("properties", "resources", "nullable", true).
  input("properties", "volumeMounts", "type", "array").
  input("properties", "volumeMounts", "items", "$ref", "#/components/schemas/VolumeMountStatus").
}).

#pos(eg(id26), {schema("DNSPolicy")}, {}, {
  input("type", "string").
}).

#pos(eg(id27), {schema("DownwardAPIProjection")}, {}, {
  input("type", "object").
  input("properties", "items", "type", "array").
  input("properties", "items", "items", "$ref", "#/components/schemas/DownwardAPIVolumeFile").
}).

#pos(eg(id28), {schema("DownwardAPIVolumeFile")}, {}, {
  input("type", "object").
  input("required", 0, "path").
  input("properties", "path", "type", "string").
  input("properties", "fieldRef", "type", "object").
  input("properties", "fieldRef", "allOf", 0, "$ref", "#/components/schemas/ObjectFieldSelector").
  input("properties", "fieldRef", "nullable", true).
  input("properties", "resourceFieldRef", "type", "object").
  input("properties", "resourceFieldRef", "allOf", 0, "$ref", "#/components/schemas/ResourceFieldSelector").
  input("properties", "resourceFieldRef", "nullable", true).
  input("properties", "mode", "type", "integer").
  input("properties", "mode", "minimum", "int(\"-2147483648\")").
  input("properties", "mode", "maximum", "int(\"2147483647\")").
  input("properties", "mode", "nullable", true).
}).

#pos(eg(id29), {schema("DownwardAPIVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "items", "type", "array").
  input("properties", "items", "items", "$ref", "#/components/schemas/DownwardAPIVolumeFile").
  input("properties", "defaultMode", "type", "integer").
  input("properties", "defaultMode", "minimum", "int(\"-2147483648\")").
  input("properties", "defaultMode", "maximum", "int(\"2147483647\")").
  input("properties", "defaultMode", "nullable", true).
}).

#pos(eg(id30), {schema("EmptyDirVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "medium", "$ref", "#/components/schemas/StorageMedium").
  input("properties", "sizeLimit", "allOf", 0, "$ref", "#/components/schemas/Quantity").
  input("properties", "sizeLimit", "nullable", true).
}).

#pos(eg(id31), {schema("EnvFromSource")}, {}, {
  input("type", "object").
  input("properties", "prefix", "type", "string").
  input("properties", "configMapRef", "type", "object").
  input("properties", "configMapRef", "allOf", 0, "$ref", "#/components/schemas/ConfigMapEnvSource").
  input("properties", "configMapRef", "nullable", true).
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/SecretEnvSource").
  input("properties", "secretRef", "nullable", true).
}).

#pos(eg(id32), {schema("EnvVar")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
  input("properties", "value", "type", "string").
  input("properties", "valueFrom", "type", "object").
  input("properties", "valueFrom", "allOf", 0, "$ref", "#/components/schemas/EnvVarSource").
  input("properties", "valueFrom", "nullable", true).
}).

#pos(eg(id33), {schema("EnvVarSource")}, {}, {
  input("type", "object").
  input("properties", "fieldRef", "type", "object").
  input("properties", "fieldRef", "allOf", 0, "$ref", "#/components/schemas/ObjectFieldSelector").
  input("properties", "fieldRef", "nullable", true).
  input("properties", "resourceFieldRef", "type", "object").
  input("properties", "resourceFieldRef", "allOf", 0, "$ref", "#/components/schemas/ResourceFieldSelector").
  input("properties", "resourceFieldRef", "nullable", true).
  input("properties", "configMapKeyRef", "type", "object").
  input("properties", "configMapKeyRef", "allOf", 0, "$ref", "#/components/schemas/ConfigMapKeySelector").
  input("properties", "configMapKeyRef", "nullable", true).
  input("properties", "secretKeyRef", "type", "object").
  input("properties", "secretKeyRef", "allOf", 0, "$ref", "#/components/schemas/SecretKeySelector").
  input("properties", "secretKeyRef", "nullable", true).
}).

#pos(eg(id34), {schema("EphemeralContainer")}, {}, {
  input("type", "object").
  input("properties", "targetContainerName", "type", "string").
  input("allOf", 0, "$ref", "#/components/schemas/EphemeralContainerCommon").
}).

#pos(eg(id35), {schema("EphemeralContainerCommon")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
  input("properties", "image", "type", "string").
  input("properties", "command", "type", "array").
  input("properties", "command", "items", "type", "string").
  input("properties", "args", "type", "array").
  input("properties", "args", "items", "type", "string").
  input("properties", "workingDir", "type", "string").
  input("properties", "ports", "type", "array").
  input("properties", "ports", "items", "$ref", "#/components/schemas/ContainerPort").
  input("properties", "envFrom", "type", "array").
  input("properties", "envFrom", "items", "$ref", "#/components/schemas/EnvFromSource").
  input("properties", "env", "type", "array").
  input("properties", "env", "items", "$ref", "#/components/schemas/EnvVar").
  input("properties", "resources", "$ref", "#/components/schemas/ResourceRequirements").
  input("properties", "resizePolicy", "type", "array").
  input("properties", "resizePolicy", "items", "$ref", "#/components/schemas/ContainerResizePolicy").
  input("properties", "restartPolicy", "type", "string").
  input("properties", "restartPolicy", "nullable", true).
  input("properties", "volumeMounts", "type", "array").
  input("properties", "volumeMounts", "items", "$ref", "#/components/schemas/VolumeMount").
  input("properties", "volumeDevices", "type", "array").
  input("properties", "volumeDevices", "items", "$ref", "#/components/schemas/VolumeDevice").
  input("properties", "livenessProbe", "type", "object").
  input("properties", "livenessProbe", "allOf", 0, "$ref", "#/components/schemas/Probe").
  input("properties", "livenessProbe", "nullable", true).
  input("properties", "readinessProbe", "type", "object").
  input("properties", "readinessProbe", "allOf", 0, "$ref", "#/components/schemas/Probe").
  input("properties", "readinessProbe", "nullable", true).
  input("properties", "startupProbe", "type", "object").
  input("properties", "startupProbe", "allOf", 0, "$ref", "#/components/schemas/Probe").
  input("properties", "startupProbe", "nullable", true).
  input("properties", "lifecycle", "type", "object").
  input("properties", "lifecycle", "allOf", 0, "$ref", "#/components/schemas/Lifecycle").
  input("properties", "lifecycle", "nullable", true).
  input("properties", "terminationMessagePath", "type", "string").
  input("properties", "terminationMessagePolicy", "$ref", "#/components/schemas/TerminationMessagePolicy").
  input("properties", "imagePullPolicy", "$ref", "#/components/schemas/PullPolicy").
  input("properties", "securityContext", "type", "object").
  input("properties", "securityContext", "allOf", 0, "$ref", "#/components/schemas/SecurityContext").
  input("properties", "securityContext", "nullable", true).
  input("properties", "stdin", "type", "boolean").
  input("properties", "stdinOnce", "type", "boolean").
  input("properties", "tty", "type", "boolean").
}).

#pos(eg(id36), {schema("EphemeralVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "volumeClaimTemplate", "type", "object").
  input("properties", "volumeClaimTemplate", "allOf", 0, "$ref", "#/components/schemas/PersistentVolumeClaimTemplate").
  input("properties", "volumeClaimTemplate", "nullable", true).
}).

#pos(eg(id37), {schema("ExecAction")}, {}, {
  input("type", "object").
  input("properties", "command", "type", "array").
  input("properties", "command", "items", "type", "string").
}).

#pos(eg(id38), {schema("FCVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "targetWWNs", "type", "array").
  input("properties", "targetWWNs", "items", "type", "string").
  input("properties", "lun", "type", "integer").
  input("properties", "lun", "minimum", "int(\"-2147483648\")").
  input("properties", "lun", "maximum", "int(\"2147483647\")").
  input("properties", "lun", "nullable", true).
  input("properties", "fsType", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "wwids", "type", "array").
  input("properties", "wwids", "items", "type", "string").
}).

#pos(eg(id39), {schema("FieldsV1")}, {}, {

}).

#pos(eg(id40), {schema("FlexVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "driver").
  input("properties", "driver", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
  input("properties", "readOnly", "type", "boolean").
  input("properties", "options", "type", "object").
  input("properties", "options", "additionalProperties", "type", "string").
}).

#pos(eg(id41), {schema("FlockerVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "datasetName", "type", "string").
  input("properties", "datasetUUID", "type", "string").
}).

#pos(eg(id42), {schema("GCEPersistentDiskVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "pdName").
  input("properties", "pdName", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "partition", "type", "integer").
  input("properties", "partition", "format", "int32").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id43), {schema("GRPCAction")}, {}, {
  input("type", "object").
  input("required", 0, "port").
  input("properties", "port", "type", "integer").
  input("properties", "port", "format", "int32").
  input("properties", "service", "type", "string").
  input("properties", "service", "nullable", true).
}).

#pos(eg(id44), {schema("GitRepoVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "repository").
  input("properties", "repository", "type", "string").
  input("properties", "revision", "type", "string").
  input("properties", "directory", "type", "string").
}).

#pos(eg(id45), {schema("GlusterfsVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "endpoints").
  input("required", 1, "path").
  input("properties", "endpoints", "type", "string").
  input("properties", "path", "type", "string").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id46), {schema("HTTPGetAction")}, {}, {
  input("type", "object").
  input("required", 0, "port").
  input("properties", "path", "type", "string").
  input("properties", "port", "$ref", "#/components/schemas/IntOrString").
  input("properties", "host", "type", "string").
  input("properties", "scheme", "$ref", "#/components/schemas/URIScheme").
  input("properties", "httpHeaders", "type", "array").
  input("properties", "httpHeaders", "items", "$ref", "#/components/schemas/HTTPHeader").
}).

#pos(eg(id47), {schema("HTTPHeader")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("required", 1, "value").
  input("properties", "name", "type", "string").
  input("properties", "value", "type", "string").
}).

#pos(eg(id48), {schema("HostAlias")}, {}, {
  input("type", "object").
  input("properties", "ip", "type", "string").
  input("properties", "hostnames", "type", "array").
  input("properties", "hostnames", "items", "type", "string").
}).

#pos(eg(id49), {schema("HostIP")}, {}, {
  input("type", "object").
  input("properties", "ip", "type", "string").
}).

#pos(eg(id50), {schema("HostPathVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "path").
  input("properties", "path", "type", "string").
  input("properties", "type", "type", "string").
  input("properties", "type", "nullable", true).
}).

#pos(eg(id51), {schema("ISCSIVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "targetPortal").
  input("required", 1, "iqn").
  input("required", 2, "lun").
  input("properties", "targetPortal", "type", "string").
  input("properties", "iqn", "type", "string").
  input("properties", "lun", "type", "integer").
  input("properties", "lun", "format", "int32").
  input("properties", "iscsiInterface", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "portals", "type", "array").
  input("properties", "portals", "items", "type", "string").
  input("properties", "chapAuthDiscovery", "type", "boolean").
  input("properties", "chapAuthSession", "type", "boolean").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
  input("properties", "initiatorName", "type", "string").
  input("properties", "initiatorName", "nullable", true).
}).

#pos(eg(id52), {schema("Instance")}, {}, {
  input("type", "object").
  input("required", 0, "objects").
  input("properties", "objects", "type", "object").
  input("properties", "objects", "required", 0, "obj0").
  input("properties", "objects", "properties", "obj0", "$ref", "#/components/schemas/Pod0").
}).

#pos(eg(id53), {schema("IntOrString")}, {}, {

}).

#pos(eg(id54), {schema("KeyToPath")}, {}, {
  input("type", "object").
  input("required", 0, "key").
  input("required", 1, "path").
  input("properties", "key", "type", "string").
  input("properties", "path", "type", "string").
  input("properties", "mode", "type", "integer").
  input("properties", "mode", "minimum", "int(\"-2147483648\")").
  input("properties", "mode", "maximum", "int(\"2147483647\")").
  input("properties", "mode", "nullable", true).
}).

#pos(eg(id55), {schema("LabelSelector")}, {}, {
  input("type", "object").
  input("properties", "matchLabels", "type", "object").
  input("properties", "matchLabels", "additionalProperties", "type", "string").
  input("properties", "matchExpressions", "type", "array").
  input("properties", "matchExpressions", "items", "$ref", "#/components/schemas/LabelSelectorRequirement").
}).

#pos(eg(id56), {schema("LabelSelectorOperator")}, {}, {
  input("type", "string").
}).

#pos(eg(id57), {schema("LabelSelectorRequirement")}, {}, {
  input("type", "object").
  input("required", 0, "key").
  input("required", 1, "operator").
  input("properties", "key", "type", "string").
  input("properties", "operator", "$ref", "#/components/schemas/LabelSelectorOperator").
  input("properties", "values", "type", "array").
  input("properties", "values", "items", "type", "string").
}).

#pos(eg(id58), {schema("Lifecycle")}, {}, {
  input("type", "object").
  input("properties", "postStart", "type", "object").
  input("properties", "postStart", "allOf", 0, "$ref", "#/components/schemas/LifecycleHandler").
  input("properties", "postStart", "nullable", true).
  input("properties", "preStop", "type", "object").
  input("properties", "preStop", "allOf", 0, "$ref", "#/components/schemas/LifecycleHandler").
  input("properties", "preStop", "nullable", true).
}).

#pos(eg(id59), {schema("LifecycleHandler")}, {}, {
  input("type", "object").
  input("properties", "exec", "type", "object").
  input("properties", "exec", "allOf", 0, "$ref", "#/components/schemas/ExecAction").
  input("properties", "exec", "nullable", true).
  input("properties", "httpGet", "type", "object").
  input("properties", "httpGet", "allOf", 0, "$ref", "#/components/schemas/HTTPGetAction").
  input("properties", "httpGet", "nullable", true).
  input("properties", "tcpSocket", "type", "object").
  input("properties", "tcpSocket", "allOf", 0, "$ref", "#/components/schemas/TCPSocketAction").
  input("properties", "tcpSocket", "nullable", true).
  input("properties", "sleep", "type", "object").
  input("properties", "sleep", "allOf", 0, "$ref", "#/components/schemas/SleepAction").
  input("properties", "sleep", "nullable", true).
}).

#pos(eg(id60), {schema("LocalObjectReference")}, {}, {
  input("type", "object").
  input("properties", "name", "type", "string").
}).

#pos(eg(id61), {schema("ManagedFieldsEntry")}, {}, {
  input("type", "object").
  input("properties", "manager", "type", "string").
  input("properties", "operation", "$ref", "#/components/schemas/ManagedFieldsOperationType").
  input("properties", "apiVersion", "type", "string").
  input("properties", "time", "allOf", 0, "$ref", "#/components/schemas/Time").
  input("properties", "time", "nullable", true).
  input("properties", "fieldsType", "type", "string").
  input("properties", "fieldsV1", "allOf", 0, "$ref", "#/components/schemas/FieldsV1").
  input("properties", "fieldsV1", "nullable", true).
  input("properties", "subresource", "type", "string").
}).

#pos(eg(id62), {schema("ManagedFieldsOperationType")}, {}, {
  input("type", "string").
}).

#pos(eg(id63), {schema("NFSVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "server").
  input("required", 1, "path").
  input("properties", "server", "type", "string").
  input("properties", "path", "type", "string").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id64), {schema("NodeAffinity")}, {}, {
  input("type", "object").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "type", "object").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "allOf", 0, "$ref", "#/components/schemas/NodeSelector").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "nullable", true).
  input("properties", "preferredDuringSchedulingIgnoredDuringExecution", "type", "array").
  input("properties", "preferredDuringSchedulingIgnoredDuringExecution", "items", "$ref", "#/components/schemas/PreferredSchedulingTerm").
}).

#pos(eg(id65), {schema("NodeSelector")}, {}, {
  input("type", "object").
  input("required", 0, "nodeSelectorTerms").
  input("properties", "nodeSelectorTerms", "type", "array").
  input("properties", "nodeSelectorTerms", "items", "$ref", "#/components/schemas/NodeSelectorTerm").
}).

#pos(eg(id66), {schema("NodeSelectorOperator")}, {}, {
  input("type", "string").
}).

#pos(eg(id67), {schema("NodeSelectorRequirement")}, {}, {
  input("type", "object").
  input("required", 0, "key").
  input("required", 1, "operator").
  input("properties", "key", "type", "string").
  input("properties", "operator", "$ref", "#/components/schemas/NodeSelectorOperator").
  input("properties", "values", "type", "array").
  input("properties", "values", "items", "type", "string").
}).

#pos(eg(id68), {schema("NodeSelectorTerm")}, {}, {
  input("type", "object").
  input("properties", "matchExpressions", "type", "array").
  input("properties", "matchExpressions", "items", "$ref", "#/components/schemas/NodeSelectorRequirement").
  input("properties", "matchFields", "type", "array").
  input("properties", "matchFields", "items", "$ref", "#/components/schemas/NodeSelectorRequirement").
}).

#pos(eg(id69), {schema("OSName")}, {}, {
  input("type", "string").
}).

#pos(eg(id70), {schema("ObjectFieldSelector")}, {}, {
  input("type", "object").
  input("required", 0, "fieldPath").
  input("properties", "apiVersion", "type", "string").
  input("properties", "fieldPath", "type", "string").
}).

#pos(eg(id71), {schema("ObjectMeta")}, {}, {
  input("type", "object").
  input("properties", "name", "type", "string").
  input("properties", "generateName", "type", "string").
  input("properties", "namespace", "type", "string").
  input("properties", "selfLink", "type", "string").
  input("properties", "uid", "$ref", "#/components/schemas/UID").
  input("properties", "resourceVersion", "type", "string").
  input("properties", "generation", "type", "integer").
  input("properties", "generation", "format", "int64").
  input("properties", "creationTimestamp", "$ref", "#/components/schemas/Time").
  input("properties", "deletionTimestamp", "allOf", 0, "$ref", "#/components/schemas/Time").
  input("properties", "deletionTimestamp", "nullable", true).
  input("properties", "deletionGracePeriodSeconds", "type", "integer").
  input("properties", "deletionGracePeriodSeconds", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "deletionGracePeriodSeconds", "maximum", "int(\"9223372036854775807\")").
  input("properties", "deletionGracePeriodSeconds", "nullable", true).
  input("properties", "labels", "type", "object").
  input("properties", "labels", "additionalProperties", "type", "string").
  input("properties", "annotations", "type", "object").
  input("properties", "annotations", "additionalProperties", "type", "string").
  input("properties", "ownerReferences", "type", "array").
  input("properties", "ownerReferences", "items", "$ref", "#/components/schemas/OwnerReference").
  input("properties", "finalizers", "type", "array").
  input("properties", "finalizers", "items", "type", "string").
  input("properties", "managedFields", "type", "array").
  input("properties", "managedFields", "items", "$ref", "#/components/schemas/ManagedFieldsEntry").
}).

#pos(eg(id72), {schema("OwnerReference")}, {}, {
  input("type", "object").
  input("required", 0, "apiVersion").
  input("required", 1, "kind").
  input("required", 2, "name").
  input("required", 3, "uid").
  input("properties", "apiVersion", "type", "string").
  input("properties", "kind", "type", "string").
  input("properties", "name", "type", "string").
  input("properties", "uid", "$ref", "#/components/schemas/UID").
  input("properties", "controller", "type", "boolean").
  input("properties", "controller", "nullable", true).
  input("properties", "blockOwnerDeletion", "type", "boolean").
  input("properties", "blockOwnerDeletion", "nullable", true).
}).

#pos(eg(id73), {schema("PersistentVolumeAccessMode")}, {}, {
  input("type", "string").
}).

#pos(eg(id74), {schema("PersistentVolumeClaimSpec")}, {}, {
  input("type", "object").
  input("properties", "accessModes", "type", "array").
  input("properties", "accessModes", "items", "$ref", "#/components/schemas/PersistentVolumeAccessMode").
  input("properties", "selector", "type", "object").
  input("properties", "selector", "allOf", 0, "$ref", "#/components/schemas/LabelSelector").
  input("properties", "selector", "nullable", true).
  input("properties", "resources", "$ref", "#/components/schemas/VolumeResourceRequirements").
  input("properties", "volumeName", "type", "string").
  input("properties", "storageClassName", "type", "string").
  input("properties", "storageClassName", "nullable", true).
  input("properties", "volumeMode", "type", "string").
  input("properties", "volumeMode", "nullable", true).
  input("properties", "dataSource", "type", "object").
  input("properties", "dataSource", "allOf", 0, "$ref", "#/components/schemas/TypedLocalObjectReference").
  input("properties", "dataSource", "nullable", true).
  input("properties", "dataSourceRef", "type", "object").
  input("properties", "dataSourceRef", "allOf", 0, "$ref", "#/components/schemas/TypedObjectReference").
  input("properties", "dataSourceRef", "nullable", true).
  input("properties", "volumeAttributesClassName", "type", "string").
  input("properties", "volumeAttributesClassName", "nullable", true).
}).

#pos(eg(id75), {schema("PersistentVolumeClaimTemplate")}, {}, {
  input("type", "object").
  input("required", 0, "spec").
  input("properties", "metadata", "$ref", "#/components/schemas/ObjectMeta").
  input("properties", "spec", "$ref", "#/components/schemas/PersistentVolumeClaimSpec").
}).

#pos(eg(id76), {schema("PersistentVolumeClaimVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "claimName").
  input("properties", "claimName", "type", "string").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id77), {schema("PhotonPersistentDiskVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "pdID").
  input("properties", "pdID", "type", "string").
  input("properties", "fsType", "type", "string").
}).

#pos(eg(id78), {schema("Pod")}, {}, {
  input("type", "object").
  input("properties", "metadata", "$ref", "#/components/schemas/ObjectMeta").
  input("properties", "spec", "$ref", "#/components/schemas/PodSpec").
  input("properties", "status", "$ref", "#/components/schemas/PodStatus").
  input("allOf", 0, "$ref", "#/components/schemas/TypeMeta").
}).

#pos(eg(id79), {schema("Pod0")}, {}, {
  input("type", "object").
  input("properties", "apiVersion", "type", "string").
  input("properties", "apiVersion", "enum", 0, "v1").
  input("properties", "kind", "type", "string").
  input("properties", "kind", "enum", 0, "Pod").
  input("properties", "metadata", "type", "object").
  input("properties", "metadata", "required", 0, "name").
  input("properties", "metadata", "properties", "name", "type", "string").
  input("properties", "metadata", "properties", "name", "enum", 0, "pulsar-admin").
  input("properties", "spec", "type", "object").
  input("properties", "spec", "required", 0, "containers").
  input("properties", "spec", "properties", "containers", "type", "array").
  input("properties", "spec", "properties", "containers", "items", 0, "type", "object").
  input("properties", "spec", "properties", "containers", "items", 0, "required", 0, "name").
  input("properties", "spec", "properties", "containers", "items", 0, "required", 1, "image").
  input("properties", "spec", "properties", "containers", "items", 0, "required", 2, "ports").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "name", "type", "string").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "name", "enum", 0, "pulsar-admin").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "image", "type", "string").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "image", "enum", 0, "apachepulsar/pulsar:latest").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "type", "array").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "type", "object").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "required", 0, "containerPort").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "type", "integer").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "enum", 0, "int(\"8080\")").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "default", 0, "containerPort", "int(\"8080\")").
  input("properties", "spec", "properties", "containers", "default", 0, "name", "pulsar-admin").
  input("properties", "spec", "properties", "containers", "default", 0, "image", "apachepulsar/pulsar:latest").
  input("properties", "spec", "properties", "containers", "default", 0, "ports", 0, "containerPort", "int(\"8080\")").
  input("allOf", 0, "$ref", "#/components/schemas/Pod").
  input("allOf", 1, "required", 0, "apiVersion").
  input("allOf", 1, "required", 1, "kind").
  input("allOf", 1, "required", 2, "metadata").
  input("allOf", 1, "required", 3, "spec").
}).

#pos(eg(id80), {schema("PodAffinity")}, {}, {
  input("type", "object").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "type", "array").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "items", "$ref", "#/components/schemas/PodAffinityTerm").
  input("properties", "preferredDuringSchedulingIgnoredDuringExecution", "type", "array").
  input("properties", "preferredDuringSchedulingIgnoredDuringExecution", "items", "$ref", "#/components/schemas/WeightedPodAffinityTerm").
}).

#pos(eg(id81), {schema("PodAffinityTerm")}, {}, {
  input("type", "object").
  input("required", 0, "topologyKey").
  input("properties", "labelSelector", "type", "object").
  input("properties", "labelSelector", "allOf", 0, "$ref", "#/components/schemas/LabelSelector").
  input("properties", "labelSelector", "nullable", true).
  input("properties", "namespaces", "type", "array").
  input("properties", "namespaces", "items", "type", "string").
  input("properties", "topologyKey", "type", "string").
  input("properties", "namespaceSelector", "type", "object").
  input("properties", "namespaceSelector", "allOf", 0, "$ref", "#/components/schemas/LabelSelector").
  input("properties", "namespaceSelector", "nullable", true).
  input("properties", "matchLabelKeys", "type", "array").
  input("properties", "matchLabelKeys", "items", "type", "string").
  input("properties", "mismatchLabelKeys", "type", "array").
  input("properties", "mismatchLabelKeys", "items", "type", "string").
}).

#pos(eg(id82), {schema("PodAntiAffinity")}, {}, {
  input("type", "object").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "type", "array").
  input("properties", "requiredDuringSchedulingIgnoredDuringExecution", "items", "$ref", "#/components/schemas/PodAffinityTerm").
  input("properties", "preferredDuringSchedulingIgnoredDuringExecution", "type", "array").
  input("properties", "preferredDuringSchedulingIgnoredDuringExecution", "items", "$ref", "#/components/schemas/WeightedPodAffinityTerm").
}).

#pos(eg(id83), {schema("PodCondition")}, {}, {
  input("type", "object").
  input("required", 0, "type").
  input("required", 1, "status").
  input("properties", "type", "$ref", "#/components/schemas/PodConditionType").
  input("properties", "status", "$ref", "#/components/schemas/ConditionStatus").
  input("properties", "lastProbeTime", "$ref", "#/components/schemas/Time").
  input("properties", "lastTransitionTime", "$ref", "#/components/schemas/Time").
  input("properties", "reason", "type", "string").
  input("properties", "message", "type", "string").
}).

#pos(eg(id84), {schema("PodConditionType")}, {}, {
  input("type", "string").
}).

#pos(eg(id85), {schema("PodDNSConfig")}, {}, {
  input("type", "object").
  input("properties", "nameservers", "type", "array").
  input("properties", "nameservers", "items", "type", "string").
  input("properties", "searches", "type", "array").
  input("properties", "searches", "items", "type", "string").
  input("properties", "options", "type", "array").
  input("properties", "options", "items", "$ref", "#/components/schemas/PodDNSConfigOption").
}).

#pos(eg(id86), {schema("PodDNSConfigOption")}, {}, {
  input("type", "object").
  input("properties", "name", "type", "string").
  input("properties", "value", "type", "string").
  input("properties", "value", "nullable", true).
}).

#pos(eg(id87), {schema("PodIP")}, {}, {
  input("type", "object").
  input("properties", "ip", "type", "string").
}).

#pos(eg(id88), {schema("PodOS")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "$ref", "#/components/schemas/OSName").
}).

#pos(eg(id89), {schema("PodPhase")}, {}, {
  input("type", "string").
}).

#pos(eg(id90), {schema("PodQOSClass")}, {}, {
  input("type", "string").
}).

#pos(eg(id91), {schema("PodReadinessGate")}, {}, {
  input("type", "object").
  input("required", 0, "conditionType").
  input("properties", "conditionType", "$ref", "#/components/schemas/PodConditionType").
}).

#pos(eg(id92), {schema("PodResizeStatus")}, {}, {
  input("type", "string").
}).

#pos(eg(id93), {schema("PodResourceClaim")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
  input("properties", "source", "$ref", "#/components/schemas/ClaimSource").
}).

#pos(eg(id94), {schema("PodResourceClaimStatus")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
  input("properties", "resourceClaimName", "type", "string").
  input("properties", "resourceClaimName", "nullable", true).
}).

#pos(eg(id95), {schema("PodSchedulingGate")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
}).

#pos(eg(id96), {schema("PodSecurityContext")}, {}, {
  input("type", "object").
  input("properties", "seLinuxOptions", "type", "object").
  input("properties", "seLinuxOptions", "allOf", 0, "$ref", "#/components/schemas/SELinuxOptions").
  input("properties", "seLinuxOptions", "nullable", true).
  input("properties", "windowsOptions", "type", "object").
  input("properties", "windowsOptions", "allOf", 0, "$ref", "#/components/schemas/WindowsSecurityContextOptions").
  input("properties", "windowsOptions", "nullable", true).
  input("properties", "runAsUser", "type", "integer").
  input("properties", "runAsUser", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "runAsUser", "maximum", "int(\"9223372036854775807\")").
  input("properties", "runAsUser", "nullable", true).
  input("properties", "runAsGroup", "type", "integer").
  input("properties", "runAsGroup", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "runAsGroup", "maximum", "int(\"9223372036854775807\")").
  input("properties", "runAsGroup", "nullable", true).
  input("properties", "runAsNonRoot", "type", "boolean").
  input("properties", "runAsNonRoot", "nullable", true).
  input("properties", "supplementalGroups", "type", "array").
  input("properties", "supplementalGroups", "items", "type", "integer").
  input("properties", "supplementalGroups", "items", "format", "int64").
  input("properties", "fsGroup", "type", "integer").
  input("properties", "fsGroup", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "fsGroup", "maximum", "int(\"9223372036854775807\")").
  input("properties", "fsGroup", "nullable", true).
  input("properties", "sysctls", "type", "array").
  input("properties", "sysctls", "items", "$ref", "#/components/schemas/Sysctl").
  input("properties", "fsGroupChangePolicy", "type", "string").
  input("properties", "fsGroupChangePolicy", "nullable", true).
  input("properties", "seccompProfile", "type", "object").
  input("properties", "seccompProfile", "allOf", 0, "$ref", "#/components/schemas/SeccompProfile").
  input("properties", "seccompProfile", "nullable", true).
  input("properties", "appArmorProfile", "type", "object").
  input("properties", "appArmorProfile", "allOf", 0, "$ref", "#/components/schemas/AppArmorProfile").
  input("properties", "appArmorProfile", "nullable", true).
}).

#pos(eg(id97), {schema("PodSpec")}, {}, {
  input("type", "object").
  input("required", 0, "containers").
  input("properties", "volumes", "type", "array").
  input("properties", "volumes", "items", "$ref", "#/components/schemas/Volume").
  input("properties", "initContainers", "type", "array").
  input("properties", "initContainers", "items", "$ref", "#/components/schemas/Container").
  input("properties", "containers", "type", "array").
  input("properties", "containers", "items", "$ref", "#/components/schemas/Container").
  input("properties", "ephemeralContainers", "type", "array").
  input("properties", "ephemeralContainers", "items", "$ref", "#/components/schemas/EphemeralContainer").
  input("properties", "restartPolicy", "$ref", "#/components/schemas/RestartPolicy").
  input("properties", "terminationGracePeriodSeconds", "type", "integer").
  input("properties", "terminationGracePeriodSeconds", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "terminationGracePeriodSeconds", "maximum", "int(\"9223372036854775807\")").
  input("properties", "terminationGracePeriodSeconds", "nullable", true).
  input("properties", "activeDeadlineSeconds", "type", "integer").
  input("properties", "activeDeadlineSeconds", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "activeDeadlineSeconds", "maximum", "int(\"9223372036854775807\")").
  input("properties", "activeDeadlineSeconds", "nullable", true).
  input("properties", "dnsPolicy", "$ref", "#/components/schemas/DNSPolicy").
  input("properties", "nodeSelector", "type", "object").
  input("properties", "nodeSelector", "additionalProperties", "type", "string").
  input("properties", "serviceAccountName", "type", "string").
  input("properties", "serviceAccount", "type", "string").
  input("properties", "automountServiceAccountToken", "type", "boolean").
  input("properties", "automountServiceAccountToken", "nullable", true).
  input("properties", "nodeName", "type", "string").
  input("properties", "hostNetwork", "type", "boolean").
  input("properties", "hostPID", "type", "boolean").
  input("properties", "hostIPC", "type", "boolean").
  input("properties", "shareProcessNamespace", "type", "boolean").
  input("properties", "shareProcessNamespace", "nullable", true).
  input("properties", "securityContext", "type", "object").
  input("properties", "securityContext", "allOf", 0, "$ref", "#/components/schemas/PodSecurityContext").
  input("properties", "securityContext", "nullable", true).
  input("properties", "imagePullSecrets", "type", "array").
  input("properties", "imagePullSecrets", "items", "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "hostname", "type", "string").
  input("properties", "subdomain", "type", "string").
  input("properties", "affinity", "type", "object").
  input("properties", "affinity", "allOf", 0, "$ref", "#/components/schemas/Affinity").
  input("properties", "affinity", "nullable", true).
  input("properties", "schedulerName", "type", "string").
  input("properties", "tolerations", "type", "array").
  input("properties", "tolerations", "items", "$ref", "#/components/schemas/Toleration").
  input("properties", "hostAliases", "type", "array").
  input("properties", "hostAliases", "items", "$ref", "#/components/schemas/HostAlias").
  input("properties", "priorityClassName", "type", "string").
  input("properties", "priority", "type", "integer").
  input("properties", "priority", "minimum", "int(\"-2147483648\")").
  input("properties", "priority", "maximum", "int(\"2147483647\")").
  input("properties", "priority", "nullable", true).
  input("properties", "dnsConfig", "type", "object").
  input("properties", "dnsConfig", "allOf", 0, "$ref", "#/components/schemas/PodDNSConfig").
  input("properties", "dnsConfig", "nullable", true).
  input("properties", "readinessGates", "type", "array").
  input("properties", "readinessGates", "items", "$ref", "#/components/schemas/PodReadinessGate").
  input("properties", "runtimeClassName", "type", "string").
  input("properties", "runtimeClassName", "nullable", true).
  input("properties", "enableServiceLinks", "type", "boolean").
  input("properties", "enableServiceLinks", "nullable", true).
  input("properties", "preemptionPolicy", "type", "string").
  input("properties", "preemptionPolicy", "nullable", true).
  input("properties", "overhead", "$ref", "#/components/schemas/ResourceList").
  input("properties", "topologySpreadConstraints", "type", "array").
  input("properties", "topologySpreadConstraints", "items", "$ref", "#/components/schemas/TopologySpreadConstraint").
  input("properties", "setHostnameAsFQDN", "type", "boolean").
  input("properties", "setHostnameAsFQDN", "nullable", true).
  input("properties", "os", "type", "object").
  input("properties", "os", "allOf", 0, "$ref", "#/components/schemas/PodOS").
  input("properties", "os", "nullable", true).
  input("properties", "hostUsers", "type", "boolean").
  input("properties", "hostUsers", "nullable", true).
  input("properties", "schedulingGates", "type", "array").
  input("properties", "schedulingGates", "items", "$ref", "#/components/schemas/PodSchedulingGate").
  input("properties", "resourceClaims", "type", "array").
  input("properties", "resourceClaims", "items", "$ref", "#/components/schemas/PodResourceClaim").
}).

#pos(eg(id98), {schema("PodStatus")}, {}, {
  input("type", "object").
  input("properties", "phase", "$ref", "#/components/schemas/PodPhase").
  input("properties", "conditions", "type", "array").
  input("properties", "conditions", "items", "$ref", "#/components/schemas/PodCondition").
  input("properties", "message", "type", "string").
  input("properties", "reason", "type", "string").
  input("properties", "nominatedNodeName", "type", "string").
  input("properties", "hostIP", "type", "string").
  input("properties", "hostIPs", "type", "array").
  input("properties", "hostIPs", "items", "$ref", "#/components/schemas/HostIP").
  input("properties", "podIP", "type", "string").
  input("properties", "podIPs", "type", "array").
  input("properties", "podIPs", "items", "$ref", "#/components/schemas/PodIP").
  input("properties", "startTime", "allOf", 0, "$ref", "#/components/schemas/Time").
  input("properties", "startTime", "nullable", true).
  input("properties", "initContainerStatuses", "type", "array").
  input("properties", "initContainerStatuses", "items", "$ref", "#/components/schemas/ContainerStatus").
  input("properties", "containerStatuses", "type", "array").
  input("properties", "containerStatuses", "items", "$ref", "#/components/schemas/ContainerStatus").
  input("properties", "qosClass", "$ref", "#/components/schemas/PodQOSClass").
  input("properties", "ephemeralContainerStatuses", "type", "array").
  input("properties", "ephemeralContainerStatuses", "items", "$ref", "#/components/schemas/ContainerStatus").
  input("properties", "resize", "$ref", "#/components/schemas/PodResizeStatus").
  input("properties", "resourceClaimStatuses", "type", "array").
  input("properties", "resourceClaimStatuses", "items", "$ref", "#/components/schemas/PodResourceClaimStatus").
}).

#pos(eg(id99), {schema("PortworxVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "volumeID").
  input("properties", "volumeID", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id100), {schema("PreferredSchedulingTerm")}, {}, {
  input("type", "object").
  input("required", 0, "weight").
  input("required", 1, "preference").
  input("properties", "weight", "type", "integer").
  input("properties", "weight", "format", "int32").
  input("properties", "preference", "$ref", "#/components/schemas/NodeSelectorTerm").
}).

#pos(eg(id101), {schema("Probe")}, {}, {
  input("type", "object").
  input("properties", "initialDelaySeconds", "type", "integer").
  input("properties", "initialDelaySeconds", "format", "int32").
  input("properties", "timeoutSeconds", "type", "integer").
  input("properties", "timeoutSeconds", "format", "int32").
  input("properties", "periodSeconds", "type", "integer").
  input("properties", "periodSeconds", "format", "int32").
  input("properties", "successThreshold", "type", "integer").
  input("properties", "successThreshold", "format", "int32").
  input("properties", "failureThreshold", "type", "integer").
  input("properties", "failureThreshold", "format", "int32").
  input("properties", "terminationGracePeriodSeconds", "type", "integer").
  input("properties", "terminationGracePeriodSeconds", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "terminationGracePeriodSeconds", "maximum", "int(\"9223372036854775807\")").
  input("properties", "terminationGracePeriodSeconds", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/ProbeHandler").
}).

#pos(eg(id102), {schema("ProbeHandler")}, {}, {
  input("type", "object").
  input("properties", "exec", "type", "object").
  input("properties", "exec", "allOf", 0, "$ref", "#/components/schemas/ExecAction").
  input("properties", "exec", "nullable", true).
  input("properties", "httpGet", "type", "object").
  input("properties", "httpGet", "allOf", 0, "$ref", "#/components/schemas/HTTPGetAction").
  input("properties", "httpGet", "nullable", true).
  input("properties", "tcpSocket", "type", "object").
  input("properties", "tcpSocket", "allOf", 0, "$ref", "#/components/schemas/TCPSocketAction").
  input("properties", "tcpSocket", "nullable", true).
  input("properties", "grpc", "type", "object").
  input("properties", "grpc", "allOf", 0, "$ref", "#/components/schemas/GRPCAction").
  input("properties", "grpc", "nullable", true).
}).

#pos(eg(id103), {schema("ProjectedVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "sources", "type", "array").
  input("properties", "sources", "items", "$ref", "#/components/schemas/VolumeProjection").
  input("properties", "defaultMode", "type", "integer").
  input("properties", "defaultMode", "minimum", "int(\"-2147483648\")").
  input("properties", "defaultMode", "maximum", "int(\"2147483647\")").
  input("properties", "defaultMode", "nullable", true).
}).

#pos(eg(id104), {schema("Protocol")}, {}, {
  input("type", "string").
}).

#pos(eg(id105), {schema("PullPolicy")}, {}, {
  input("type", "string").
}).

#pos(eg(id106), {schema("Quantity")}, {}, {

}).

#pos(eg(id107), {schema("QuobyteVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "registry").
  input("required", 1, "volume").
  input("properties", "registry", "type", "string").
  input("properties", "volume", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "user", "type", "string").
  input("properties", "group", "type", "string").
  input("properties", "tenant", "type", "string").
}).

#pos(eg(id108), {schema("RBDVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "monitors").
  input("required", 1, "image").
  input("properties", "monitors", "type", "array").
  input("properties", "monitors", "items", "type", "string").
  input("properties", "image", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "pool", "type", "string").
  input("properties", "user", "type", "string").
  input("properties", "keyring", "type", "string").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id109), {schema("ResourceClaim")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("properties", "name", "type", "string").
}).

#pos(eg(id110), {schema("ResourceFieldSelector")}, {}, {
  input("type", "object").
  input("required", 0, "resource").
  input("properties", "containerName", "type", "string").
  input("properties", "resource", "type", "string").
  input("properties", "divisor", "$ref", "#/components/schemas/Quantity").
}).

#pos(eg(id111), {schema("ResourceList")}, {}, {
  input("type", "object").
  input("additionalProperties", "$ref", "#/components/schemas/Quantity").
}).

#pos(eg(id112), {schema("ResourceName")}, {}, {
  input("type", "string").
}).

#pos(eg(id113), {schema("ResourceRequirements")}, {}, {
  input("type", "object").
  input("properties", "limits", "$ref", "#/components/schemas/ResourceList").
  input("properties", "requests", "$ref", "#/components/schemas/ResourceList").
  input("properties", "claims", "type", "array").
  input("properties", "claims", "items", "$ref", "#/components/schemas/ResourceClaim").
}).

#pos(eg(id114), {schema("ResourceResizeRestartPolicy")}, {}, {
  input("type", "string").
}).

#pos(eg(id115), {schema("RestartPolicy")}, {}, {
  input("type", "string").
}).

#pos(eg(id116), {schema("SELinuxOptions")}, {}, {
  input("type", "object").
  input("properties", "user", "type", "string").
  input("properties", "role", "type", "string").
  input("properties", "type", "type", "string").
  input("properties", "level", "type", "string").
}).

#pos(eg(id117), {schema("ScaleIOVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "gateway").
  input("required", 1, "system").
  input("properties", "gateway", "type", "string").
  input("properties", "system", "type", "string").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
  input("properties", "sslEnabled", "type", "boolean").
  input("properties", "protectionDomain", "type", "string").
  input("properties", "storagePool", "type", "string").
  input("properties", "storageMode", "type", "string").
  input("properties", "volumeName", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "readOnly", "type", "boolean").
}).

#pos(eg(id118), {schema("SeccompProfile")}, {}, {
  input("type", "object").
  input("required", 0, "type").
  input("properties", "type", "$ref", "#/components/schemas/SeccompProfileType").
  input("properties", "localhostProfile", "type", "string").
  input("properties", "localhostProfile", "nullable", true).
}).

#pos(eg(id119), {schema("SeccompProfileType")}, {}, {
  input("type", "string").
}).

#pos(eg(id120), {schema("SecretEnvSource")}, {}, {
  input("type", "object").
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
}).

#pos(eg(id121), {schema("SecretKeySelector")}, {}, {
  input("type", "object").
  input("properties", "key", "type", "string").
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("allOf", 1, "required", 0, "key").
}).

#pos(eg(id122), {schema("SecretProjection")}, {}, {
  input("type", "object").
  input("properties", "items", "type", "array").
  input("properties", "items", "items", "$ref", "#/components/schemas/KeyToPath").
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
}).

#pos(eg(id123), {schema("SecretVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "secretName", "type", "string").
  input("properties", "items", "type", "array").
  input("properties", "items", "items", "$ref", "#/components/schemas/KeyToPath").
  input("properties", "defaultMode", "type", "integer").
  input("properties", "defaultMode", "minimum", "int(\"-2147483648\")").
  input("properties", "defaultMode", "maximum", "int(\"2147483647\")").
  input("properties", "defaultMode", "nullable", true).
  input("properties", "optional", "type", "boolean").
  input("properties", "optional", "nullable", true).
}).

#pos(eg(id124), {schema("SecurityContext")}, {}, {
  input("type", "object").
  input("properties", "capabilities", "type", "object").
  input("properties", "capabilities", "allOf", 0, "$ref", "#/components/schemas/Capabilities").
  input("properties", "capabilities", "nullable", true).
  input("properties", "privileged", "type", "boolean").
  input("properties", "privileged", "nullable", true).
  input("properties", "seLinuxOptions", "type", "object").
  input("properties", "seLinuxOptions", "allOf", 0, "$ref", "#/components/schemas/SELinuxOptions").
  input("properties", "seLinuxOptions", "nullable", true).
  input("properties", "windowsOptions", "type", "object").
  input("properties", "windowsOptions", "allOf", 0, "$ref", "#/components/schemas/WindowsSecurityContextOptions").
  input("properties", "windowsOptions", "nullable", true).
  input("properties", "runAsUser", "type", "integer").
  input("properties", "runAsUser", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "runAsUser", "maximum", "int(\"9223372036854775807\")").
  input("properties", "runAsUser", "nullable", true).
  input("properties", "runAsGroup", "type", "integer").
  input("properties", "runAsGroup", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "runAsGroup", "maximum", "int(\"9223372036854775807\")").
  input("properties", "runAsGroup", "nullable", true).
  input("properties", "runAsNonRoot", "type", "boolean").
  input("properties", "runAsNonRoot", "nullable", true).
  input("properties", "readOnlyRootFilesystem", "type", "boolean").
  input("properties", "readOnlyRootFilesystem", "nullable", true).
  input("properties", "allowPrivilegeEscalation", "type", "boolean").
  input("properties", "allowPrivilegeEscalation", "nullable", true).
  input("properties", "procMount", "type", "string").
  input("properties", "procMount", "nullable", true).
  input("properties", "seccompProfile", "type", "object").
  input("properties", "seccompProfile", "allOf", 0, "$ref", "#/components/schemas/SeccompProfile").
  input("properties", "seccompProfile", "nullable", true).
  input("properties", "appArmorProfile", "type", "object").
  input("properties", "appArmorProfile", "allOf", 0, "$ref", "#/components/schemas/AppArmorProfile").
  input("properties", "appArmorProfile", "nullable", true).
}).

#pos(eg(id125), {schema("ServiceAccountTokenProjection")}, {}, {
  input("type", "object").
  input("required", 0, "path").
  input("properties", "audience", "type", "string").
  input("properties", "expirationSeconds", "type", "integer").
  input("properties", "expirationSeconds", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "expirationSeconds", "maximum", "int(\"9223372036854775807\")").
  input("properties", "expirationSeconds", "nullable", true).
  input("properties", "path", "type", "string").
}).

#pos(eg(id126), {schema("SleepAction")}, {}, {
  input("type", "object").
  input("required", 0, "seconds").
  input("properties", "seconds", "type", "integer").
  input("properties", "seconds", "format", "int64").
}).

#pos(eg(id127), {schema("StorageMedium")}, {}, {
  input("type", "string").
}).

#pos(eg(id128), {schema("StorageOSVolumeSource")}, {}, {
  input("type", "object").
  input("properties", "volumeName", "type", "string").
  input("properties", "volumeNamespace", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "secretRef", "type", "object").
  input("properties", "secretRef", "allOf", 0, "$ref", "#/components/schemas/LocalObjectReference").
  input("properties", "secretRef", "nullable", true).
}).

#pos(eg(id129), {schema("Sysctl")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("required", 1, "value").
  input("properties", "name", "type", "string").
  input("properties", "value", "type", "string").
}).

#pos(eg(id130), {schema("TCPSocketAction")}, {}, {
  input("type", "object").
  input("required", 0, "port").
  input("properties", "port", "$ref", "#/components/schemas/IntOrString").
  input("properties", "host", "type", "string").
}).

#pos(eg(id131), {schema("TaintEffect")}, {}, {
  input("type", "string").
}).

#pos(eg(id132), {schema("TerminationMessagePolicy")}, {}, {
  input("type", "string").
}).

#pos(eg(id133), {schema("Time")}, {}, {

}).

#pos(eg(id134), {schema("Toleration")}, {}, {
  input("type", "object").
  input("properties", "key", "type", "string").
  input("properties", "operator", "$ref", "#/components/schemas/TolerationOperator").
  input("properties", "value", "type", "string").
  input("properties", "effect", "$ref", "#/components/schemas/TaintEffect").
  input("properties", "tolerationSeconds", "type", "integer").
  input("properties", "tolerationSeconds", "minimum", "int(\"-9223372036854775808\")").
  input("properties", "tolerationSeconds", "maximum", "int(\"9223372036854775807\")").
  input("properties", "tolerationSeconds", "nullable", true).
}).

#pos(eg(id135), {schema("TolerationOperator")}, {}, {
  input("type", "string").
}).

#pos(eg(id136), {schema("TopologySpreadConstraint")}, {}, {
  input("type", "object").
  input("required", 0, "maxSkew").
  input("required", 1, "topologyKey").
  input("required", 2, "whenUnsatisfiable").
  input("properties", "maxSkew", "type", "integer").
  input("properties", "maxSkew", "format", "int32").
  input("properties", "topologyKey", "type", "string").
  input("properties", "whenUnsatisfiable", "$ref", "#/components/schemas/UnsatisfiableConstraintAction").
  input("properties", "labelSelector", "type", "object").
  input("properties", "labelSelector", "allOf", 0, "$ref", "#/components/schemas/LabelSelector").
  input("properties", "labelSelector", "nullable", true).
  input("properties", "minDomains", "type", "integer").
  input("properties", "minDomains", "minimum", "int(\"-2147483648\")").
  input("properties", "minDomains", "maximum", "int(\"2147483647\")").
  input("properties", "minDomains", "nullable", true).
  input("properties", "nodeAffinityPolicy", "type", "string").
  input("properties", "nodeAffinityPolicy", "nullable", true).
  input("properties", "nodeTaintsPolicy", "type", "string").
  input("properties", "nodeTaintsPolicy", "nullable", true).
  input("properties", "matchLabelKeys", "type", "array").
  input("properties", "matchLabelKeys", "items", "type", "string").
}).

#pos(eg(id137), {schema("TypeMeta")}, {}, {
  input("type", "object").
  input("properties", "kind", "type", "string").
  input("properties", "apiVersion", "type", "string").
}).

#pos(eg(id138), {schema("TypedLocalObjectReference")}, {}, {
  input("type", "object").
  input("required", 0, "kind").
  input("required", 1, "name").
  input("properties", "apiGroup", "type", "string").
  input("properties", "apiGroup", "nullable", true).
  input("properties", "kind", "type", "string").
  input("properties", "name", "type", "string").
}).

#pos(eg(id139), {schema("TypedObjectReference")}, {}, {
  input("type", "object").
  input("required", 0, "kind").
  input("required", 1, "name").
  input("properties", "apiGroup", "type", "string").
  input("properties", "apiGroup", "nullable", true).
  input("properties", "kind", "type", "string").
  input("properties", "name", "type", "string").
  input("properties", "namespace", "type", "string").
  input("properties", "namespace", "nullable", true).
}).

#pos(eg(id140), {schema("UID")}, {}, {
  input("type", "string").
}).

#pos(eg(id141), {schema("URIScheme")}, {}, {
  input("type", "string").
}).

#pos(eg(id142), {schema("UnsatisfiableConstraintAction")}, {}, {
  input("type", "string").
}).

#pos(eg(id143), {schema("Volume")}, {}, {
  input("type", "object").
  input("properties", "name", "type", "string").
  input("allOf", 0, "$ref", "#/components/schemas/VolumeSource").
  input("allOf", 1, "required", 0, "name").
}).

#pos(eg(id144), {schema("VolumeDevice")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("required", 1, "devicePath").
  input("properties", "name", "type", "string").
  input("properties", "devicePath", "type", "string").
}).

#pos(eg(id145), {schema("VolumeMount")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("required", 1, "mountPath").
  input("properties", "name", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "recursiveReadOnly", "type", "string").
  input("properties", "recursiveReadOnly", "nullable", true).
  input("properties", "mountPath", "type", "string").
  input("properties", "subPath", "type", "string").
  input("properties", "mountPropagation", "type", "string").
  input("properties", "mountPropagation", "nullable", true).
  input("properties", "subPathExpr", "type", "string").
}).

#pos(eg(id146), {schema("VolumeMountStatus")}, {}, {
  input("type", "object").
  input("required", 0, "name").
  input("required", 1, "mountPath").
  input("properties", "name", "type", "string").
  input("properties", "mountPath", "type", "string").
  input("properties", "readOnly", "type", "boolean").
  input("properties", "recursiveReadOnly", "type", "string").
  input("properties", "recursiveReadOnly", "nullable", true).
}).

#pos(eg(id147), {schema("VolumeProjection")}, {}, {
  input("type", "object").
  input("properties", "secret", "type", "object").
  input("properties", "secret", "allOf", 0, "$ref", "#/components/schemas/SecretProjection").
  input("properties", "secret", "nullable", true).
  input("properties", "downwardAPI", "type", "object").
  input("properties", "downwardAPI", "allOf", 0, "$ref", "#/components/schemas/DownwardAPIProjection").
  input("properties", "downwardAPI", "nullable", true).
  input("properties", "configMap", "type", "object").
  input("properties", "configMap", "allOf", 0, "$ref", "#/components/schemas/ConfigMapProjection").
  input("properties", "configMap", "nullable", true).
  input("properties", "serviceAccountToken", "type", "object").
  input("properties", "serviceAccountToken", "allOf", 0, "$ref", "#/components/schemas/ServiceAccountTokenProjection").
  input("properties", "serviceAccountToken", "nullable", true).
  input("properties", "clusterTrustBundle", "type", "object").
  input("properties", "clusterTrustBundle", "allOf", 0, "$ref", "#/components/schemas/ClusterTrustBundleProjection").
  input("properties", "clusterTrustBundle", "nullable", true).
}).

#pos(eg(id148), {schema("VolumeResourceRequirements")}, {}, {
  input("type", "object").
  input("properties", "limits", "$ref", "#/components/schemas/ResourceList").
  input("properties", "requests", "$ref", "#/components/schemas/ResourceList").
}).

#pos(eg(id149), {schema("VolumeSource")}, {}, {
  input("type", "object").
  input("properties", "hostPath", "type", "object").
  input("properties", "hostPath", "allOf", 0, "$ref", "#/components/schemas/HostPathVolumeSource").
  input("properties", "hostPath", "nullable", true).
  input("properties", "emptyDir", "type", "object").
  input("properties", "emptyDir", "allOf", 0, "$ref", "#/components/schemas/EmptyDirVolumeSource").
  input("properties", "emptyDir", "nullable", true).
  input("properties", "gcePersistentDisk", "type", "object").
  input("properties", "gcePersistentDisk", "allOf", 0, "$ref", "#/components/schemas/GCEPersistentDiskVolumeSource").
  input("properties", "gcePersistentDisk", "nullable", true).
  input("properties", "awsElasticBlockStore", "type", "object").
  input("properties", "awsElasticBlockStore", "allOf", 0, "$ref", "#/components/schemas/AWSElasticBlockStoreVolumeSource").
  input("properties", "awsElasticBlockStore", "nullable", true).
  input("properties", "gitRepo", "type", "object").
  input("properties", "gitRepo", "allOf", 0, "$ref", "#/components/schemas/GitRepoVolumeSource").
  input("properties", "gitRepo", "nullable", true).
  input("properties", "secret", "type", "object").
  input("properties", "secret", "allOf", 0, "$ref", "#/components/schemas/SecretVolumeSource").
  input("properties", "secret", "nullable", true).
  input("properties", "nfs", "type", "object").
  input("properties", "nfs", "allOf", 0, "$ref", "#/components/schemas/NFSVolumeSource").
  input("properties", "nfs", "nullable", true).
  input("properties", "iscsi", "type", "object").
  input("properties", "iscsi", "allOf", 0, "$ref", "#/components/schemas/ISCSIVolumeSource").
  input("properties", "iscsi", "nullable", true).
  input("properties", "glusterfs", "type", "object").
  input("properties", "glusterfs", "allOf", 0, "$ref", "#/components/schemas/GlusterfsVolumeSource").
  input("properties", "glusterfs", "nullable", true).
  input("properties", "persistentVolumeClaim", "type", "object").
  input("properties", "persistentVolumeClaim", "allOf", 0, "$ref", "#/components/schemas/PersistentVolumeClaimVolumeSource").
  input("properties", "persistentVolumeClaim", "nullable", true).
  input("properties", "rbd", "type", "object").
  input("properties", "rbd", "allOf", 0, "$ref", "#/components/schemas/RBDVolumeSource").
  input("properties", "rbd", "nullable", true).
  input("properties", "flexVolume", "type", "object").
  input("properties", "flexVolume", "allOf", 0, "$ref", "#/components/schemas/FlexVolumeSource").
  input("properties", "flexVolume", "nullable", true).
  input("properties", "cinder", "type", "object").
  input("properties", "cinder", "allOf", 0, "$ref", "#/components/schemas/CinderVolumeSource").
  input("properties", "cinder", "nullable", true).
  input("properties", "cephfs", "type", "object").
  input("properties", "cephfs", "allOf", 0, "$ref", "#/components/schemas/CephFSVolumeSource").
  input("properties", "cephfs", "nullable", true).
  input("properties", "flocker", "type", "object").
  input("properties", "flocker", "allOf", 0, "$ref", "#/components/schemas/FlockerVolumeSource").
  input("properties", "flocker", "nullable", true).
  input("properties", "downwardAPI", "type", "object").
  input("properties", "downwardAPI", "allOf", 0, "$ref", "#/components/schemas/DownwardAPIVolumeSource").
  input("properties", "downwardAPI", "nullable", true).
  input("properties", "fc", "type", "object").
  input("properties", "fc", "allOf", 0, "$ref", "#/components/schemas/FCVolumeSource").
  input("properties", "fc", "nullable", true).
  input("properties", "azureFile", "type", "object").
  input("properties", "azureFile", "allOf", 0, "$ref", "#/components/schemas/AzureFileVolumeSource").
  input("properties", "azureFile", "nullable", true).
  input("properties", "configMap", "type", "object").
  input("properties", "configMap", "allOf", 0, "$ref", "#/components/schemas/ConfigMapVolumeSource").
  input("properties", "configMap", "nullable", true).
  input("properties", "vsphereVolume", "type", "object").
  input("properties", "vsphereVolume", "allOf", 0, "$ref", "#/components/schemas/VsphereVirtualDiskVolumeSource").
  input("properties", "vsphereVolume", "nullable", true).
  input("properties", "quobyte", "type", "object").
  input("properties", "quobyte", "allOf", 0, "$ref", "#/components/schemas/QuobyteVolumeSource").
  input("properties", "quobyte", "nullable", true).
  input("properties", "azureDisk", "type", "object").
  input("properties", "azureDisk", "allOf", 0, "$ref", "#/components/schemas/AzureDiskVolumeSource").
  input("properties", "azureDisk", "nullable", true).
  input("properties", "photonPersistentDisk", "type", "object").
  input("properties", "photonPersistentDisk", "allOf", 0, "$ref", "#/components/schemas/PhotonPersistentDiskVolumeSource").
  input("properties", "photonPersistentDisk", "nullable", true).
  input("properties", "projected", "type", "object").
  input("properties", "projected", "allOf", 0, "$ref", "#/components/schemas/ProjectedVolumeSource").
  input("properties", "projected", "nullable", true).
  input("properties", "portworxVolume", "type", "object").
  input("properties", "portworxVolume", "allOf", 0, "$ref", "#/components/schemas/PortworxVolumeSource").
  input("properties", "portworxVolume", "nullable", true).
  input("properties", "scaleIO", "type", "object").
  input("properties", "scaleIO", "allOf", 0, "$ref", "#/components/schemas/ScaleIOVolumeSource").
  input("properties", "scaleIO", "nullable", true).
  input("properties", "storageos", "type", "object").
  input("properties", "storageos", "allOf", 0, "$ref", "#/components/schemas/StorageOSVolumeSource").
  input("properties", "storageos", "nullable", true).
  input("properties", "csi", "type", "object").
  input("properties", "csi", "allOf", 0, "$ref", "#/components/schemas/CSIVolumeSource").
  input("properties", "csi", "nullable", true).
  input("properties", "ephemeral", "type", "object").
  input("properties", "ephemeral", "allOf", 0, "$ref", "#/components/schemas/EphemeralVolumeSource").
  input("properties", "ephemeral", "nullable", true).
}).

#pos(eg(id150), {schema("VsphereVirtualDiskVolumeSource")}, {}, {
  input("type", "object").
  input("required", 0, "volumePath").
  input("properties", "volumePath", "type", "string").
  input("properties", "fsType", "type", "string").
  input("properties", "storagePolicyName", "type", "string").
  input("properties", "storagePolicyID", "type", "string").
}).

#pos(eg(id151), {schema("WeightedPodAffinityTerm")}, {}, {
  input("type", "object").
  input("required", 0, "weight").
  input("required", 1, "podAffinityTerm").
  input("properties", "weight", "type", "integer").
  input("properties", "weight", "format", "int32").
  input("properties", "podAffinityTerm", "$ref", "#/components/schemas/PodAffinityTerm").
}).

#pos(eg(id152), {schema("WindowsSecurityContextOptions")}, {}, {
  input("type", "object").
  input("properties", "gmsaCredentialSpecName", "type", "string").
  input("properties", "gmsaCredentialSpecName", "nullable", true).
  input("properties", "gmsaCredentialSpec", "type", "string").
  input("properties", "gmsaCredentialSpec", "nullable", true).
  input("properties", "runAsUserName", "type", "string").
  input("properties", "runAsUserName", "nullable", true).
  input("properties", "hostProcess", "type", "boolean").
  input("properties", "hostProcess", "nullable", true).
}).

input0("type").
input1("object").
#modeb(input(const(input0), const(input1))).
input0("required").
input1(0).
input2("volumeID").
#modeb(input(const(input0), const(input1), const(input2))).
input0("properties").
input1("volumeID").
input2("type").
input3("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3))).
input1("fsType").
input1("partition").
input3("integer").
input2("format").
input3("int32").
input1("readOnly").
input3("boolean").
input1("nodeAffinity").
input3("object").
input2("allOf").
input3(0).
input4("$ref").
input5("#/components/schemas/NodeAffinity").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5))).
input2("nullable").
input3(true).
input1("podAffinity").
input5("#/components/schemas/PodAffinity").
input1("podAntiAffinity").
input5("#/components/schemas/PodAntiAffinity").
input1("type").
input2("$ref").
input3("#/components/schemas/AppArmorProfileType").
input1("localhostProfile").
input1("string").
input2("diskName").
input1(1).
input2("diskURI").
input1("diskName").
input1("diskURI").
input1("cachingMode").
input1("kind").
input2("secretName").
input2("shareName").
input1("secretName").
input1("shareName").
input2("driver").
input1("driver").
input1("volumeAttributes").
input2("additionalProperties").
input3("type").
input4("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4))).
input1("nodePublishSecretRef").
input5("#/components/schemas/LocalObjectReference").
input1("add").
input3("array").
input2("items").
input3("$ref").
input4("#/components/schemas/Capability").
input1("drop").
input2("monitors").
input1("monitors").
input1("path").
input1("user").
input1("secretFile").
input1("secretRef").
input1("resourceClaimName").
input1("resourceClaimTemplateName").
input2("path").
input1("name").
input1("signerName").
input1("labelSelector").
input5("#/components/schemas/LabelSelector").
input1("optional").
input0("allOf").
input3("#/components/schemas/LocalObjectReference").
input1("key").
input2("required").
input4("key").
input1("items").
input4("#/components/schemas/KeyToPath").
input1("defaultMode").
input2("minimum").
input3("int(\"-2147483648\")").
input2("maximum").
input3("int(\"2147483647\")").
input2("name").
input1("image").
input1("command").
input1("args").
input1("workingDir").
input1("ports").
input4("#/components/schemas/ContainerPort").
input1("envFrom").
input4("#/components/schemas/EnvFromSource").
input1("env").
input4("#/components/schemas/EnvVar").
input1("resources").
input3("#/components/schemas/ResourceRequirements").
input1("resizePolicy").
input4("#/components/schemas/ContainerResizePolicy").
input1("restartPolicy").
input1("volumeMounts").
input4("#/components/schemas/VolumeMount").
input1("volumeDevices").
input4("#/components/schemas/VolumeDevice").
input1("livenessProbe").
input5("#/components/schemas/Probe").
input1("readinessProbe").
input1("startupProbe").
input1("lifecycle").
input5("#/components/schemas/Lifecycle").
input1("terminationMessagePath").
input1("terminationMessagePolicy").
input3("#/components/schemas/TerminationMessagePolicy").
input1("imagePullPolicy").
input3("#/components/schemas/PullPolicy").
input1("securityContext").
input5("#/components/schemas/SecurityContext").
input1("stdin").
input1("stdinOnce").
input1("tty").
input2("containerPort").
input1("hostPort").
input1("containerPort").
input1("protocol").
input3("#/components/schemas/Protocol").
input1("hostIP").
input2("resourceName").
input2("restartPolicy").
input1("resourceName").
input3("#/components/schemas/ResourceName").
input3("#/components/schemas/ResourceResizeRestartPolicy").
input1("waiting").
input5("#/components/schemas/ContainerStateWaiting").
input1("running").
input5("#/components/schemas/ContainerStateRunning").
input1("terminated").
input5("#/components/schemas/ContainerStateTerminated").
input1("startedAt").
input3("#/components/schemas/Time").
input2("exitCode").
input1("exitCode").
input1("signal").
input1("reason").
input1("message").
input1("finishedAt").
input1("containerID").
input2("ready").
input1(2).
input2("restartCount").
input1(3).
input2("image").
input1(4).
input2("imageID").
input1("state").
input3("#/components/schemas/ContainerState").
input1("lastState").
input1("ready").
input1("restartCount").
input1("imageID").
input1("started").
input1("allocatedResources").
input3("#/components/schemas/ResourceList").
input5("#/components/schemas/ResourceRequirements").
input4("#/components/schemas/VolumeMountStatus").
input4("#/components/schemas/DownwardAPIVolumeFile").
input1("fieldRef").
input5("#/components/schemas/ObjectFieldSelector").
input1("resourceFieldRef").
input5("#/components/schemas/ResourceFieldSelector").
input1("mode").
input1("medium").
input3("#/components/schemas/StorageMedium").
input1("sizeLimit").
input5("#/components/schemas/Quantity").
input1("prefix").
input1("configMapRef").
input5("#/components/schemas/ConfigMapEnvSource").
input5("#/components/schemas/SecretEnvSource").
input1("value").
input1("valueFrom").
input5("#/components/schemas/EnvVarSource").
input1("configMapKeyRef").
input5("#/components/schemas/ConfigMapKeySelector").
input1("secretKeyRef").
input5("#/components/schemas/SecretKeySelector").
input1("targetContainerName").
input3("#/components/schemas/EphemeralContainerCommon").
input1("volumeClaimTemplate").
input5("#/components/schemas/PersistentVolumeClaimTemplate").
input1("targetWWNs").
input1("lun").
input1("wwids").
input1("options").
input1("datasetName").
input1("datasetUUID").
input2("pdName").
input1("pdName").
input2("port").
input1("port").
input1("service").
input2("repository").
input1("repository").
input1("revision").
input1("directory").
input2("endpoints").
input1("endpoints").
input3("#/components/schemas/IntOrString").
input1("host").
input1("scheme").
input3("#/components/schemas/URIScheme").
input1("httpHeaders").
input4("#/components/schemas/HTTPHeader").
input2("value").
input1("ip").
input1("hostnames").
input2("targetPortal").
input2("iqn").
input2("lun").
input1("targetPortal").
input1("iqn").
input1("iscsiInterface").
input1("portals").
input1("chapAuthDiscovery").
input1("chapAuthSession").
input1("initiatorName").
input2("objects").
input1("objects").
input4("obj0").
input2("properties").
input3("obj0").
input5("#/components/schemas/Pod0").
input2("key").
input1("matchLabels").
input1("matchExpressions").
input4("#/components/schemas/LabelSelectorRequirement").
input2("operator").
input1("operator").
input3("#/components/schemas/LabelSelectorOperator").
input1("values").
input1("postStart").
input5("#/components/schemas/LifecycleHandler").
input1("preStop").
input1("exec").
input5("#/components/schemas/ExecAction").
input1("httpGet").
input5("#/components/schemas/HTTPGetAction").
input1("tcpSocket").
input5("#/components/schemas/TCPSocketAction").
input1("sleep").
input5("#/components/schemas/SleepAction").
input1("manager").
input1("operation").
input3("#/components/schemas/ManagedFieldsOperationType").
input1("apiVersion").
input1("time").
input5("#/components/schemas/Time").
input1("fieldsType").
input1("fieldsV1").
input5("#/components/schemas/FieldsV1").
input1("subresource").
input2("server").
input1("server").
input1("requiredDuringSchedulingIgnoredDuringExecution").
input5("#/components/schemas/NodeSelector").
input1("preferredDuringSchedulingIgnoredDuringExecution").
input4("#/components/schemas/PreferredSchedulingTerm").
input2("nodeSelectorTerms").
input1("nodeSelectorTerms").
input4("#/components/schemas/NodeSelectorTerm").
input3("#/components/schemas/NodeSelectorOperator").
input4("#/components/schemas/NodeSelectorRequirement").
input1("matchFields").
input2("fieldPath").
input1("fieldPath").
input1("generateName").
input1("namespace").
input1("selfLink").
input1("uid").
input3("#/components/schemas/UID").
input1("resourceVersion").
input1("generation").
input3("int64").
input1("creationTimestamp").
input1("deletionTimestamp").
input1("deletionGracePeriodSeconds").
input3("int(\"-9223372036854775808\")").
input3("int(\"9223372036854775807\")").
input1("labels").
input1("annotations").
input1("ownerReferences").
input4("#/components/schemas/OwnerReference").
input1("finalizers").
input1("managedFields").
input4("#/components/schemas/ManagedFieldsEntry").
input2("apiVersion").
input2("kind").
input2("uid").
input1("controller").
input1("blockOwnerDeletion").
input1("accessModes").
input4("#/components/schemas/PersistentVolumeAccessMode").
input1("selector").
input3("#/components/schemas/VolumeResourceRequirements").
input1("volumeName").
input1("storageClassName").
input1("volumeMode").
input1("dataSource").
input5("#/components/schemas/TypedLocalObjectReference").
input1("dataSourceRef").
input5("#/components/schemas/TypedObjectReference").
input1("volumeAttributesClassName").
input2("spec").
input1("metadata").
input3("#/components/schemas/ObjectMeta").
input1("spec").
input3("#/components/schemas/PersistentVolumeClaimSpec").
input2("claimName").
input1("claimName").
input2("pdID").
input1("pdID").
input3("#/components/schemas/PodSpec").
input1("status").
input3("#/components/schemas/PodStatus").
input3("#/components/schemas/TypeMeta").
input2("enum").
input4("v1").
input4("Pod").
input4("name").
input3("name").
input4("type").
input5("string").
input4("enum").
input5(0).
input6("pulsar-admin").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6))).
input4("containers").
input3("containers").
input5("array").
input4("items").
input6("type").
input7("object").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7))).
input6("required").
input7(0).
input8("name").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8))).
input7(1).
input8("image").
input7(2).
input8("ports").
input6("properties").
input7("name").
input8("type").
input9("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9))).
input8("enum").
input9(0).
input10("pulsar-admin").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10))).
input7("image").
input10("apachepulsar/pulsar:latest").
input7("ports").
input9("array").
input8("items").
input10("type").
input11("object").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11))).
input10("required").
input11(0).
input12("containerPort").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12))).
input10("properties").
input11("containerPort").
input12("type").
input13("integer").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13))).
input12("enum").
input13(0).
input14("int(\"8080\")").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13), const(input14))).
input8("default").
input10("containerPort").
input11("int(\"8080\")").
input4("default").
input6("name").
input7("pulsar-admin").
input6("image").
input7("apachepulsar/pulsar:latest").
input6("ports").
input8("containerPort").
input9("int(\"8080\")").
input3("#/components/schemas/Pod").
input4("apiVersion").
input3(1).
input4("kind").
input3(2).
input4("metadata").
input3(3).
input4("spec").
input4("#/components/schemas/PodAffinityTerm").
input4("#/components/schemas/WeightedPodAffinityTerm").
input2("topologyKey").
input1("namespaces").
input1("topologyKey").
input1("namespaceSelector").
input1("matchLabelKeys").
input1("mismatchLabelKeys").
input2("status").
input3("#/components/schemas/PodConditionType").
input3("#/components/schemas/ConditionStatus").
input1("lastProbeTime").
input1("lastTransitionTime").
input1("nameservers").
input1("searches").
input4("#/components/schemas/PodDNSConfigOption").
input3("#/components/schemas/OSName").
input2("conditionType").
input1("conditionType").
input1("source").
input3("#/components/schemas/ClaimSource").
input1("seLinuxOptions").
input5("#/components/schemas/SELinuxOptions").
input1("windowsOptions").
input5("#/components/schemas/WindowsSecurityContextOptions").
input1("runAsUser").
input1("runAsGroup").
input1("runAsNonRoot").
input1("supplementalGroups").
input4("integer").
input3("format").
input4("int64").
input1("fsGroup").
input1("sysctls").
input4("#/components/schemas/Sysctl").
input1("fsGroupChangePolicy").
input1("seccompProfile").
input5("#/components/schemas/SeccompProfile").
input1("appArmorProfile").
input5("#/components/schemas/AppArmorProfile").
input2("containers").
input1("volumes").
input4("#/components/schemas/Volume").
input1("initContainers").
input4("#/components/schemas/Container").
input1("containers").
input1("ephemeralContainers").
input4("#/components/schemas/EphemeralContainer").
input3("#/components/schemas/RestartPolicy").
input1("terminationGracePeriodSeconds").
input1("activeDeadlineSeconds").
input1("dnsPolicy").
input3("#/components/schemas/DNSPolicy").
input1("nodeSelector").
input1("serviceAccountName").
input1("serviceAccount").
input1("automountServiceAccountToken").
input1("nodeName").
input1("hostNetwork").
input1("hostPID").
input1("hostIPC").
input1("shareProcessNamespace").
input5("#/components/schemas/PodSecurityContext").
input1("imagePullSecrets").
input4("#/components/schemas/LocalObjectReference").
input1("hostname").
input1("subdomain").
input1("affinity").
input5("#/components/schemas/Affinity").
input1("schedulerName").
input1("tolerations").
input4("#/components/schemas/Toleration").
input1("hostAliases").
input4("#/components/schemas/HostAlias").
input1("priorityClassName").
input1("priority").
input1("dnsConfig").
input5("#/components/schemas/PodDNSConfig").
input1("readinessGates").
input4("#/components/schemas/PodReadinessGate").
input1("runtimeClassName").
input1("enableServiceLinks").
input1("preemptionPolicy").
input1("overhead").
input1("topologySpreadConstraints").
input4("#/components/schemas/TopologySpreadConstraint").
input1("setHostnameAsFQDN").
input1("os").
input5("#/components/schemas/PodOS").
input1("hostUsers").
input1("schedulingGates").
input4("#/components/schemas/PodSchedulingGate").
input1("resourceClaims").
input4("#/components/schemas/PodResourceClaim").
input1("phase").
input3("#/components/schemas/PodPhase").
input1("conditions").
input4("#/components/schemas/PodCondition").
input1("nominatedNodeName").
input1("hostIPs").
input4("#/components/schemas/HostIP").
input1("podIP").
input1("podIPs").
input4("#/components/schemas/PodIP").
input1("startTime").
input1("initContainerStatuses").
input4("#/components/schemas/ContainerStatus").
input1("containerStatuses").
input1("qosClass").
input3("#/components/schemas/PodQOSClass").
input1("ephemeralContainerStatuses").
input1("resize").
input3("#/components/schemas/PodResizeStatus").
input1("resourceClaimStatuses").
input4("#/components/schemas/PodResourceClaimStatus").
input2("weight").
input2("preference").
input1("weight").
input1("preference").
input3("#/components/schemas/NodeSelectorTerm").
input1("initialDelaySeconds").
input1("timeoutSeconds").
input1("periodSeconds").
input1("successThreshold").
input1("failureThreshold").
input3("#/components/schemas/ProbeHandler").
input1("grpc").
input5("#/components/schemas/GRPCAction").
input1("sources").
input4("#/components/schemas/VolumeProjection").
input2("registry").
input2("volume").
input1("registry").
input1("volume").
input1("group").
input1("tenant").
input1("pool").
input1("keyring").
input2("resource").
input1("containerName").
input1("resource").
input1("divisor").
input3("#/components/schemas/Quantity").
input0("additionalProperties").
input1("$ref").
input2("#/components/schemas/Quantity").
input1("limits").
input1("requests").
input1("claims").
input4("#/components/schemas/ResourceClaim").
input1("role").
input1("level").
input2("gateway").
input2("system").
input1("gateway").
input1("system").
input1("sslEnabled").
input1("protectionDomain").
input1("storagePool").
input1("storageMode").
input3("#/components/schemas/SeccompProfileType").
input1("capabilities").
input5("#/components/schemas/Capabilities").
input1("privileged").
input1("readOnlyRootFilesystem").
input1("allowPrivilegeEscalation").
input1("procMount").
input1("audience").
input1("expirationSeconds").
input2("seconds").
input1("seconds").
input1("volumeNamespace").
input3("#/components/schemas/TolerationOperator").
input1("effect").
input3("#/components/schemas/TaintEffect").
input1("tolerationSeconds").
input2("maxSkew").
input2("whenUnsatisfiable").
input1("maxSkew").
input1("whenUnsatisfiable").
input3("#/components/schemas/UnsatisfiableConstraintAction").
input1("minDomains").
input1("nodeAffinityPolicy").
input1("nodeTaintsPolicy").
input1("apiGroup").
input3("#/components/schemas/VolumeSource").
input2("devicePath").
input1("devicePath").
input2("mountPath").
input1("recursiveReadOnly").
input1("mountPath").
input1("subPath").
input1("mountPropagation").
input1("subPathExpr").
input1("secret").
input5("#/components/schemas/SecretProjection").
input1("downwardAPI").
input5("#/components/schemas/DownwardAPIProjection").
input1("configMap").
input5("#/components/schemas/ConfigMapProjection").
input1("serviceAccountToken").
input5("#/components/schemas/ServiceAccountTokenProjection").
input1("clusterTrustBundle").
input5("#/components/schemas/ClusterTrustBundleProjection").
input1("hostPath").
input5("#/components/schemas/HostPathVolumeSource").
input1("emptyDir").
input5("#/components/schemas/EmptyDirVolumeSource").
input1("gcePersistentDisk").
input5("#/components/schemas/GCEPersistentDiskVolumeSource").
input1("awsElasticBlockStore").
input5("#/components/schemas/AWSElasticBlockStoreVolumeSource").
input1("gitRepo").
input5("#/components/schemas/GitRepoVolumeSource").
input5("#/components/schemas/SecretVolumeSource").
input1("nfs").
input5("#/components/schemas/NFSVolumeSource").
input1("iscsi").
input5("#/components/schemas/ISCSIVolumeSource").
input1("glusterfs").
input5("#/components/schemas/GlusterfsVolumeSource").
input1("persistentVolumeClaim").
input5("#/components/schemas/PersistentVolumeClaimVolumeSource").
input1("rbd").
input5("#/components/schemas/RBDVolumeSource").
input1("flexVolume").
input5("#/components/schemas/FlexVolumeSource").
input1("cinder").
input5("#/components/schemas/CinderVolumeSource").
input1("cephfs").
input5("#/components/schemas/CephFSVolumeSource").
input1("flocker").
input5("#/components/schemas/FlockerVolumeSource").
input5("#/components/schemas/DownwardAPIVolumeSource").
input1("fc").
input5("#/components/schemas/FCVolumeSource").
input1("azureFile").
input5("#/components/schemas/AzureFileVolumeSource").
input5("#/components/schemas/ConfigMapVolumeSource").
input1("vsphereVolume").
input5("#/components/schemas/VsphereVirtualDiskVolumeSource").
input1("quobyte").
input5("#/components/schemas/QuobyteVolumeSource").
input1("azureDisk").
input5("#/components/schemas/AzureDiskVolumeSource").
input1("photonPersistentDisk").
input5("#/components/schemas/PhotonPersistentDiskVolumeSource").
input1("projected").
input5("#/components/schemas/ProjectedVolumeSource").
input1("portworxVolume").
input5("#/components/schemas/PortworxVolumeSource").
input1("scaleIO").
input5("#/components/schemas/ScaleIOVolumeSource").
input1("storageos").
input5("#/components/schemas/StorageOSVolumeSource").
input1("csi").
input5("#/components/schemas/CSIVolumeSource").
input1("ephemeral").
input5("#/components/schemas/EphemeralVolumeSource").
input2("volumePath").
input1("volumePath").
input1("storagePolicyName").
input1("storagePolicyID").
input2("podAffinityTerm").
input1("podAffinityTerm").
input3("#/components/schemas/PodAffinityTerm").
input1("gmsaCredentialSpecName").
input1("gmsaCredentialSpec").
input1("runAsUserName").
input1("hostProcess").

#modeh(schema(const(schema0))).
schema0("DownwardAPIVolumeFile").

#modeh(schema(const(schema1))).
schema1("PodSchedulingGate").

#modeh(schema(const(schema2))).
schema2("RestartPolicy").

#modeh(schema(const(schema3))).
schema3("TaintEffect").

#modeh(schema(const(schema4))).
schema4("HostIP").

#modeh(schema(const(schema5))).
schema5("LifecycleHandler").

#modeh(schema(const(schema6))).
schema6("ResourceClaim").

#modeh(schema(const(schema7))).
schema7("PodResizeStatus").

#modeh(schema(const(schema8))).
schema8("RBDVolumeSource").

#modeh(schema(const(schema9))).
schema9("DownwardAPIProjection").

#modeh(schema(const(schema10))).
schema10("ConfigMapProjection").

#modeh(schema(const(schema11))).
schema11("NFSVolumeSource").

#modeh(schema(const(schema12))).
schema12("ProbeHandler").

#modeh(schema(const(schema13))).
schema13("EnvFromSource").

#modeh(schema(const(schema14))).
schema14("ManagedFieldsOperationType").

#modeh(schema(const(schema15))).
schema15("WindowsSecurityContextOptions").

#modeh(schema(const(schema16))).
schema16("AzureDiskVolumeSource").

#modeh(schema(const(schema17))).
schema17("PodAffinityTerm").

#modeh(schema(const(schema18))).
schema18("FCVolumeSource").

#modeh(schema(const(schema19))).
schema19("ServiceAccountTokenProjection").

#modeh(schema(const(schema20))).
schema20("PodAffinity").

#modeh(schema(const(schema21))).
schema21("ResourceName").

#modeh(schema(const(schema22))).
schema22("ContainerStateTerminated").

#modeh(schema(const(schema23))).
schema23("CephFSVolumeSource").

#modeh(schema(const(schema24))).
schema24("SeccompProfileType").

#modeh(schema(const(schema25))).
schema25("VolumeResourceRequirements").

#modeh(schema(const(schema26))).
schema26("LabelSelectorOperator").

#modeh(schema(const(schema27))).
schema27("AppArmorProfileType").

#modeh(schema(const(schema28))).
schema28("PodResourceClaim").

#modeh(schema(const(schema29))).
schema29("ObjectFieldSelector").

#modeh(schema(const(schema30))).
schema30("NodeSelectorOperator").

#modeh(schema(const(schema31))).
schema31("ExecAction").

#modeh(schema(const(schema32))).
schema32("SecurityContext").

#modeh(schema(const(schema33))).
schema33("SecretKeySelector").

#modeh(schema(const(schema34))).
schema34("Quantity").

#modeh(schema(const(schema35))).
schema35("EnvVarSource").

#modeh(schema(const(schema36))).
schema36("VolumeMountStatus").

#modeh(schema(const(schema37))).
schema37("PodConditionType").

#modeh(schema(const(schema38))).
schema38("PodResourceClaimStatus").

#modeh(schema(const(schema39))).
schema39("PodAntiAffinity").

#modeh(schema(const(schema40))).
schema40("PodQOSClass").

#modeh(schema(const(schema41))).
schema41("VolumeDevice").

#modeh(schema(const(schema42))).
schema42("HostPathVolumeSource").

#modeh(schema(const(schema43))).
schema43("PodReadinessGate").

#modeh(schema(const(schema44))).
schema44("HTTPHeader").

#modeh(schema(const(schema45))).
schema45("NodeSelectorRequirement").

#modeh(schema(const(schema46))).
schema46("ScaleIOVolumeSource").

#modeh(schema(const(schema47))).
schema47("StorageOSVolumeSource").

#modeh(schema(const(schema48))).
schema48("PodSpec").

#modeh(schema(const(schema49))).
schema49("ConditionStatus").

#modeh(schema(const(schema50))).
schema50("CinderVolumeSource").

#modeh(schema(const(schema51))).
schema51("EphemeralVolumeSource").

#modeh(schema(const(schema52))).
schema52("GRPCAction").

#modeh(schema(const(schema53))).
schema53("ContainerState").

#modeh(schema(const(schema54))).
schema54("PodOS").

#modeh(schema(const(schema55))).
schema55("VolumeMount").

#modeh(schema(const(schema56))).
schema56("AzureFileVolumeSource").

#modeh(schema(const(schema57))).
schema57("Probe").

#modeh(schema(const(schema58))).
schema58("ISCSIVolumeSource").

#modeh(schema(const(schema59))).
schema59("OSName").

#modeh(schema(const(schema60))).
schema60("SeccompProfile").

#modeh(schema(const(schema61))).
schema61("ContainerStateRunning").

#modeh(schema(const(schema62))).
schema62("Protocol").

#modeh(schema(const(schema63))).
schema63("LocalObjectReference").

#modeh(schema(const(schema64))).
schema64("PodPhase").

#modeh(schema(const(schema65))).
schema65("URIScheme").

#modeh(schema(const(schema66))).
schema66("NodeAffinity").

#modeh(schema(const(schema67))).
schema67("QuobyteVolumeSource").

#modeh(schema(const(schema68))).
schema68("ObjectMeta").

#modeh(schema(const(schema69))).
schema69("LabelSelectorRequirement").

#modeh(schema(const(schema70))).
schema70("ClusterTrustBundleProjection").

#modeh(schema(const(schema71))).
schema71("Capability").

#modeh(schema(const(schema72))).
schema72("ConfigMapVolumeSource").

#modeh(schema(const(schema73))).
schema73("OwnerReference").

#modeh(schema(const(schema74))).
schema74("PodDNSConfigOption").

#modeh(schema(const(schema75))).
schema75("PodIP").

#modeh(schema(const(schema76))).
schema76("EphemeralContainer").

#modeh(schema(const(schema77))).
schema77("DNSPolicy").

#modeh(schema(const(schema78))).
schema78("LabelSelector").

#modeh(schema(const(schema79))).
schema79("ConfigMapKeySelector").

#modeh(schema(const(schema80))).
schema80("TypedLocalObjectReference").

#modeh(schema(const(schema81))).
schema81("Lifecycle").

#modeh(schema(const(schema82))).
schema82("TypeMeta").

#modeh(schema(const(schema83))).
schema83("Volume").

#modeh(schema(const(schema84))).
schema84("Sysctl").

#modeh(schema(const(schema85))).
schema85("AppArmorProfile").

#modeh(schema(const(schema86))).
schema86("ResourceFieldSelector").

#modeh(schema(const(schema87))).
schema87("ContainerResizePolicy").

#modeh(schema(const(schema88))).
schema88("PersistentVolumeClaimTemplate").

#modeh(schema(const(schema89))).
schema89("GCEPersistentDiskVolumeSource").

#modeh(schema(const(schema90))).
schema90("PodStatus").

#modeh(schema(const(schema91))).
schema91("SecretEnvSource").

#modeh(schema(const(schema92))).
schema92("ContainerStatus").

#modeh(schema(const(schema93))).
schema93("ResourceResizeRestartPolicy").

#modeh(schema(const(schema94))).
schema94("Capabilities").

#modeh(schema(const(schema95))).
schema95("TypedObjectReference").

#modeh(schema(const(schema96))).
schema96("UID").

#modeh(schema(const(schema97))).
schema97("EmptyDirVolumeSource").

#modeh(schema(const(schema98))).
schema98("PreferredSchedulingTerm").

#modeh(schema(const(schema99))).
schema99("SleepAction").

#modeh(schema(const(schema100))).
schema100("PersistentVolumeClaimSpec").

#modeh(schema(const(schema101))).
schema101("TerminationMessagePolicy").

#modeh(schema(const(schema102))).
schema102("PersistentVolumeClaimVolumeSource").

#modeh(schema(const(schema103))).
schema103("ContainerStateWaiting").

#modeh(schema(const(schema104))).
schema104("SecretVolumeSource").

#modeh(schema(const(schema105))).
schema105("Pod0").

#modeh(schema(const(schema106))).
schema106("TolerationOperator").

#modeh(schema(const(schema107))).
schema107("NodeSelectorTerm").

#modeh(schema(const(schema108))).
schema108("Pod").

#modeh(schema(const(schema109))).
schema109("VolumeProjection").

#modeh(schema(const(schema110))).
schema110("TopologySpreadConstraint").

#modeh(schema(const(schema111))).
schema111("HTTPGetAction").

#modeh(schema(const(schema112))).
schema112("HostAlias").

#modeh(schema(const(schema113))).
schema113("FlockerVolumeSource").

#modeh(schema(const(schema114))).
schema114("PodSecurityContext").

#modeh(schema(const(schema115))).
schema115("ResourceList").

#modeh(schema(const(schema116))).
schema116("VolumeSource").

#modeh(schema(const(schema117))).
schema117("Container").

#modeh(schema(const(schema118))).
schema118("WeightedPodAffinityTerm").

#modeh(schema(const(schema119))).
schema119("UnsatisfiableConstraintAction").

#modeh(schema(const(schema120))).
schema120("PhotonPersistentDiskVolumeSource").

#modeh(schema(const(schema121))).
schema121("ContainerPort").

#modeh(schema(const(schema122))).
schema122("FlexVolumeSource").

#modeh(schema(const(schema123))).
schema123("ProjectedVolumeSource").

#modeh(schema(const(schema124))).
schema124("ConfigMapEnvSource").

#modeh(schema(const(schema125))).
schema125("SELinuxOptions").

#modeh(schema(const(schema126))).
schema126("FieldsV1").

#modeh(schema(const(schema127))).
schema127("Affinity").

#modeh(schema(const(schema128))).
schema128("SecretProjection").

#modeh(schema(const(schema129))).
schema129("Time").

#modeh(schema(const(schema130))).
schema130("DownwardAPIVolumeSource").

#modeh(schema(const(schema131))).
schema131("TCPSocketAction").

#modeh(schema(const(schema132))).
schema132("ClaimSource").

#modeh(schema(const(schema133))).
schema133("CSIVolumeSource").

#modeh(schema(const(schema134))).
schema134("ResourceRequirements").

#modeh(schema(const(schema135))).
schema135("KeyToPath").

#modeh(schema(const(schema136))).
schema136("AWSElasticBlockStoreVolumeSource").

#modeh(schema(const(schema137))).
schema137("Instance").

#modeh(schema(const(schema138))).
schema138("GitRepoVolumeSource").

#modeh(schema(const(schema139))).
schema139("IntOrString").

#modeh(schema(const(schema140))).
schema140("ManagedFieldsEntry").

#modeh(schema(const(schema141))).
schema141("PullPolicy").

#modeh(schema(const(schema142))).
schema142("VsphereVirtualDiskVolumeSource").

#modeh(schema(const(schema143))).
schema143("PersistentVolumeAccessMode").

#modeh(schema(const(schema144))).
schema144("Toleration").

#modeh(schema(const(schema145))).
schema145("EphemeralContainerCommon").

#modeh(schema(const(schema146))).
schema146("GlusterfsVolumeSource").

#modeh(schema(const(schema147))).
schema147("PortworxVolumeSource").

#modeh(schema(const(schema148))).
schema148("StorageMedium").

#modeh(schema(const(schema149))).
schema149("NodeSelector").

#modeh(schema(const(schema150))).
schema150("PodDNSConfig").

#modeh(schema(const(schema151))).
schema151("EnvVar").

#modeh(schema(const(schema152))).
schema152("PodCondition").


#bias('user(eg(id0)).').
#bias('user(eg(id0), input("type", "object")).').
#bias('user(eg(id0), input("required", 0, "apiVersion")).').
#bias('user(eg(id0), input("required", 1, "kind")).').
#bias('user(eg(id0), input("required", 2, "metadata")).').
#bias('user(eg(id0), input("required", 3, "spec")).').
#bias('user(eg(id0), input("properties", "apiVersion", "type", "string")).').
#bias('user(eg(id0), input("properties", "apiVersion", "enum", 0, "v1")).').
#bias('user(eg(id0), input("properties", "kind", "type", "string")).').
#bias('user(eg(id0), input("properties", "kind", "enum", 0, "Pod")).').
#bias('user(eg(id0), input("properties", "metadata", "type", "object")).').
#bias('user(eg(id0), input("properties", "metadata", "required", 0, "name")).').
#bias('user(eg(id0), input("properties", "metadata", "properties", "name", "type", "string")).').
#bias('user(eg(id0), input("properties", "metadata", "properties", "name", "enum", 0, "pulsar-admin")).').
#bias('user(eg(id0), input("properties", "spec", "type", "object")).').
#bias('user(eg(id0), input("properties", "spec", "required", 0, "containers")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "type", "array")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "type", "object")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "required", 0, "image")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "required", 1, "name")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "required", 2, "ports")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "image", "type", "string")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "image", "enum", 0, "apachepulsar/pulsar:latest")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "name", "type", "string")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "name", "enum", 0, "pulsar-admin")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "type", "array")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "type", "object")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "required", 0, "containerPort")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "type", "integer")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "enum", 0, "int(\"8080\")")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "default", 0, "containerPort", "int(\"8080\")")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "default", 0, "image", "apachepulsar/pulsar:latest")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "default", 0, "name", "pulsar-admin")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "containers", "default", 0, "ports", 0, "containerPort", "int(\"8080\")")).').

% #bias("penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X)}.").

% #bias('penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X), in_head(schema("Deployment")), user(U), not user(U, X)}.').

#bias("penalty(1000, head(X)) :- in_head(X).").
#bias("penalty(-1, body(X)) :- in_body(X).").

% #bias("penalty(1, body(X)) :- in_body(X), not required(X).").
% #bias('required(X) :- in_body(X), X = input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').

% Prefer rules that cover bias examples
% #bias("penalty(-100, body(U, S, X)) :- user(U, S), in_head(S), in_body(X), user(U, X).").
% #bias('penalty(1000, body(X)) :- user(U, S), schema(S), in_head(schema(S)), in_body(X), X != input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').


