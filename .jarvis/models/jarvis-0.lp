schema("TCPSocketAction") :-
    input("type","object"),
    input("required",0,"port"),
    input("properties","host","type","string"),
    input("properties","port","$ref","#/components/schemas/IntOrString").
schema("ServiceAccountTokenProjection") :-
    input("type","object"),
    input("properties","path","type","string"),
    input("required",0,"path"),
    input("properties","expirationSeconds","nullable",true),
    input("properties","expirationSeconds","maximum","int(\"9223372036854775807\")"),
    input("properties","expirationSeconds","minimum","int(\"-9223372036854775808\")"),
    input("properties","expirationSeconds","type","integer"),
    input("properties","audience","type","string").
schema("VolumeMount") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name"),
    input("properties","subPathExpr","type","string"),
    input("properties","mountPropagation","nullable",true),
    input("properties","mountPropagation","type","string"),
    input("properties","subPath","type","string"),
    input("properties","mountPath","type","string"),
    input("properties","recursiveReadOnly","nullable",true),
    input("properties","recursiveReadOnly","type","string"),
    input("required",1,"mountPath").
schema("PersistentVolumeClaimTemplate") :-
    input("type","object"),
    input("properties","metadata","$ref","#/components/schemas/ObjectMeta"),
    input("properties","spec","$ref","#/components/schemas/PersistentVolumeClaimSpec"),
    input("required",0,"spec").
schema("LoadBalancerStatus") :-
    input("type","object"),
    input("properties","ingress","items","$ref","#/components/schemas/LoadBalancerIngress"),
    input("properties","ingress","type","array").
schema("Instance") :-
    input("type","object"),
    input("properties","objects","properties","obj1","$ref","#/components/schemas/Deployment0"),
    input("properties","objects","properties","obj0","$ref","#/components/schemas/Service0"),
    input("properties","objects","required",1,"obj1"),
    input("properties","objects","required",0,"obj0"),
    input("properties","objects","type","object"),
    input("required",0,"objects").
schema("GitRepoVolumeSource") :-
    input("type","object"),
    input("properties","directory","type","string"),
    input("properties","revision","type","string"),
    input("properties","repository","type","string"),
    input("required",0,"repository").
schema("EphemeralContainerCommon") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("properties","tty","type","boolean"),
    input("properties","stdinOnce","type","boolean"),
    input("properties","stdin","type","boolean"),
    input("properties","securityContext","nullable",true),
    input("properties","securityContext","allOf",0,"$ref","#/components/schemas/SecurityContext"),
    input("properties","securityContext","type","object"),
    input("properties","imagePullPolicy","$ref","#/components/schemas/PullPolicy"),
    input("properties","terminationMessagePolicy","$ref","#/components/schemas/TerminationMessagePolicy"),
    input("properties","terminationMessagePath","type","string"),
    input("properties","lifecycle","nullable",true),
    input("properties","lifecycle","allOf",0,"$ref","#/components/schemas/Lifecycle"),
    input("properties","lifecycle","type","object"),
    input("properties","startupProbe","nullable",true),
    input("properties","startupProbe","allOf",0,"$ref","#/components/schemas/Probe"),
    input("properties","startupProbe","type","object"),
    input("properties","readinessProbe","nullable",true),
    input("properties","readinessProbe","allOf",0,"$ref","#/components/schemas/Probe"),
    input("properties","readinessProbe","type","object"),
    input("properties","livenessProbe","nullable",true),
    input("properties","livenessProbe","allOf",0,"$ref","#/components/schemas/Probe"),
    input("properties","livenessProbe","type","object"),
    input("properties","volumeDevices","items","$ref","#/components/schemas/VolumeDevice"),
    input("properties","volumeDevices","type","array"),
    input("properties","volumeMounts","items","$ref","#/components/schemas/VolumeMount"),
    input("properties","volumeMounts","type","array"),
    input("properties","restartPolicy","nullable",true),
    input("properties","restartPolicy","type","string"),
    input("properties","resizePolicy","items","$ref","#/components/schemas/ContainerResizePolicy"),
    input("properties","resizePolicy","type","array"),
    input("properties","resources","$ref","#/components/schemas/ResourceRequirements"),
    input("properties","env","items","$ref","#/components/schemas/EnvVar"),
    input("properties","env","type","array"),
    input("properties","envFrom","items","$ref","#/components/schemas/EnvFromSource"),
    input("properties","envFrom","type","array"),
    input("properties","ports","items","$ref","#/components/schemas/ContainerPort"),
    input("properties","ports","type","array"),
    input("properties","workingDir","type","string"),
    input("properties","args","items","type","string"),
    input("properties","args","type","array"),
    input("properties","command","items","type","string"),
    input("properties","command","type","array"),
    input("properties","image","type","string"),
    input("required",0,"name").
schema("RollingUpdateDeployment") :-
    input("type","object"),
    input("properties","maxSurge","nullable",true),
    input("properties","maxSurge","allOf",0,"$ref","#/components/schemas/IntOrString"),
    input("properties","maxUnavailable","nullable",true),
    input("properties","maxUnavailable","allOf",0,"$ref","#/components/schemas/IntOrString").
schema("Probe") :-
    input("type","object"),
    input("properties","timeoutSeconds","type","integer"),
    input("properties","terminationGracePeriodSeconds","nullable",true),
    input("properties","terminationGracePeriodSeconds","maximum","int(\"9223372036854775807\")"),
    input("properties","terminationGracePeriodSeconds","minimum","int(\"-9223372036854775808\")"),
    input("properties","terminationGracePeriodSeconds","type","integer"),
    input("allOf",0,"$ref","#/components/schemas/ProbeHandler"),
    input("properties","failureThreshold","format","int32"),
    input("properties","failureThreshold","type","integer"),
    input("properties","successThreshold","format","int32"),
    input("properties","successThreshold","type","integer"),
    input("properties","periodSeconds","format","int32"),
    input("properties","periodSeconds","type","integer"),
    input("properties","timeoutSeconds","format","int32"),
    input("properties","initialDelaySeconds","format","int32"),
    input("properties","initialDelaySeconds","type","integer").
schema("PodOS") :-
    input("type","object"),
    input("required",0,"name"),
    input("properties","name","$ref","#/components/schemas/OSName").
schema("DownwardAPIVolumeFile") :-
    input("type","object"),
    input("properties","path","type","string"),
    input("required",0,"path"),
    input("properties","mode","nullable",true),
    input("properties","mode","maximum","int(\"2147483647\")"),
    input("properties","mode","minimum","int(\"-2147483648\")"),
    input("properties","mode","type","integer"),
    input("properties","resourceFieldRef","nullable",true),
    input("properties","resourceFieldRef","allOf",0,"$ref","#/components/schemas/ResourceFieldSelector"),
    input("properties","resourceFieldRef","type","object"),
    input("properties","fieldRef","nullable",true),
    input("properties","fieldRef","allOf",0,"$ref","#/components/schemas/ObjectFieldSelector"),
    input("properties","fieldRef","type","object").
schema("ExecAction") :-
    input("type","object"),
    input("properties","command","items","type","string"),
    input("properties","command","type","array").
schema("AWSElasticBlockStoreVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","partition","format","int32"),
    input("properties","partition","type","integer"),
    input("properties","fsType","type","string"),
    input("properties","volumeID","type","string"),
    input("required",0,"volumeID"),
    input("type","object").
schema("Container") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("properties","tty","type","boolean"),
    input("properties","stdinOnce","type","boolean"),
    input("properties","stdin","type","boolean"),
    input("properties","securityContext","nullable",true),
    input("properties","securityContext","allOf",0,"$ref","#/components/schemas/SecurityContext"),
    input("properties","securityContext","type","object"),
    input("properties","imagePullPolicy","$ref","#/components/schemas/PullPolicy"),
    input("properties","terminationMessagePolicy","$ref","#/components/schemas/TerminationMessagePolicy"),
    input("properties","terminationMessagePath","type","string"),
    input("properties","lifecycle","nullable",true),
    input("properties","lifecycle","allOf",0,"$ref","#/components/schemas/Lifecycle"),
    input("properties","lifecycle","type","object"),
    input("properties","startupProbe","nullable",true),
    input("properties","startupProbe","allOf",0,"$ref","#/components/schemas/Probe"),
    input("properties","startupProbe","type","object"),
    input("properties","readinessProbe","nullable",true),
    input("properties","readinessProbe","allOf",0,"$ref","#/components/schemas/Probe"),
    input("properties","readinessProbe","type","object"),
    input("properties","livenessProbe","nullable",true),
    input("properties","livenessProbe","allOf",0,"$ref","#/components/schemas/Probe"),
    input("properties","livenessProbe","type","object"),
    input("properties","volumeDevices","items","$ref","#/components/schemas/VolumeDevice"),
    input("properties","volumeDevices","type","array"),
    input("properties","volumeMounts","items","$ref","#/components/schemas/VolumeMount"),
    input("properties","volumeMounts","type","array"),
    input("properties","restartPolicy","nullable",true),
    input("properties","restartPolicy","type","string"),
    input("properties","resizePolicy","items","$ref","#/components/schemas/ContainerResizePolicy"),
    input("properties","resizePolicy","type","array"),
    input("properties","resources","$ref","#/components/schemas/ResourceRequirements"),
    input("properties","env","items","$ref","#/components/schemas/EnvVar"),
    input("properties","env","type","array"),
    input("properties","envFrom","items","$ref","#/components/schemas/EnvFromSource"),
    input("properties","envFrom","type","array"),
    input("properties","ports","items","$ref","#/components/schemas/ContainerPort"),
    input("properties","ports","type","array"),
    input("properties","workingDir","type","string"),
    input("properties","args","items","type","string"),
    input("properties","args","type","array"),
    input("properties","command","items","type","string"),
    input("properties","command","type","array"),
    input("properties","image","type","string"),
    input("required",0,"name").
schema("ClaimSource") :-
    input("type","object"),
    input("properties","resourceClaimTemplateName","nullable",true),
    input("properties","resourceClaimTemplateName","type","string"),
    input("properties","resourceClaimName","nullable",true),
    input("properties","resourceClaimName","type","string").
schema("VolumeDevice") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name"),
    input("properties","devicePath","type","string"),
    input("required",1,"devicePath").
schema("SleepAction") :-
    input("type","object"),
    input("properties","seconds","format","int64"),
    input("properties","seconds","type","integer"),
    input("required",0,"seconds").
schema("SecurityContext") :-
    input("type","object"),
    input("properties","appArmorProfile","nullable",true),
    input("properties","appArmorProfile","allOf",0,"$ref","#/components/schemas/AppArmorProfile"),
    input("properties","appArmorProfile","type","object"),
    input("properties","seccompProfile","nullable",true),
    input("properties","seccompProfile","allOf",0,"$ref","#/components/schemas/SeccompProfile"),
    input("properties","seccompProfile","type","object"),
    input("properties","runAsNonRoot","nullable",true),
    input("properties","runAsNonRoot","type","boolean"),
    input("properties","runAsGroup","nullable",true),
    input("properties","runAsGroup","maximum","int(\"9223372036854775807\")"),
    input("properties","runAsGroup","minimum","int(\"-9223372036854775808\")"),
    input("properties","runAsGroup","type","integer"),
    input("properties","runAsUser","nullable",true),
    input("properties","runAsUser","maximum","int(\"9223372036854775807\")"),
    input("properties","runAsUser","minimum","int(\"-9223372036854775808\")"),
    input("properties","runAsUser","type","integer"),
    input("properties","windowsOptions","nullable",true),
    input("properties","windowsOptions","allOf",0,"$ref","#/components/schemas/WindowsSecurityContextOptions"),
    input("properties","windowsOptions","type","object"),
    input("properties","seLinuxOptions","nullable",true),
    input("properties","seLinuxOptions","allOf",0,"$ref","#/components/schemas/SELinuxOptions"),
    input("properties","seLinuxOptions","type","object"),
    input("properties","procMount","nullable",true),
    input("properties","procMount","type","string"),
    input("properties","allowPrivilegeEscalation","nullable",true),
    input("properties","allowPrivilegeEscalation","type","boolean"),
    input("properties","readOnlyRootFilesystem","nullable",true),
    input("properties","readOnlyRootFilesystem","type","boolean"),
    input("properties","privileged","nullable",true),
    input("properties","privileged","type","boolean"),
    input("properties","capabilities","nullable",true),
    input("properties","capabilities","allOf",0,"$ref","#/components/schemas/Capabilities"),
    input("properties","capabilities","type","object").
schema("ResourceFieldSelector") :-
    input("type","object"),
    input("properties","divisor","$ref","#/components/schemas/Quantity"),
    input("properties","resource","type","string"),
    input("properties","containerName","type","string"),
    input("required",0,"resource").
schema("PortworxVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("properties","volumeID","type","string"),
    input("required",0,"volumeID"),
    input("type","object").
schema("PodReadinessGate") :-
    input("type","object"),
    input("properties","conditionType","$ref","#/components/schemas/PodConditionType"),
    input("required",0,"conditionType").
schema("ObjectFieldSelector") :-
    input("type","object"),
    input("properties","apiVersion","type","string"),
    input("properties","fieldPath","type","string"),
    input("required",0,"fieldPath").
schema("EphemeralVolumeSource") :-
    input("type","object"),
    input("properties","volumeClaimTemplate","nullable",true),
    input("properties","volumeClaimTemplate","allOf",0,"$ref","#/components/schemas/PersistentVolumeClaimTemplate"),
    input("properties","volumeClaimTemplate","type","object").
schema("ManagedFieldsEntry") :-
    input("type","object"),
    input("properties","apiVersion","type","string"),
    input("properties","subresource","type","string"),
    input("properties","fieldsV1","nullable",true),
    input("properties","fieldsV1","allOf",0,"$ref","#/components/schemas/FieldsV1"),
    input("properties","fieldsType","type","string"),
    input("properties","time","nullable",true),
    input("properties","time","allOf",0,"$ref","#/components/schemas/Time"),
    input("properties","operation","$ref","#/components/schemas/ManagedFieldsOperationType"),
    input("properties","manager","type","string").
schema("KeyToPath") :-
    input("type","object"),
    input("properties","path","type","string"),
    input("properties","key","type","string"),
    input("properties","mode","nullable",true),
    input("properties","mode","maximum","int(\"2147483647\")"),
    input("properties","mode","minimum","int(\"-2147483648\")"),
    input("properties","mode","type","integer"),
    input("required",1,"path"),
    input("required",0,"key").
schema("GRPCAction") :-
    input("type","object"),
    input("properties","service","nullable",true),
    input("properties","service","type","string"),
    input("properties","port","format","int32"),
    input("properties","port","type","integer"),
    input("required",0,"port").
schema("AppArmorProfile") :-
    input("type","object"),
    input("properties","localhostProfile","nullable",true),
    input("properties","localhostProfile","type","string"),
    input("properties","type","$ref","#/components/schemas/AppArmorProfileType"),
    input("required",0,"type").
schema("DeploymentStrategy") :-
    input("type","object"),
    input("properties","rollingUpdate","nullable",true),
    input("properties","rollingUpdate","allOf",0,"$ref","#/components/schemas/RollingUpdateDeployment"),
    input("properties","rollingUpdate","type","object"),
    input("properties","type","$ref","#/components/schemas/DeploymentStrategyType").
schema("ContainerPort") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("properties","hostIP","type","string"),
    input("properties","protocol","$ref","#/components/schemas/Protocol"),
    input("properties","containerPort","format","int32"),
    input("properties","containerPort","type","integer"),
    input("properties","hostPort","format","int32"),
    input("properties","hostPort","type","integer"),
    input("required",0,"containerPort").
schema("ClientIPConfig") :-
    input("type","object"),
    input("properties","timeoutSeconds","nullable",true),
    input("properties","timeoutSeconds","maximum","int(\"2147483647\")"),
    input("properties","timeoutSeconds","minimum","int(\"-2147483648\")"),
    input("properties","timeoutSeconds","type","integer").
schema("VolumeSource") :-
    input("type","object"),
    input("properties","configMap","nullable",true),
    input("properties","configMap","type","object"),
    input("properties","downwardAPI","nullable",true),
    input("properties","downwardAPI","type","object"),
    input("properties","secret","nullable",true),
    input("properties","secret","type","object"),
    input("properties","ephemeral","nullable",true),
    input("properties","ephemeral","allOf",0,"$ref","#/components/schemas/EphemeralVolumeSource"),
    input("properties","ephemeral","type","object"),
    input("properties","csi","nullable",true),
    input("properties","csi","allOf",0,"$ref","#/components/schemas/CSIVolumeSource"),
    input("properties","csi","type","object"),
    input("properties","storageos","nullable",true),
    input("properties","storageos","allOf",0,"$ref","#/components/schemas/StorageOSVolumeSource"),
    input("properties","storageos","type","object"),
    input("properties","scaleIO","nullable",true),
    input("properties","scaleIO","allOf",0,"$ref","#/components/schemas/ScaleIOVolumeSource"),
    input("properties","scaleIO","type","object"),
    input("properties","portworxVolume","nullable",true),
    input("properties","portworxVolume","allOf",0,"$ref","#/components/schemas/PortworxVolumeSource"),
    input("properties","portworxVolume","type","object"),
    input("properties","projected","nullable",true),
    input("properties","projected","allOf",0,"$ref","#/components/schemas/ProjectedVolumeSource"),
    input("properties","projected","type","object"),
    input("properties","photonPersistentDisk","nullable",true),
    input("properties","photonPersistentDisk","allOf",0,"$ref","#/components/schemas/PhotonPersistentDiskVolumeSource"),
    input("properties","photonPersistentDisk","type","object"),
    input("properties","azureDisk","nullable",true),
    input("properties","azureDisk","allOf",0,"$ref","#/components/schemas/AzureDiskVolumeSource"),
    input("properties","azureDisk","type","object"),
    input("properties","quobyte","nullable",true),
    input("properties","quobyte","allOf",0,"$ref","#/components/schemas/QuobyteVolumeSource"),
    input("properties","quobyte","type","object"),
    input("properties","vsphereVolume","nullable",true),
    input("properties","vsphereVolume","allOf",0,"$ref","#/components/schemas/VsphereVirtualDiskVolumeSource"),
    input("properties","vsphereVolume","type","object"),
    input("properties","configMap","allOf",0,"$ref","#/components/schemas/ConfigMapVolumeSource"),
    input("properties","azureFile","nullable",true),
    input("properties","azureFile","allOf",0,"$ref","#/components/schemas/AzureFileVolumeSource"),
    input("properties","azureFile","type","object"),
    input("properties","fc","nullable",true),
    input("properties","fc","allOf",0,"$ref","#/components/schemas/FCVolumeSource"),
    input("properties","fc","type","object"),
    input("properties","downwardAPI","allOf",0,"$ref","#/components/schemas/DownwardAPIVolumeSource"),
    input("properties","flocker","nullable",true),
    input("properties","flocker","allOf",0,"$ref","#/components/schemas/FlockerVolumeSource"),
    input("properties","flocker","type","object"),
    input("properties","cephfs","nullable",true),
    input("properties","cephfs","allOf",0,"$ref","#/components/schemas/CephFSVolumeSource"),
    input("properties","cephfs","type","object"),
    input("properties","cinder","nullable",true),
    input("properties","cinder","allOf",0,"$ref","#/components/schemas/CinderVolumeSource"),
    input("properties","cinder","type","object"),
    input("properties","flexVolume","nullable",true),
    input("properties","flexVolume","allOf",0,"$ref","#/components/schemas/FlexVolumeSource"),
    input("properties","flexVolume","type","object"),
    input("properties","rbd","nullable",true),
    input("properties","rbd","allOf",0,"$ref","#/components/schemas/RBDVolumeSource"),
    input("properties","rbd","type","object"),
    input("properties","persistentVolumeClaim","nullable",true),
    input("properties","persistentVolumeClaim","allOf",0,"$ref","#/components/schemas/PersistentVolumeClaimVolumeSource"),
    input("properties","persistentVolumeClaim","type","object"),
    input("properties","glusterfs","nullable",true),
    input("properties","glusterfs","allOf",0,"$ref","#/components/schemas/GlusterfsVolumeSource"),
    input("properties","glusterfs","type","object"),
    input("properties","iscsi","nullable",true),
    input("properties","iscsi","allOf",0,"$ref","#/components/schemas/ISCSIVolumeSource"),
    input("properties","iscsi","type","object"),
    input("properties","nfs","nullable",true),
    input("properties","nfs","allOf",0,"$ref","#/components/schemas/NFSVolumeSource"),
    input("properties","nfs","type","object"),
    input("properties","secret","allOf",0,"$ref","#/components/schemas/SecretVolumeSource"),
    input("properties","gitRepo","nullable",true),
    input("properties","gitRepo","allOf",0,"$ref","#/components/schemas/GitRepoVolumeSource"),
    input("properties","gitRepo","type","object"),
    input("properties","awsElasticBlockStore","nullable",true),
    input("properties","awsElasticBlockStore","allOf",0,"$ref","#/components/schemas/AWSElasticBlockStoreVolumeSource"),
    input("properties","awsElasticBlockStore","type","object"),
    input("properties","gcePersistentDisk","nullable",true),
    input("properties","gcePersistentDisk","allOf",0,"$ref","#/components/schemas/GCEPersistentDiskVolumeSource"),
    input("properties","gcePersistentDisk","type","object"),
    input("properties","emptyDir","nullable",true),
    input("properties","emptyDir","allOf",0,"$ref","#/components/schemas/EmptyDirVolumeSource"),
    input("properties","emptyDir","type","object"),
    input("properties","hostPath","nullable",true),
    input("properties","hostPath","allOf",0,"$ref","#/components/schemas/HostPathVolumeSource"),
    input("properties","hostPath","type","object").
schema("ScaleIOVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object"),
    input("properties","volumeName","type","string"),
    input("properties","storageMode","type","string"),
    input("properties","storagePool","type","string"),
    input("properties","protectionDomain","type","string"),
    input("properties","sslEnabled","type","boolean"),
    input("properties","system","type","string"),
    input("properties","gateway","type","string"),
    input("required",1,"system"),
    input("required",0,"gateway").
schema("TypeMeta") :-
    input("type","object"),
    input("properties","kind","type","string"),
    input("properties","apiVersion","type","string").
schema("ServiceSpec") :-
    input("type","object"),
    input("properties","ports","type","array"),
    input("properties","selector","type","object"),
    input("properties","trafficDistribution","nullable",true),
    input("properties","trafficDistribution","type","string"),
    input("properties","internalTrafficPolicy","nullable",true),
    input("properties","internalTrafficPolicy","type","string"),
    input("properties","loadBalancerClass","nullable",true),
    input("properties","loadBalancerClass","type","string"),
    input("properties","allocateLoadBalancerNodePorts","nullable",true),
    input("properties","allocateLoadBalancerNodePorts","type","boolean"),
    input("properties","ipFamilyPolicy","nullable",true),
    input("properties","ipFamilyPolicy","type","string"),
    input("properties","ipFamilies","items","$ref","#/components/schemas/IPFamily"),
    input("properties","ipFamilies","type","array"),
    input("properties","sessionAffinityConfig","nullable",true),
    input("properties","sessionAffinityConfig","allOf",0,"$ref","#/components/schemas/SessionAffinityConfig"),
    input("properties","sessionAffinityConfig","type","object"),
    input("properties","publishNotReadyAddresses","type","boolean"),
    input("properties","healthCheckNodePort","format","int32"),
    input("properties","healthCheckNodePort","type","integer"),
    input("properties","externalTrafficPolicy","$ref","#/components/schemas/ServiceExternalTrafficPolicy"),
    input("properties","externalName","type","string"),
    input("properties","loadBalancerSourceRanges","items","type","string"),
    input("properties","loadBalancerSourceRanges","type","array"),
    input("properties","loadBalancerIP","type","string"),
    input("properties","sessionAffinity","$ref","#/components/schemas/ServiceAffinity"),
    input("properties","externalIPs","items","type","string"),
    input("properties","externalIPs","type","array"),
    input("properties","type","$ref","#/components/schemas/ServiceType"),
    input("properties","clusterIPs","items","type","string"),
    input("properties","clusterIPs","type","array"),
    input("properties","clusterIP","type","string"),
    input("properties","selector","additionalProperties","type","string"),
    input("properties","ports","items","$ref","#/components/schemas/ServicePort").
schema("PodAntiAffinity") :-
    input("type","object"),
    input("properties","preferredDuringSchedulingIgnoredDuringExecution","type","array"),
    input("properties","preferredDuringSchedulingIgnoredDuringExecution","items","$ref","#/components/schemas/WeightedPodAffinityTerm"),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","items","$ref","#/components/schemas/PodAffinityTerm"),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","type","array").
schema("PodSecurityContext") :-
    input("type","object"),
    input("properties","appArmorProfile","nullable",true),
    input("properties","appArmorProfile","allOf",0,"$ref","#/components/schemas/AppArmorProfile"),
    input("properties","appArmorProfile","type","object"),
    input("properties","seccompProfile","nullable",true),
    input("properties","seccompProfile","allOf",0,"$ref","#/components/schemas/SeccompProfile"),
    input("properties","seccompProfile","type","object"),
    input("properties","fsGroupChangePolicy","nullable",true),
    input("properties","fsGroupChangePolicy","type","string"),
    input("properties","sysctls","items","$ref","#/components/schemas/Sysctl"),
    input("properties","sysctls","type","array"),
    input("properties","fsGroup","nullable",true),
    input("properties","fsGroup","maximum","int(\"9223372036854775807\")"),
    input("properties","fsGroup","minimum","int(\"-9223372036854775808\")"),
    input("properties","fsGroup","type","integer"),
    input("properties","supplementalGroups","items","format","int64"),
    input("properties","supplementalGroups","items","type","integer"),
    input("properties","supplementalGroups","type","array"),
    input("properties","runAsNonRoot","nullable",true),
    input("properties","runAsNonRoot","type","boolean"),
    input("properties","runAsGroup","nullable",true),
    input("properties","runAsGroup","maximum","int(\"9223372036854775807\")"),
    input("properties","runAsGroup","minimum","int(\"-9223372036854775808\")"),
    input("properties","runAsGroup","type","integer"),
    input("properties","runAsUser","nullable",true),
    input("properties","runAsUser","maximum","int(\"9223372036854775807\")"),
    input("properties","runAsUser","minimum","int(\"-9223372036854775808\")"),
    input("properties","runAsUser","type","integer"),
    input("properties","windowsOptions","nullable",true),
    input("properties","windowsOptions","allOf",0,"$ref","#/components/schemas/WindowsSecurityContextOptions"),
    input("properties","windowsOptions","type","object"),
    input("properties","seLinuxOptions","nullable",true),
    input("properties","seLinuxOptions","allOf",0,"$ref","#/components/schemas/SELinuxOptions"),
    input("properties","seLinuxOptions","type","object").
schema("ProjectedVolumeSource") :-
    input("type","object"),
    input("properties","defaultMode","nullable",true),
    input("properties","defaultMode","maximum","int(\"2147483647\")"),
    input("properties","defaultMode","minimum","int(\"-2147483648\")"),
    input("properties","defaultMode","type","integer"),
    input("properties","sources","items","$ref","#/components/schemas/VolumeProjection"),
    input("properties","sources","type","array").
schema("PodAffinity") :-
    input("type","object"),
    input("properties","preferredDuringSchedulingIgnoredDuringExecution","type","array"),
    input("properties","preferredDuringSchedulingIgnoredDuringExecution","items","$ref","#/components/schemas/WeightedPodAffinityTerm"),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","items","$ref","#/components/schemas/PodAffinityTerm"),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","type","array").
schema("FlockerVolumeSource") :-
    input("type","object"),
    input("properties","datasetUUID","type","string"),
    input("properties","datasetName","type","string").
schema("EnvVar") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name"),
    input("properties","valueFrom","nullable",true),
    input("properties","valueFrom","allOf",0,"$ref","#/components/schemas/EnvVarSource"),
    input("properties","valueFrom","type","object"),
    input("properties","value","type","string").
schema("LoadBalancerIngress") :-
    input("type","object"),
    input("properties","ports","type","array"),
    input("properties","ip","type","string"),
    input("properties","ports","items","$ref","#/components/schemas/PortStatus"),
    input("properties","ipMode","nullable",true),
    input("properties","ipMode","type","string"),
    input("properties","hostname","type","string").
schema("NodeSelectorTerm") :-
    input("type","object"),
    input("properties","matchExpressions","type","array"),
    input("properties","matchFields","items","$ref","#/components/schemas/NodeSelectorRequirement"),
    input("properties","matchFields","type","array"),
    input("properties","matchExpressions","items","$ref","#/components/schemas/NodeSelectorRequirement").
schema("HostPathVolumeSource") :-
    input("type","object"),
    input("properties","path","type","string"),
    input("required",0,"path"),
    input("properties","type","type","string"),
    input("properties","type","nullable",true).
schema("DeploymentSpec") :-
    input("type","object"),
    input("properties","progressDeadlineSeconds","nullable",true),
    input("properties","progressDeadlineSeconds","maximum","int(\"2147483647\")"),
    input("properties","progressDeadlineSeconds","minimum","int(\"-2147483648\")"),
    input("properties","progressDeadlineSeconds","type","integer"),
    input("properties","paused","type","boolean"),
    input("properties","revisionHistoryLimit","nullable",true),
    input("properties","revisionHistoryLimit","maximum","int(\"2147483647\")"),
    input("properties","revisionHistoryLimit","minimum","int(\"-2147483648\")"),
    input("properties","revisionHistoryLimit","type","integer"),
    input("properties","minReadySeconds","format","int32"),
    input("properties","minReadySeconds","type","integer"),
    input("properties","strategy","$ref","#/components/schemas/DeploymentStrategy"),
    input("properties","template","$ref","#/components/schemas/PodTemplateSpec"),
    input("properties","selector","nullable",true),
    input("properties","selector","allOf",0,"$ref","#/components/schemas/LabelSelector"),
    input("properties","selector","type","object"),
    input("properties","replicas","nullable",true),
    input("properties","replicas","maximum","int(\"2147483647\")"),
    input("properties","replicas","minimum","int(\"-2147483648\")"),
    input("properties","replicas","type","integer"),
    input("required",0,"template").
schema("Affinity") :-
    input("type","object"),
    input("properties","podAntiAffinity","nullable",true),
    input("properties","podAntiAffinity","allOf",0,"$ref","#/components/schemas/PodAntiAffinity"),
    input("properties","podAntiAffinity","type","object"),
    input("properties","podAffinity","nullable",true),
    input("properties","podAffinity","allOf",0,"$ref","#/components/schemas/PodAffinity"),
    input("properties","podAffinity","type","object"),
    input("properties","nodeAffinity","nullable",true),
    input("properties","nodeAffinity","allOf",0,"$ref","#/components/schemas/NodeAffinity"),
    input("properties","nodeAffinity","type","object").
schema("SecretProjection") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","items","items","$ref","#/components/schemas/KeyToPath"),
    input("properties","items","type","array").
schema("ConfigMapProjection") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","items","items","$ref","#/components/schemas/KeyToPath"),
    input("properties","items","type","array").
schema("CephFSVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object"),
    input("properties","secretFile","type","string"),
    input("properties","user","type","string"),
    input("properties","path","type","string"),
    input("properties","monitors","items","type","string"),
    input("properties","monitors","type","array"),
    input("required",0,"monitors").
schema("VolumeProjection") :-
    input("type","object"),
    input("properties","clusterTrustBundle","nullable",true),
    input("properties","clusterTrustBundle","allOf",0,"$ref","#/components/schemas/ClusterTrustBundleProjection"),
    input("properties","clusterTrustBundle","type","object"),
    input("properties","serviceAccountToken","nullable",true),
    input("properties","serviceAccountToken","allOf",0,"$ref","#/components/schemas/ServiceAccountTokenProjection"),
    input("properties","serviceAccountToken","type","object"),
    input("properties","configMap","nullable",true),
    input("properties","configMap","allOf",0,"$ref","#/components/schemas/ConfigMapProjection"),
    input("properties","configMap","type","object"),
    input("properties","downwardAPI","nullable",true),
    input("properties","downwardAPI","allOf",0,"$ref","#/components/schemas/DownwardAPIProjection"),
    input("properties","downwardAPI","type","object"),
    input("properties","secret","nullable",true),
    input("properties","secret","allOf",0,"$ref","#/components/schemas/SecretProjection"),
    input("properties","secret","type","object").
schema("PodResourceClaim") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name"),
    input("properties","source","$ref","#/components/schemas/ClaimSource").
schema("Toleration") :-
    input("type","object"),
    input("properties","key","type","string"),
    input("properties","value","type","string"),
    input("properties","tolerationSeconds","nullable",true),
    input("properties","tolerationSeconds","maximum","int(\"9223372036854775807\")"),
    input("properties","tolerationSeconds","minimum","int(\"-9223372036854775808\")"),
    input("properties","tolerationSeconds","type","integer"),
    input("properties","effect","$ref","#/components/schemas/TaintEffect"),
    input("properties","operator","$ref","#/components/schemas/TolerationOperator").
schema("Service0") :-
    input("type","object"),
    input("properties","kind","type","string"),
    input("allOf",1,"required",3,"spec"),
    input("allOf",1,"required",2,"metadata"),
    input("allOf",1,"required",1,"kind"),
    input("allOf",1,"required",0,"apiVersion"),
    input("properties","spec","properties","selector","type","object"),
    input("properties","spec","type","object"),
    input("properties","metadata","properties","name","type","string"),
    input("properties","metadata","required",0,"name"),
    input("properties","metadata","type","object"),
    input("properties","apiVersion","type","string"),
    input("allOf",0,"$ref","#/components/schemas/Service"),
    input("properties","spec","properties","ports","default",0,"targetPort","int(\"8080\")"),
    input("properties","spec","properties","ports","default",0,"port","int(\"80\")"),
    input("properties","spec","properties","ports","default",0,"protocol","TCP"),
    input("properties","spec","properties","ports","items",0,"properties","targetPort","enum",0,"int(\"8080\")"),
    input("properties","spec","properties","ports","items",0,"properties","targetPort","type","integer"),
    input("properties","spec","properties","ports","items",0,"properties","port","enum",0,"int(\"80\")"),
    input("properties","spec","properties","ports","items",0,"properties","port","type","integer"),
    input("properties","spec","properties","ports","items",0,"properties","protocol","enum",0,"TCP"),
    input("properties","spec","properties","ports","items",0,"properties","protocol","type","string"),
    input("properties","spec","properties","ports","items",0,"required",2,"targetPort"),
    input("properties","spec","properties","ports","items",0,"required",1,"port"),
    input("properties","spec","properties","ports","items",0,"required",0,"protocol"),
    input("properties","spec","properties","ports","items",0,"type","object"),
    input("properties","spec","properties","ports","type","array"),
    input("properties","spec","properties","selector","properties","app","enum",0,"MyApp"),
    input("properties","spec","properties","selector","properties","app","type","string"),
    input("properties","spec","properties","selector","required",0,"app"),
    input("properties","spec","required",1,"ports"),
    input("properties","spec","required",0,"selector"),
    input("properties","metadata","properties","name","enum",0,"simple-service"),
    input("properties","kind","enum",0,"Service"),
    input("properties","apiVersion","enum",0,"v1").
schema("ResourceList") :-
    input("type","object"),
    input("additionalProperties","$ref","#/components/schemas/Quantity").
schema("PreferredSchedulingTerm") :-
    input("type","object"),
    input("properties","preference","$ref","#/components/schemas/NodeSelectorTerm"),
    input("properties","weight","format","int32"),
    input("properties","weight","type","integer"),
    input("required",1,"preference"),
    input("required",0,"weight").
schema("EphemeralContainer") :-
    input("type","object"),
    input("allOf",0,"$ref","#/components/schemas/EphemeralContainerCommon"),
    input("properties","targetContainerName","type","string").
schema("NodeAffinity") :-
    input("type","object"),
    input("properties","preferredDuringSchedulingIgnoredDuringExecution","items","$ref","#/components/schemas/PreferredSchedulingTerm"),
    input("properties","preferredDuringSchedulingIgnoredDuringExecution","type","array"),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","nullable",true),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","allOf",0,"$ref","#/components/schemas/NodeSelector"),
    input("properties","requiredDuringSchedulingIgnoredDuringExecution","type","object").
schema("LabelSelectorRequirement") :-
    input("type","object"),
    input("properties","key","type","string"),
    input("required",0,"key"),
    input("properties","values","items","type","string"),
    input("properties","values","type","array"),
    input("properties","operator","$ref","#/components/schemas/LabelSelectorOperator"),
    input("required",1,"operator").
schema("PersistentVolumeClaimVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","claimName","type","string"),
    input("required",0,"claimName").
schema("GlusterfsVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","path","type","string"),
    input("properties","endpoints","type","string"),
    input("required",1,"path"),
    input("required",0,"endpoints").
schema("AzureDiskVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","kind","nullable",true),
    input("properties","kind","type","string"),
    input("properties","readOnly","nullable",true),
    input("properties","fsType","nullable",true),
    input("properties","cachingMode","nullable",true),
    input("properties","cachingMode","type","string"),
    input("properties","diskURI","type","string"),
    input("properties","diskName","type","string"),
    input("required",1,"diskURI"),
    input("required",0,"diskName").
schema("DownwardAPIProjection") :-
    input("type","object"),
    input("properties","items","type","array"),
    input("properties","items","items","$ref","#/components/schemas/DownwardAPIVolumeFile").
schema("ContainerResizePolicy") :-
    input("type","object"),
    input("properties","restartPolicy","$ref","#/components/schemas/ResourceResizeRestartPolicy"),
    input("properties","resourceName","$ref","#/components/schemas/ResourceName"),
    input("required",1,"restartPolicy"),
    input("required",0,"resourceName").
schema("Condition") :-
    input("type","object"),
    input("required",0,"type"),
    input("properties","message","type","string"),
    input("properties","reason","type","string"),
    input("properties","lastTransitionTime","$ref","#/components/schemas/Time"),
    input("properties","observedGeneration","format","int64"),
    input("properties","observedGeneration","type","integer"),
    input("properties","status","$ref","#/components/schemas/ConditionStatus"),
    input("properties","type","type","string"),
    input("required",4,"message"),
    input("required",3,"reason"),
    input("required",2,"lastTransitionTime"),
    input("required",1,"status").
schema("WindowsSecurityContextOptions") :-
    input("type","object"),
    input("properties","hostProcess","nullable",true),
    input("properties","hostProcess","type","boolean"),
    input("properties","runAsUserName","nullable",true),
    input("properties","runAsUserName","type","string"),
    input("properties","gmsaCredentialSpec","nullable",true),
    input("properties","gmsaCredentialSpec","type","string"),
    input("properties","gmsaCredentialSpecName","nullable",true),
    input("properties","gmsaCredentialSpecName","type","string").
schema("ProbeHandler") :-
    input("type","object"),
    input("properties","tcpSocket","nullable",true),
    input("properties","tcpSocket","allOf",0,"$ref","#/components/schemas/TCPSocketAction"),
    input("properties","tcpSocket","type","object"),
    input("properties","httpGet","nullable",true),
    input("properties","httpGet","allOf",0,"$ref","#/components/schemas/HTTPGetAction"),
    input("properties","httpGet","type","object"),
    input("properties","exec","nullable",true),
    input("properties","exec","allOf",0,"$ref","#/components/schemas/ExecAction"),
    input("properties","exec","type","object"),
    input("properties","grpc","nullable",true),
    input("properties","grpc","allOf",0,"$ref","#/components/schemas/GRPCAction"),
    input("properties","grpc","type","object").
schema("Volume") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("allOf",1,"required",0,"name"),
    input("allOf",0,"$ref","#/components/schemas/VolumeSource").
schema("StorageOSVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object"),
    input("properties","volumeName","type","string"),
    input("properties","volumeNamespace","type","string").
schema("Service") :-
    input("type","object"),
    input("allOf",0,"$ref","#/components/schemas/TypeMeta"),
    input("properties","metadata","$ref","#/components/schemas/ObjectMeta"),
    input("properties","status","$ref","#/components/schemas/ServiceStatus"),
    input("properties","spec","$ref","#/components/schemas/ServiceSpec").
schema("ResourceRequirements") :-
    input("type","object"),
    input("properties","claims","items","$ref","#/components/schemas/ResourceClaim"),
    input("properties","claims","type","array"),
    input("properties","requests","$ref","#/components/schemas/ResourceList"),
    input("properties","limits","$ref","#/components/schemas/ResourceList").
schema("LifecycleHandler") :-
    input("type","object"),
    input("properties","sleep","nullable",true),
    input("properties","sleep","allOf",0,"$ref","#/components/schemas/SleepAction"),
    input("properties","sleep","type","object"),
    input("properties","tcpSocket","nullable",true),
    input("properties","tcpSocket","allOf",0,"$ref","#/components/schemas/TCPSocketAction"),
    input("properties","tcpSocket","type","object"),
    input("properties","httpGet","nullable",true),
    input("properties","httpGet","allOf",0,"$ref","#/components/schemas/HTTPGetAction"),
    input("properties","httpGet","type","object"),
    input("properties","exec","nullable",true),
    input("properties","exec","allOf",0,"$ref","#/components/schemas/ExecAction"),
    input("properties","exec","type","object").
schema("ResourceClaim") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name").
schema("PodSchedulingGate") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name").
schema("PhotonPersistentDiskVolumeSource") :-
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","pdID","type","string"),
    input("required",0,"pdID").
schema("NodeSelectorRequirement") :-
    input("type","object"),
    input("properties","key","type","string"),
    input("required",0,"key"),
    input("properties","values","items","type","string"),
    input("properties","values","type","array"),
    input("required",1,"operator"),
    input("properties","operator","$ref","#/components/schemas/NodeSelectorOperator").
schema("AppArmorProfileType") :-
    input("type","string").
schema("ConditionStatus") :-
    input("type","string").
schema("DNSPolicy") :-
    input("type","string").
schema("DeploymentStrategyType") :-
    input("type","string").
schema("LabelSelectorOperator") :-
    input("type","string").
schema("DeploymentConditionType") :-
    input("type","string").
schema("IPFamily") :-
    input("type","string").
schema("OSName") :-
    input("type","string").
schema("PodConditionType") :-
    input("type","string").
schema("NodeSelectorOperator") :-
    input("type","string").
schema("PersistentVolumeAccessMode") :-
    input("type","string").
schema("Protocol") :-
    input("type","string").
schema("ResourceName") :-
    input("type","string").
schema("RestartPolicy") :-
    input("type","string").
schema("PullPolicy") :-
    input("type","string").
schema("ResourceResizeRestartPolicy") :-
    input("type","string").
schema("SeccompProfileType") :-
    input("type","string").
schema("ServiceExternalTrafficPolicy") :-
    input("type","string").
schema("ManagedFieldsOperationType") :-
    input("type","string").
schema("StorageMedium") :-
    input("type","string").
schema("ServiceAffinity") :-
    input("type","string").
schema("ServiceType") :-
    input("type","string").
schema("TaintEffect") :-
    input("type","string").
schema("UID") :-
    input("type","string").
schema("TerminationMessagePolicy") :-
    input("type","string").
schema("URIScheme") :-
    input("type","string").
schema("TolerationOperator") :-
    input("type","string").
schema("UnsatisfiableConstraintAction") :-
    input("type","string").
schema("Capability") :-
    input("type","string").
schema("HostAlias") :-
    input("type","object"),
    input("properties","hostnames","items","type","string"),
    input("properties","hostnames","type","array"),
    input("properties","ip","type","string").
schema("FlexVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","driver","type","string"),
    input("required",0,"driver"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object"),
    input("properties","options","additionalProperties","type","string"),
    input("properties","options","type","object").
schema("EnvFromSource") :-
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","type","object"),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/SecretEnvSource"),
    input("properties","configMapRef","nullable",true),
    input("properties","configMapRef","allOf",0,"$ref","#/components/schemas/ConfigMapEnvSource"),
    input("properties","configMapRef","type","object"),
    input("properties","prefix","type","string").
schema("ConfigMapKeySelector") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("allOf",1,"required",0,"key"),
    input("properties","key","type","string").
schema("DeploymentCondition") :-
    input("type","object"),
    input("required",0,"type"),
    input("properties","message","type","string"),
    input("properties","reason","type","string"),
    input("properties","lastTransitionTime","$ref","#/components/schemas/Time"),
    input("properties","status","$ref","#/components/schemas/ConditionStatus"),
    input("required",1,"status"),
    input("properties","lastUpdateTime","$ref","#/components/schemas/Time"),
    input("properties","type","$ref","#/components/schemas/DeploymentConditionType").
schema("SecretKeySelector") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("allOf",1,"required",0,"key"),
    input("properties","key","type","string").
schema("SessionAffinityConfig") :-
    input("type","object"),
    input("properties","clientIP","nullable",true),
    input("properties","clientIP","allOf",0,"$ref","#/components/schemas/ClientIPConfig"),
    input("properties","clientIP","type","object").
schema("SecretVolumeSource") :-
    input("type","object"),
    input("properties","secretName","type","string"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("properties","items","items","$ref","#/components/schemas/KeyToPath"),
    input("properties","items","type","array"),
    input("properties","defaultMode","nullable",true),
    input("properties","defaultMode","maximum","int(\"2147483647\")"),
    input("properties","defaultMode","minimum","int(\"-2147483648\")"),
    input("properties","defaultMode","type","integer").
schema("PodSpec") :-
    input("type","object"),
    input("properties","securityContext","nullable",true),
    input("properties","securityContext","type","object"),
    input("properties","hostname","type","string"),
    input("properties","resourceClaims","items","$ref","#/components/schemas/PodResourceClaim"),
    input("properties","resourceClaims","type","array"),
    input("properties","schedulingGates","items","$ref","#/components/schemas/PodSchedulingGate"),
    input("properties","schedulingGates","type","array"),
    input("properties","hostUsers","nullable",true),
    input("properties","hostUsers","type","boolean"),
    input("properties","os","nullable",true),
    input("properties","os","allOf",0,"$ref","#/components/schemas/PodOS"),
    input("properties","os","type","object"),
    input("properties","setHostnameAsFQDN","nullable",true),
    input("properties","setHostnameAsFQDN","type","boolean"),
    input("properties","topologySpreadConstraints","items","$ref","#/components/schemas/TopologySpreadConstraint"),
    input("properties","topologySpreadConstraints","type","array"),
    input("properties","overhead","$ref","#/components/schemas/ResourceList"),
    input("properties","preemptionPolicy","nullable",true),
    input("properties","preemptionPolicy","type","string"),
    input("properties","enableServiceLinks","nullable",true),
    input("properties","enableServiceLinks","type","boolean"),
    input("properties","runtimeClassName","nullable",true),
    input("properties","runtimeClassName","type","string"),
    input("properties","readinessGates","items","$ref","#/components/schemas/PodReadinessGate"),
    input("properties","readinessGates","type","array"),
    input("properties","dnsConfig","nullable",true),
    input("properties","dnsConfig","allOf",0,"$ref","#/components/schemas/PodDNSConfig"),
    input("properties","dnsConfig","type","object"),
    input("properties","priority","nullable",true),
    input("properties","priority","maximum","int(\"2147483647\")"),
    input("properties","priority","minimum","int(\"-2147483648\")"),
    input("properties","priority","type","integer"),
    input("properties","priorityClassName","type","string"),
    input("properties","hostAliases","items","$ref","#/components/schemas/HostAlias"),
    input("properties","hostAliases","type","array"),
    input("properties","tolerations","items","$ref","#/components/schemas/Toleration"),
    input("properties","tolerations","type","array"),
    input("properties","schedulerName","type","string"),
    input("properties","affinity","nullable",true),
    input("properties","affinity","allOf",0,"$ref","#/components/schemas/Affinity"),
    input("properties","affinity","type","object"),
    input("properties","subdomain","type","string"),
    input("properties","imagePullSecrets","items","$ref","#/components/schemas/LocalObjectReference"),
    input("properties","imagePullSecrets","type","array"),
    input("properties","securityContext","allOf",0,"$ref","#/components/schemas/PodSecurityContext"),
    input("properties","shareProcessNamespace","nullable",true),
    input("properties","shareProcessNamespace","type","boolean"),
    input("properties","hostIPC","type","boolean"),
    input("properties","hostPID","type","boolean"),
    input("properties","hostNetwork","type","boolean"),
    input("properties","nodeName","type","string"),
    input("properties","automountServiceAccountToken","nullable",true),
    input("properties","automountServiceAccountToken","type","boolean"),
    input("properties","serviceAccount","type","string"),
    input("properties","serviceAccountName","type","string"),
    input("properties","nodeSelector","additionalProperties","type","string"),
    input("properties","nodeSelector","type","object"),
    input("properties","dnsPolicy","$ref","#/components/schemas/DNSPolicy"),
    input("properties","activeDeadlineSeconds","nullable",true),
    input("properties","activeDeadlineSeconds","maximum","int(\"9223372036854775807\")"),
    input("properties","activeDeadlineSeconds","minimum","int(\"-9223372036854775808\")"),
    input("properties","activeDeadlineSeconds","type","integer"),
    input("properties","terminationGracePeriodSeconds","nullable",true),
    input("properties","terminationGracePeriodSeconds","maximum","int(\"9223372036854775807\")"),
    input("properties","terminationGracePeriodSeconds","minimum","int(\"-9223372036854775808\")"),
    input("properties","terminationGracePeriodSeconds","type","integer"),
    input("properties","restartPolicy","$ref","#/components/schemas/RestartPolicy"),
    input("properties","ephemeralContainers","items","$ref","#/components/schemas/EphemeralContainer"),
    input("properties","ephemeralContainers","type","array"),
    input("properties","containers","items","$ref","#/components/schemas/Container"),
    input("properties","containers","type","array"),
    input("properties","initContainers","items","$ref","#/components/schemas/Container"),
    input("properties","initContainers","type","array"),
    input("properties","volumes","items","$ref","#/components/schemas/Volume"),
    input("properties","volumes","type","array"),
    input("required",0,"containers").
schema("RBDVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object"),
    input("properties","user","type","string"),
    input("properties","monitors","items","type","string"),
    input("properties","monitors","type","array"),
    input("required",0,"monitors"),
    input("properties","image","type","string"),
    input("properties","keyring","type","string"),
    input("properties","pool","type","string"),
    input("required",1,"image").
schema("PodDNSConfig") :-
    input("type","object"),
    input("properties","options","items","$ref","#/components/schemas/PodDNSConfigOption"),
    input("properties","options","type","array"),
    input("properties","searches","items","type","string"),
    input("properties","searches","type","array"),
    input("properties","nameservers","items","type","string"),
    input("properties","nameservers","type","array").
schema("WeightedPodAffinityTerm") :-
    input("type","object"),
    input("properties","weight","format","int32"),
    input("properties","weight","type","integer"),
    input("required",0,"weight"),
    input("properties","podAffinityTerm","$ref","#/components/schemas/PodAffinityTerm"),
    input("required",1,"podAffinityTerm").
schema("TypedObjectReference") :-
    input("type","object"),
    input("properties","kind","type","string"),
    input("properties","name","type","string"),
    input("properties","namespace","type","string"),
    input("properties","apiGroup","nullable",true),
    input("properties","apiGroup","type","string"),
    input("required",1,"name"),
    input("required",0,"kind"),
    input("properties","namespace","nullable",true).
schema("ISCSIVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object"),
    input("properties","lun","type","integer"),
    input("properties","initiatorName","nullable",true),
    input("properties","initiatorName","type","string"),
    input("properties","chapAuthSession","type","boolean"),
    input("properties","chapAuthDiscovery","type","boolean"),
    input("properties","portals","items","type","string"),
    input("properties","portals","type","array"),
    input("properties","iscsiInterface","type","string"),
    input("properties","lun","format","int32"),
    input("properties","iqn","type","string"),
    input("properties","targetPortal","type","string"),
    input("required",2,"lun"),
    input("required",1,"iqn"),
    input("required",0,"targetPortal").
schema("ObjectMeta") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("properties","managedFields","items","$ref","#/components/schemas/ManagedFieldsEntry"),
    input("properties","managedFields","type","array"),
    input("properties","finalizers","items","type","string"),
    input("properties","finalizers","type","array"),
    input("properties","ownerReferences","items","$ref","#/components/schemas/OwnerReference"),
    input("properties","ownerReferences","type","array"),
    input("properties","annotations","additionalProperties","type","string"),
    input("properties","annotations","type","object"),
    input("properties","labels","additionalProperties","type","string"),
    input("properties","labels","type","object"),
    input("properties","deletionGracePeriodSeconds","nullable",true),
    input("properties","deletionGracePeriodSeconds","maximum","int(\"9223372036854775807\")"),
    input("properties","deletionGracePeriodSeconds","minimum","int(\"-9223372036854775808\")"),
    input("properties","deletionGracePeriodSeconds","type","integer"),
    input("properties","deletionTimestamp","nullable",true),
    input("properties","deletionTimestamp","allOf",0,"$ref","#/components/schemas/Time"),
    input("properties","creationTimestamp","$ref","#/components/schemas/Time"),
    input("properties","generation","format","int64"),
    input("properties","generation","type","integer"),
    input("properties","resourceVersion","type","string"),
    input("properties","uid","$ref","#/components/schemas/UID"),
    input("properties","selfLink","type","string"),
    input("properties","namespace","type","string"),
    input("properties","generateName","type","string").
schema("LocalObjectReference") :-
    input("type","object"),
    input("properties","name","type","string").
schema("GCEPersistentDiskVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","partition","format","int32"),
    input("properties","partition","type","integer"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","pdName","type","string"),
    input("required",0,"pdName").
schema("EnvVarSource") :-
    input("type","object"),
    input("properties","resourceFieldRef","nullable",true),
    input("properties","resourceFieldRef","allOf",0,"$ref","#/components/schemas/ResourceFieldSelector"),
    input("properties","resourceFieldRef","type","object"),
    input("properties","fieldRef","nullable",true),
    input("properties","fieldRef","allOf",0,"$ref","#/components/schemas/ObjectFieldSelector"),
    input("properties","fieldRef","type","object"),
    input("properties","secretKeyRef","nullable",true),
    input("properties","secretKeyRef","allOf",0,"$ref","#/components/schemas/SecretKeySelector"),
    input("properties","secretKeyRef","type","object"),
    input("properties","configMapKeyRef","nullable",true),
    input("properties","configMapKeyRef","allOf",0,"$ref","#/components/schemas/ConfigMapKeySelector"),
    input("properties","configMapKeyRef","type","object").
schema("CSIVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","readOnly","nullable",true),
    input("properties","fsType","nullable",true),
    input("properties","nodePublishSecretRef","nullable",true),
    input("properties","nodePublishSecretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","nodePublishSecretRef","type","object"),
    input("properties","volumeAttributes","additionalProperties","type","string"),
    input("properties","volumeAttributes","type","object"),
    input("properties","driver","type","string"),
    input("required",0,"driver").
schema("DeploymentStatus") :-
    input("type","object"),
    input("properties","observedGeneration","format","int64"),
    input("properties","observedGeneration","type","integer"),
    input("properties","replicas","type","integer"),
    input("properties","collisionCount","nullable",true),
    input("properties","collisionCount","maximum","int(\"2147483647\")"),
    input("properties","collisionCount","minimum","int(\"-2147483648\")"),
    input("properties","collisionCount","type","integer"),
    input("properties","conditions","items","$ref","#/components/schemas/DeploymentCondition"),
    input("properties","conditions","type","array"),
    input("properties","unavailableReplicas","format","int32"),
    input("properties","unavailableReplicas","type","integer"),
    input("properties","availableReplicas","format","int32"),
    input("properties","availableReplicas","type","integer"),
    input("properties","readyReplicas","format","int32"),
    input("properties","readyReplicas","type","integer"),
    input("properties","updatedReplicas","format","int32"),
    input("properties","updatedReplicas","type","integer"),
    input("properties","replicas","format","int32").
schema("ConfigMapVolumeSource") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","items","items","$ref","#/components/schemas/KeyToPath"),
    input("properties","items","type","array"),
    input("properties","defaultMode","nullable",true),
    input("properties","defaultMode","maximum","int(\"2147483647\")"),
    input("properties","defaultMode","minimum","int(\"-2147483648\")"),
    input("properties","defaultMode","type","integer").
schema("CinderVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("properties","volumeID","type","string"),
    input("required",0,"volumeID"),
    input("type","object"),
    input("properties","secretRef","nullable",true),
    input("properties","secretRef","allOf",0,"$ref","#/components/schemas/LocalObjectReference"),
    input("properties","secretRef","type","object").
schema("SeccompProfile") :-
    input("type","object"),
    input("properties","localhostProfile","nullable",true),
    input("properties","localhostProfile","type","string"),
    input("required",0,"type"),
    input("properties","type","$ref","#/components/schemas/SeccompProfileType").
schema("VsphereVirtualDiskVolumeSource") :-
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","storagePolicyID","type","string"),
    input("properties","storagePolicyName","type","string"),
    input("properties","volumePath","type","string"),
    input("required",0,"volumePath").
schema("TypedLocalObjectReference") :-
    input("type","object"),
    input("properties","kind","type","string"),
    input("properties","name","type","string"),
    input("properties","apiGroup","nullable",true),
    input("properties","apiGroup","type","string"),
    input("required",1,"name"),
    input("required",0,"kind").
schema("ServiceStatus") :-
    input("type","object"),
    input("properties","conditions","type","array"),
    input("properties","conditions","items","$ref","#/components/schemas/Condition"),
    input("properties","loadBalancer","$ref","#/components/schemas/LoadBalancerStatus").
schema("OwnerReference") :-
    input("type","object"),
    input("properties","kind","type","string"),
    input("properties","name","type","string"),
    input("properties","apiVersion","type","string"),
    input("properties","uid","$ref","#/components/schemas/UID"),
    input("properties","blockOwnerDeletion","nullable",true),
    input("properties","blockOwnerDeletion","type","boolean"),
    input("properties","controller","nullable",true),
    input("properties","controller","type","boolean"),
    input("required",3,"uid"),
    input("required",2,"name"),
    input("required",1,"kind"),
    input("required",0,"apiVersion").
schema("QuobyteVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","user","type","string"),
    input("properties","tenant","type","string"),
    input("properties","group","type","string"),
    input("properties","volume","type","string"),
    input("properties","registry","type","string"),
    input("required",1,"volume"),
    input("required",0,"registry").
schema("PodTemplateSpec") :-
    input("type","object"),
    input("properties","metadata","$ref","#/components/schemas/ObjectMeta"),
    input("properties","spec","$ref","#/components/schemas/PodSpec").
schema("PodAffinityTerm") :-
    input("type","object"),
    input("properties","labelSelector","nullable",true),
    input("properties","labelSelector","allOf",0,"$ref","#/components/schemas/LabelSelector"),
    input("properties","labelSelector","type","object"),
    input("properties","mismatchLabelKeys","items","type","string"),
    input("properties","mismatchLabelKeys","type","array"),
    input("properties","matchLabelKeys","items","type","string"),
    input("properties","matchLabelKeys","type","array"),
    input("properties","namespaceSelector","nullable",true),
    input("properties","namespaceSelector","allOf",0,"$ref","#/components/schemas/LabelSelector"),
    input("properties","namespaceSelector","type","object"),
    input("properties","topologyKey","type","string"),
    input("properties","namespaces","items","type","string"),
    input("properties","namespaces","type","array"),
    input("required",0,"topologyKey").
schema("HTTPHeader") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name"),
    input("properties","value","type","string"),
    input("required",1,"value").
schema("Sysctl") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("required",0,"name"),
    input("properties","value","type","string"),
    input("required",1,"value").
schema("NodeSelector") :-
    input("type","object"),
    input("properties","nodeSelectorTerms","items","$ref","#/components/schemas/NodeSelectorTerm"),
    input("properties","nodeSelectorTerms","type","array"),
    input("required",0,"nodeSelectorTerms").
schema("Lifecycle") :-
    input("type","object"),
    input("properties","preStop","nullable",true),
    input("properties","preStop","allOf",0,"$ref","#/components/schemas/LifecycleHandler"),
    input("properties","preStop","type","object"),
    input("properties","postStart","nullable",true),
    input("properties","postStart","allOf",0,"$ref","#/components/schemas/LifecycleHandler"),
    input("properties","postStart","type","object").
schema("FCVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("properties","fsType","type","string"),
    input("type","object"),
    input("properties","wwids","items","type","string"),
    input("properties","wwids","type","array"),
    input("properties","lun","nullable",true),
    input("properties","lun","maximum","int(\"2147483647\")"),
    input("properties","lun","minimum","int(\"-2147483648\")"),
    input("properties","lun","type","integer"),
    input("properties","targetWWNs","items","type","string"),
    input("properties","targetWWNs","type","array").
schema("DownwardAPIVolumeSource") :-
    input("type","object"),
    input("properties","items","type","array"),
    input("properties","defaultMode","nullable",true),
    input("properties","defaultMode","maximum","int(\"2147483647\")"),
    input("properties","defaultMode","minimum","int(\"-2147483648\")"),
    input("properties","defaultMode","type","integer"),
    input("properties","items","items","$ref","#/components/schemas/DownwardAPIVolumeFile").
schema("Deployment") :-
    input("type","object"),
    input("allOf",0,"$ref","#/components/schemas/TypeMeta"),
    input("properties","status","$ref","#/components/schemas/DeploymentStatus"),
    input("properties","spec","$ref","#/components/schemas/DeploymentSpec"),
    input("properties","metadata","$ref","#/components/schemas/ObjectMeta").
schema("ClusterTrustBundleProjection") :-
    input("type","object"),
    input("properties","path","type","string"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("properties","labelSelector","nullable",true),
    input("properties","labelSelector","allOf",0,"$ref","#/components/schemas/LabelSelector"),
    input("properties","labelSelector","type","object"),
    input("properties","signerName","nullable",true),
    input("properties","signerName","type","string"),
    input("properties","name","nullable",true),
    input("properties","name","type","string"),
    input("required",0,"path").
schema("AzureFileVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","shareName","type","string"),
    input("properties","secretName","type","string"),
    input("required",1,"shareName"),
    input("required",0,"secretName").
schema("ServicePort") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("properties","protocol","$ref","#/components/schemas/Protocol"),
    input("properties","port","format","int32"),
    input("properties","port","type","integer"),
    input("required",0,"port"),
    input("properties","nodePort","format","int32"),
    input("properties","nodePort","type","integer"),
    input("properties","targetPort","$ref","#/components/schemas/IntOrString"),
    input("properties","appProtocol","nullable",true),
    input("properties","appProtocol","type","string").
schema("VolumeResourceRequirements") :-
    input("type","object"),
    input("properties","requests","$ref","#/components/schemas/ResourceList"),
    input("properties","limits","$ref","#/components/schemas/ResourceList").
schema("TopologySpreadConstraint") :-
    input("type","object"),
    input("properties","labelSelector","nullable",true),
    input("properties","labelSelector","allOf",0,"$ref","#/components/schemas/LabelSelector"),
    input("properties","labelSelector","type","object"),
    input("properties","matchLabelKeys","items","type","string"),
    input("properties","matchLabelKeys","type","array"),
    input("properties","topologyKey","type","string"),
    input("properties","nodeTaintsPolicy","nullable",true),
    input("properties","nodeTaintsPolicy","type","string"),
    input("properties","nodeAffinityPolicy","nullable",true),
    input("properties","nodeAffinityPolicy","type","string"),
    input("properties","minDomains","nullable",true),
    input("properties","minDomains","maximum","int(\"2147483647\")"),
    input("properties","minDomains","minimum","int(\"-2147483648\")"),
    input("properties","minDomains","type","integer"),
    input("properties","whenUnsatisfiable","$ref","#/components/schemas/UnsatisfiableConstraintAction"),
    input("properties","maxSkew","format","int32"),
    input("properties","maxSkew","type","integer"),
    input("required",2,"whenUnsatisfiable"),
    input("required",1,"topologyKey"),
    input("required",0,"maxSkew").
schema("SELinuxOptions") :-
    input("type","object"),
    input("properties","user","type","string"),
    input("properties","type","type","string"),
    input("properties","level","type","string"),
    input("properties","role","type","string").
schema("PersistentVolumeClaimSpec") :-
    input("type","object"),
    input("properties","selector","nullable",true),
    input("properties","selector","allOf",0,"$ref","#/components/schemas/LabelSelector"),
    input("properties","selector","type","object"),
    input("properties","volumeAttributesClassName","nullable",true),
    input("properties","volumeAttributesClassName","type","string"),
    input("properties","dataSourceRef","nullable",true),
    input("properties","dataSourceRef","allOf",0,"$ref","#/components/schemas/TypedObjectReference"),
    input("properties","dataSourceRef","type","object"),
    input("properties","dataSource","nullable",true),
    input("properties","dataSource","allOf",0,"$ref","#/components/schemas/TypedLocalObjectReference"),
    input("properties","dataSource","type","object"),
    input("properties","volumeMode","nullable",true),
    input("properties","volumeMode","type","string"),
    input("properties","storageClassName","nullable",true),
    input("properties","storageClassName","type","string"),
    input("properties","volumeName","type","string"),
    input("properties","resources","$ref","#/components/schemas/VolumeResourceRequirements"),
    input("properties","accessModes","items","$ref","#/components/schemas/PersistentVolumeAccessMode"),
    input("properties","accessModes","type","array").
schema("PortStatus") :-
    input("type","object"),
    input("properties","protocol","$ref","#/components/schemas/Protocol"),
    input("properties","port","format","int32"),
    input("properties","port","type","integer"),
    input("required",0,"port"),
    input("properties","error","nullable",true),
    input("properties","error","type","string"),
    input("required",1,"protocol").
schema("PodDNSConfigOption") :-
    input("type","object"),
    input("properties","name","type","string"),
    input("properties","value","type","string"),
    input("properties","value","nullable",true).
schema("IntOrString").
schema("Quantity").
schema("Time").
schema("FieldsV1").
schema("NFSVolumeSource") :-
    input("properties","readOnly","type","boolean"),
    input("type","object"),
    input("properties","path","type","string"),
    input("required",1,"path"),
    input("properties","server","type","string"),
    input("required",0,"server").
schema("LabelSelector") :-
    input("type","object"),
    input("properties","matchExpressions","items","$ref","#/components/schemas/LabelSelectorRequirement"),
    input("properties","matchExpressions","type","array"),
    input("properties","matchLabels","additionalProperties","type","string"),
    input("properties","matchLabels","type","object").
schema("HTTPGetAction") :-
    input("type","object"),
    input("properties","path","type","string"),
    input("required",0,"port"),
    input("properties","httpHeaders","items","$ref","#/components/schemas/HTTPHeader"),
    input("properties","httpHeaders","type","array"),
    input("properties","scheme","$ref","#/components/schemas/URIScheme"),
    input("properties","host","type","string"),
    input("properties","port","$ref","#/components/schemas/IntOrString").
schema("Deployment0") :-
    input("type","object"),
    input("properties","kind","type","string"),
    input("allOf",1,"required",3,"spec"),
    input("allOf",1,"required",2,"metadata"),
    input("allOf",1,"required",1,"kind"),
    input("allOf",1,"required",0,"apiVersion"),
    input("allOf",0,"$ref","#/components/schemas/Deployment"),
    input("properties","spec","properties","template","properties","spec","properties","containers","default",0,"ports",0,"containerPort","int(\"8080\")"),
    input("properties","spec","properties","template","properties","spec","properties","containers","default",0,"image","myapp:latest"),
    input("properties","spec","properties","template","properties","spec","properties","containers","default",0,"name","myapp-container"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","ports","default",0,"containerPort","int(\"8080\")"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","ports","items",0,"properties","containerPort","enum",0,"int(\"8080\")"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","ports","items",0,"properties","containerPort","type","integer"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","ports","items",0,"required",0,"containerPort"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","ports","items",0,"type","object"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","ports","type","array"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","image","enum",0,"myapp:latest"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","image","type","string"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","name","enum",0,"myapp-container"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"properties","name","type","string"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"required",2,"ports"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"required",1,"image"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"required",0,"name"),
    input("properties","spec","properties","template","properties","spec","properties","containers","items",0,"type","object"),
    input("properties","spec","properties","template","properties","spec","properties","containers","type","array"),
    input("properties","spec","properties","template","properties","spec","required",0,"containers"),
    input("properties","spec","properties","template","properties","spec","type","object"),
    input("properties","spec","properties","template","properties","metadata","properties","labels","properties","app","enum",0,"MyApp"),
    input("properties","spec","properties","template","properties","metadata","properties","labels","properties","app","type","string"),
    input("properties","spec","properties","template","properties","metadata","properties","labels","required",0,"app"),
    input("properties","spec","properties","template","properties","metadata","properties","labels","type","object"),
    input("properties","spec","properties","template","properties","metadata","required",0,"labels"),
    input("properties","spec","properties","template","properties","metadata","type","object"),
    input("properties","spec","properties","template","required",1,"spec"),
    input("properties","spec","properties","template","required",0,"metadata"),
    input("properties","spec","properties","template","type","object"),
    input("properties","spec","properties","selector","properties","matchLabels","properties","app","enum",0,"MyApp"),
    input("properties","spec","properties","selector","properties","matchLabels","properties","app","type","string"),
    input("properties","spec","properties","selector","properties","matchLabels","required",0,"app"),
    input("properties","spec","properties","selector","properties","matchLabels","type","object"),
    input("properties","spec","properties","selector","required",0,"matchLabels"),
    input("properties","spec","properties","selector","type","object"),
    input("properties","spec","properties","replicas","enum",0,"int(\"2\")"),
    input("properties","spec","properties","replicas","type","integer"),
    input("properties","spec","required",2,"template"),
    input("properties","spec","required",1,"selector"),
    input("properties","spec","required",0,"replicas"),
    input("properties","spec","type","object"),
    input("properties","metadata","properties","name","enum",0,"simple-deployment"),
    input("properties","metadata","properties","name","type","string"),
    input("properties","metadata","required",0,"name"),
    input("properties","metadata","type","object"),
    input("properties","kind","enum",0,"Deployment"),
    input("properties","apiVersion","enum",0,"apps/v1"),
    input("properties","apiVersion","type","string").
schema("EmptyDirVolumeSource") :-
    input("type","object"),
    input("properties","sizeLimit","nullable",true),
    input("properties","sizeLimit","allOf",0,"$ref","#/components/schemas/Quantity"),
    input("properties","medium","$ref","#/components/schemas/StorageMedium").
schema("SecretEnvSource") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference").
schema("ConfigMapEnvSource") :-
    input("type","object"),
    input("properties","optional","nullable",true),
    input("properties","optional","type","boolean"),
    input("allOf",0,"$ref","#/components/schemas/LocalObjectReference").
schema("Capabilities") :-
    input("type","object"),
    input("properties","drop","items","$ref","#/components/schemas/Capability"),
    input("properties","drop","type","array"),
    input("properties","add","items","$ref","#/components/schemas/Capability"),
    input("properties","add","type","array").