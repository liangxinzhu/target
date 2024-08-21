package v1
import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/api/resource"
	"k8s.io/apimachinery/pkg/util/intstr"
	"k8s.io/apimachinery/pkg/types"
)
#NamespaceDefault: "default"
#NamespaceAll: ""
#NamespaceNodeLease: "kube-node-lease"
#Volume: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	#VolumeSource
}
#VolumeSource: {
	hostPath?: null | #HostPathVolumeSource @go(HostPath,*HostPathVolumeSource) @protobuf(1,bytes,opt)
	emptyDir?: null | #EmptyDirVolumeSource @go(EmptyDir,*EmptyDirVolumeSource) @protobuf(2,bytes,opt)
	gcePersistentDisk?: null | #GCEPersistentDiskVolumeSource @go(GCEPersistentDisk,*GCEPersistentDiskVolumeSource) @protobuf(3,bytes,opt)
	awsElasticBlockStore?: null | #AWSElasticBlockStoreVolumeSource @go(AWSElasticBlockStore,*AWSElasticBlockStoreVolumeSource) @protobuf(4,bytes,opt)
	gitRepo?: null | #GitRepoVolumeSource @go(GitRepo,*GitRepoVolumeSource) @protobuf(5,bytes,opt)
	secret?: null | #SecretVolumeSource @go(Secret,*SecretVolumeSource) @protobuf(6,bytes,opt)
	nfs?: null | #NFSVolumeSource @go(NFS,*NFSVolumeSource) @protobuf(7,bytes,opt)
	iscsi?: null | #ISCSIVolumeSource @go(ISCSI,*ISCSIVolumeSource) @protobuf(8,bytes,opt)
	glusterfs?: null | #GlusterfsVolumeSource @go(Glusterfs,*GlusterfsVolumeSource) @protobuf(9,bytes,opt)
	persistentVolumeClaim?: null | #PersistentVolumeClaimVolumeSource @go(PersistentVolumeClaim,*PersistentVolumeClaimVolumeSource) @protobuf(10,bytes,opt)
	rbd?: null | #RBDVolumeSource @go(RBD,*RBDVolumeSource) @protobuf(11,bytes,opt)
	flexVolume?: null | #FlexVolumeSource @go(FlexVolume,*FlexVolumeSource) @protobuf(12,bytes,opt)
	cinder?: null | #CinderVolumeSource @go(Cinder,*CinderVolumeSource) @protobuf(13,bytes,opt)
	cephfs?: null | #CephFSVolumeSource @go(CephFS,*CephFSVolumeSource) @protobuf(14,bytes,opt)
	flocker?: null | #FlockerVolumeSource @go(Flocker,*FlockerVolumeSource) @protobuf(15,bytes,opt)
	downwardAPI?: null | #DownwardAPIVolumeSource @go(DownwardAPI,*DownwardAPIVolumeSource) @protobuf(16,bytes,opt)
	fc?: null | #FCVolumeSource @go(FC,*FCVolumeSource) @protobuf(17,bytes,opt)
	azureFile?: null | #AzureFileVolumeSource @go(AzureFile,*AzureFileVolumeSource) @protobuf(18,bytes,opt)
	configMap?: null | #ConfigMapVolumeSource @go(ConfigMap,*ConfigMapVolumeSource) @protobuf(19,bytes,opt)
	vsphereVolume?: null | #VsphereVirtualDiskVolumeSource @go(VsphereVolume,*VsphereVirtualDiskVolumeSource) @protobuf(20,bytes,opt)
	quobyte?: null | #QuobyteVolumeSource @go(Quobyte,*QuobyteVolumeSource) @protobuf(21,bytes,opt)
	azureDisk?: null | #AzureDiskVolumeSource @go(AzureDisk,*AzureDiskVolumeSource) @protobuf(22,bytes,opt)
	photonPersistentDisk?: null | #PhotonPersistentDiskVolumeSource @go(PhotonPersistentDisk,*PhotonPersistentDiskVolumeSource) @protobuf(23,bytes,opt)
	projected?: null | #ProjectedVolumeSource @go(Projected,*ProjectedVolumeSource) @protobuf(26,bytes,opt)
	portworxVolume?: null | #PortworxVolumeSource @go(PortworxVolume,*PortworxVolumeSource) @protobuf(24,bytes,opt)
	scaleIO?: null | #ScaleIOVolumeSource @go(ScaleIO,*ScaleIOVolumeSource) @protobuf(25,bytes,opt)
	storageos?: null | #StorageOSVolumeSource @go(StorageOS,*StorageOSVolumeSource) @protobuf(27,bytes,opt)
	csi?: null | #CSIVolumeSource @go(CSI,*CSIVolumeSource) @protobuf(28,bytes,opt)
	ephemeral?: null | #EphemeralVolumeSource @go(Ephemeral,*EphemeralVolumeSource) @protobuf(29,bytes,opt)
}
#PersistentVolumeClaimVolumeSource: {
	claimName: string @go(ClaimName) @protobuf(1,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(2,varint,opt)
}
#PersistentVolumeSource: {
	gcePersistentDisk?: null | #GCEPersistentDiskVolumeSource @go(GCEPersistentDisk,*GCEPersistentDiskVolumeSource) @protobuf(1,bytes,opt)
	awsElasticBlockStore?: null | #AWSElasticBlockStoreVolumeSource @go(AWSElasticBlockStore,*AWSElasticBlockStoreVolumeSource) @protobuf(2,bytes,opt)
	hostPath?: null | #HostPathVolumeSource @go(HostPath,*HostPathVolumeSource) @protobuf(3,bytes,opt)
	glusterfs?: null | #GlusterfsPersistentVolumeSource @go(Glusterfs,*GlusterfsPersistentVolumeSource) @protobuf(4,bytes,opt)
	nfs?: null | #NFSVolumeSource @go(NFS,*NFSVolumeSource) @protobuf(5,bytes,opt)
	rbd?: null | #RBDPersistentVolumeSource @go(RBD,*RBDPersistentVolumeSource) @protobuf(6,bytes,opt)
	iscsi?: null | #ISCSIPersistentVolumeSource @go(ISCSI,*ISCSIPersistentVolumeSource) @protobuf(7,bytes,opt)
	cinder?: null | #CinderPersistentVolumeSource @go(Cinder,*CinderPersistentVolumeSource) @protobuf(8,bytes,opt)
	cephfs?: null | #CephFSPersistentVolumeSource @go(CephFS,*CephFSPersistentVolumeSource) @protobuf(9,bytes,opt)
	fc?: null | #FCVolumeSource @go(FC,*FCVolumeSource) @protobuf(10,bytes,opt)
	flocker?: null | #FlockerVolumeSource @go(Flocker,*FlockerVolumeSource) @protobuf(11,bytes,opt)
	flexVolume?: null | #FlexPersistentVolumeSource @go(FlexVolume,*FlexPersistentVolumeSource) @protobuf(12,bytes,opt)
	azureFile?: null | #AzureFilePersistentVolumeSource @go(AzureFile,*AzureFilePersistentVolumeSource) @protobuf(13,bytes,opt)
	vsphereVolume?: null | #VsphereVirtualDiskVolumeSource @go(VsphereVolume,*VsphereVirtualDiskVolumeSource) @protobuf(14,bytes,opt)
	quobyte?: null | #QuobyteVolumeSource @go(Quobyte,*QuobyteVolumeSource) @protobuf(15,bytes,opt)
	azureDisk?: null | #AzureDiskVolumeSource @go(AzureDisk,*AzureDiskVolumeSource) @protobuf(16,bytes,opt)
	photonPersistentDisk?: null | #PhotonPersistentDiskVolumeSource @go(PhotonPersistentDisk,*PhotonPersistentDiskVolumeSource) @protobuf(17,bytes,opt)
	portworxVolume?: null | #PortworxVolumeSource @go(PortworxVolume,*PortworxVolumeSource) @protobuf(18,bytes,opt)
	scaleIO?: null | #ScaleIOPersistentVolumeSource @go(ScaleIO,*ScaleIOPersistentVolumeSource) @protobuf(19,bytes,opt)
	local?: null | #LocalVolumeSource @go(Local,*LocalVolumeSource) @protobuf(20,bytes,opt)
	storageos?: null | #StorageOSPersistentVolumeSource @go(StorageOS,*StorageOSPersistentVolumeSource) @protobuf(21,bytes,opt)
	csi?: null | #CSIPersistentVolumeSource @go(CSI,*CSIPersistentVolumeSource) @protobuf(22,bytes,opt)
}
#BetaStorageClassAnnotation: "volume.beta.kubernetes.io/storage-class"
#MountOptionAnnotation: "volume.beta.kubernetes.io/mount-options"
#PersistentVolume: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #PersistentVolumeSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #PersistentVolumeStatus @go(Status) @protobuf(3,bytes,opt)
}
#PersistentVolumeSpec: {
	capacity?: #ResourceList @go(Capacity) @protobuf(1,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	#PersistentVolumeSource
	accessModes?: [...#PersistentVolumeAccessMode] @go(AccessModes,[]PersistentVolumeAccessMode) @protobuf(3,bytes,rep,casttype=PersistentVolumeAccessMode)
	claimRef?: null | #ObjectReference @go(ClaimRef,*ObjectReference) @protobuf(4,bytes,opt)
	persistentVolumeReclaimPolicy?: #PersistentVolumeReclaimPolicy @go(PersistentVolumeReclaimPolicy) @protobuf(5,bytes,opt,casttype=PersistentVolumeReclaimPolicy)
	storageClassName?: string @go(StorageClassName) @protobuf(6,bytes,opt)
	mountOptions?: [...string] @go(MountOptions,[]string) @protobuf(7,bytes,opt)
	volumeMode?: null | #PersistentVolumeMode @go(VolumeMode,*PersistentVolumeMode) @protobuf(8,bytes,opt,casttype=PersistentVolumeMode)
	nodeAffinity?: null | #VolumeNodeAffinity @go(NodeAffinity,*VolumeNodeAffinity) @protobuf(9,bytes,opt)
	volumeAttributesClassName?: null | string @go(VolumeAttributesClassName,*string) @protobuf(10,bytes,opt)
}
#VolumeNodeAffinity: {
	required?: null | #NodeSelector @go(Required,*NodeSelector) @protobuf(1,bytes,opt)
}
#PersistentVolumeReclaimPolicy: string
#enumPersistentVolumeReclaimPolicy:
	#PersistentVolumeReclaimRecycle |
	#PersistentVolumeReclaimDelete |
	#PersistentVolumeReclaimRetain
#PersistentVolumeReclaimRecycle: #PersistentVolumeReclaimPolicy & "Recycle"
#PersistentVolumeReclaimDelete: #PersistentVolumeReclaimPolicy & "Delete"
#PersistentVolumeReclaimRetain: #PersistentVolumeReclaimPolicy & "Retain"
#PersistentVolumeMode: string
#enumPersistentVolumeMode:
	#PersistentVolumeBlock |
	#PersistentVolumeFilesystem
#PersistentVolumeBlock: #PersistentVolumeMode & "Block"
#PersistentVolumeFilesystem: #PersistentVolumeMode & "Filesystem"
#PersistentVolumeStatus: {
	phase?: #PersistentVolumePhase @go(Phase) @protobuf(1,bytes,opt,casttype=PersistentVolumePhase)
	message?: string @go(Message) @protobuf(2,bytes,opt)
	reason?: string @go(Reason) @protobuf(3,bytes,opt)
	lastPhaseTransitionTime?: null | metav1.#Time @go(LastPhaseTransitionTime,*metav1.Time) @protobuf(4,bytes,opt)
}
#PersistentVolumeList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#PersistentVolume] @go(Items,[]PersistentVolume) @protobuf(2,bytes,rep)
}
#PersistentVolumeClaim: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #PersistentVolumeClaimSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #PersistentVolumeClaimStatus @go(Status) @protobuf(3,bytes,opt)
}
#PersistentVolumeClaimList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#PersistentVolumeClaim] @go(Items,[]PersistentVolumeClaim) @protobuf(2,bytes,rep)
}
#PersistentVolumeClaimSpec: {
	accessModes?: [...#PersistentVolumeAccessMode] @go(AccessModes,[]PersistentVolumeAccessMode) @protobuf(1,bytes,rep,casttype=PersistentVolumeAccessMode)
	selector?: null | metav1.#LabelSelector @go(Selector,*metav1.LabelSelector) @protobuf(4,bytes,opt)
	resources?: #VolumeResourceRequirements @go(Resources) @protobuf(2,bytes,opt)
	volumeName?: string @go(VolumeName) @protobuf(3,bytes,opt)
	storageClassName?: null | string @go(StorageClassName,*string) @protobuf(5,bytes,opt)
	volumeMode?: null | #PersistentVolumeMode @go(VolumeMode,*PersistentVolumeMode) @protobuf(6,bytes,opt,casttype=PersistentVolumeMode)
	dataSource?: null | #TypedLocalObjectReference @go(DataSource,*TypedLocalObjectReference) @protobuf(7,bytes,opt)
	dataSourceRef?: null | #TypedObjectReference @go(DataSourceRef,*TypedObjectReference) @protobuf(8,bytes,opt)
	volumeAttributesClassName?: null | string @go(VolumeAttributesClassName,*string) @protobuf(9,bytes,opt)
}
#TypedObjectReference: {
	apiGroup?: null | string @go(APIGroup,*string) @protobuf(1,bytes,opt)
	kind: string @go(Kind) @protobuf(2,bytes,opt)
	name: string @go(Name) @protobuf(3,bytes,opt)
	namespace?: null | string @go(Namespace,*string) @protobuf(4,bytes,opt)
}
#PersistentVolumeClaimConditionType: string
#enumPersistentVolumeClaimConditionType:
	#PersistentVolumeClaimResizing |
	#PersistentVolumeClaimFileSystemResizePending |
	#PersistentVolumeClaimVolumeModifyVolumeError |
	#PersistentVolumeClaimVolumeModifyingVolume
#PersistentVolumeClaimResizing: #PersistentVolumeClaimConditionType & "Resizing"
#PersistentVolumeClaimFileSystemResizePending: #PersistentVolumeClaimConditionType & "FileSystemResizePending"
#PersistentVolumeClaimVolumeModifyVolumeError: #PersistentVolumeClaimConditionType & "ModifyVolumeError"
#PersistentVolumeClaimVolumeModifyingVolume: #PersistentVolumeClaimConditionType & "ModifyingVolume"
#ClaimResourceStatus: string
#enumClaimResourceStatus:
	#PersistentVolumeClaimControllerResizeInProgress |
	#PersistentVolumeClaimControllerResizeFailed |
	#PersistentVolumeClaimNodeResizePending |
	#PersistentVolumeClaimNodeResizeInProgress |
	#PersistentVolumeClaimNodeResizeFailed
#PersistentVolumeClaimControllerResizeInProgress: #ClaimResourceStatus & "ControllerResizeInProgress"
#PersistentVolumeClaimControllerResizeFailed: #ClaimResourceStatus & "ControllerResizeFailed"
#PersistentVolumeClaimNodeResizePending: #ClaimResourceStatus & "NodeResizePending"
#PersistentVolumeClaimNodeResizeInProgress: #ClaimResourceStatus & "NodeResizeInProgress"
#PersistentVolumeClaimNodeResizeFailed: #ClaimResourceStatus & "NodeResizeFailed"
#PersistentVolumeClaimModifyVolumeStatus: string
#enumPersistentVolumeClaimModifyVolumeStatus:
	#PersistentVolumeClaimModifyVolumePending |
	#PersistentVolumeClaimModifyVolumeInProgress |
	#PersistentVolumeClaimModifyVolumeInfeasible
#PersistentVolumeClaimModifyVolumePending: #PersistentVolumeClaimModifyVolumeStatus & "Pending"
#PersistentVolumeClaimModifyVolumeInProgress: #PersistentVolumeClaimModifyVolumeStatus & "InProgress"
#PersistentVolumeClaimModifyVolumeInfeasible: #PersistentVolumeClaimModifyVolumeStatus & "Infeasible"
#ModifyVolumeStatus: {
	targetVolumeAttributesClassName?: string @go(TargetVolumeAttributesClassName) @protobuf(1,bytes,opt)
	status: #PersistentVolumeClaimModifyVolumeStatus @go(Status) @protobuf(2,bytes,opt,casttype=PersistentVolumeClaimModifyVolumeStatus)
}
#PersistentVolumeClaimCondition: {
	type:   #PersistentVolumeClaimConditionType @go(Type) @protobuf(1,bytes,opt,casttype=PersistentVolumeClaimConditionType)
	status: #ConditionStatus                    @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	lastProbeTime?: metav1.#Time @go(LastProbeTime) @protobuf(3,bytes,opt)
	lastTransitionTime?: metav1.#Time @go(LastTransitionTime) @protobuf(4,bytes,opt)
	reason?: string @go(Reason) @protobuf(5,bytes,opt)
	message?: string @go(Message) @protobuf(6,bytes,opt)
}
#PersistentVolumeClaimStatus: {
	phase?: #PersistentVolumeClaimPhase @go(Phase) @protobuf(1,bytes,opt,casttype=PersistentVolumeClaimPhase)
	accessModes?: [...#PersistentVolumeAccessMode] @go(AccessModes,[]PersistentVolumeAccessMode) @protobuf(2,bytes,rep,casttype=PersistentVolumeAccessMode)
	capacity?: #ResourceList @go(Capacity) @protobuf(3,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	conditions?: [...#PersistentVolumeClaimCondition] @go(Conditions,[]PersistentVolumeClaimCondition) @protobuf(4,bytes,rep)
	allocatedResources?: #ResourceList @go(AllocatedResources) @protobuf(5,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	allocatedResourceStatuses?: {[string]: #ClaimResourceStatus} @go(AllocatedResourceStatuses,map[ResourceName]ClaimResourceStatus) @protobuf(7,bytes,rep)
	currentVolumeAttributesClassName?: null | string @go(CurrentVolumeAttributesClassName,*string) @protobuf(8,bytes,opt)
	modifyVolumeStatus?: null | #ModifyVolumeStatus @go(ModifyVolumeStatus,*ModifyVolumeStatus) @protobuf(9,bytes,opt)
}
#PersistentVolumeAccessMode: string
#enumPersistentVolumeAccessMode:
	#ReadWriteOnce |
	#ReadOnlyMany |
	#ReadWriteMany |
	#ReadWriteOncePod
#ReadWriteOnce: #PersistentVolumeAccessMode & "ReadWriteOnce"
#ReadOnlyMany: #PersistentVolumeAccessMode & "ReadOnlyMany"
#ReadWriteMany: #PersistentVolumeAccessMode & "ReadWriteMany"
#ReadWriteOncePod: #PersistentVolumeAccessMode & "ReadWriteOncePod"
#PersistentVolumePhase: string
#enumPersistentVolumePhase:
	#VolumePending |
	#VolumeAvailable |
	#VolumeBound |
	#VolumeReleased |
	#VolumeFailed
#VolumePending: #PersistentVolumePhase & "Pending"
#VolumeAvailable: #PersistentVolumePhase & "Available"
#VolumeBound: #PersistentVolumePhase & "Bound"
#VolumeReleased: #PersistentVolumePhase & "Released"
#VolumeFailed: #PersistentVolumePhase & "Failed"
#PersistentVolumeClaimPhase: string
#enumPersistentVolumeClaimPhase:
	#ClaimPending |
	#ClaimBound |
	#ClaimLost
#ClaimPending: #PersistentVolumeClaimPhase & "Pending"
#ClaimBound: #PersistentVolumeClaimPhase & "Bound"
#ClaimLost: #PersistentVolumeClaimPhase & "Lost"
#HostPathType: string
#enumHostPathType:
	#HostPathUnset |
	#HostPathDirectoryOrCreate |
	#HostPathDirectory |
	#HostPathFileOrCreate |
	#HostPathFile |
	#HostPathSocket |
	#HostPathCharDev |
	#HostPathBlockDev
#HostPathUnset: #HostPathType & ""
#HostPathDirectoryOrCreate: #HostPathType & "DirectoryOrCreate"
#HostPathDirectory: #HostPathType & "Directory"
#HostPathFileOrCreate: #HostPathType & "FileOrCreate"
#HostPathFile: #HostPathType & "File"
#HostPathSocket: #HostPathType & "Socket"
#HostPathCharDev: #HostPathType & "CharDevice"
#HostPathBlockDev: #HostPathType & "BlockDevice"
#HostPathVolumeSource: {
	path: string @go(Path) @protobuf(1,bytes,opt)
	type?: null | #HostPathType @go(Type,*HostPathType) @protobuf(2,bytes,opt)
}
#EmptyDirVolumeSource: {
	medium?: #StorageMedium @go(Medium) @protobuf(1,bytes,opt,casttype=StorageMedium)
	sizeLimit?: null | resource.#Quantity @go(SizeLimit,*resource.Quantity) @protobuf(2,bytes,opt)
}
#GlusterfsVolumeSource: {
	endpoints: string @go(EndpointsName) @protobuf(1,bytes,opt)
	path: string @go(Path) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
}
#GlusterfsPersistentVolumeSource: {
	endpoints: string @go(EndpointsName) @protobuf(1,bytes,opt)
	path: string @go(Path) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	endpointsNamespace?: null | string @go(EndpointsNamespace,*string) @protobuf(4,bytes,opt)
}
#RBDVolumeSource: {
	monitors: [...string] @go(CephMonitors,[]string) @protobuf(1,bytes,rep)
	image: string @go(RBDImage) @protobuf(2,bytes,opt)
	fsType?: string @go(FSType) @protobuf(3,bytes,opt)
	pool?: string @go(RBDPool) @protobuf(4,bytes,opt)
	user?: string @go(RadosUser) @protobuf(5,bytes,opt)
	keyring?: string @go(Keyring) @protobuf(6,bytes,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(7,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(8,varint,opt)
}
#RBDPersistentVolumeSource: {
	monitors: [...string] @go(CephMonitors,[]string) @protobuf(1,bytes,rep)
	image: string @go(RBDImage) @protobuf(2,bytes,opt)
	fsType?: string @go(FSType) @protobuf(3,bytes,opt)
	pool?: string @go(RBDPool) @protobuf(4,bytes,opt)
	user?: string @go(RadosUser) @protobuf(5,bytes,opt)
	keyring?: string @go(Keyring) @protobuf(6,bytes,opt)
	secretRef?: null | #SecretReference @go(SecretRef,*SecretReference) @protobuf(7,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(8,varint,opt)
}
#CinderVolumeSource: {
	volumeID: string @go(VolumeID) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(4,bytes,opt)
}
#CinderPersistentVolumeSource: {
	volumeID: string @go(VolumeID) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	secretRef?: null | #SecretReference @go(SecretRef,*SecretReference) @protobuf(4,bytes,opt)
}
#CephFSVolumeSource: {
	monitors: [...string] @go(Monitors,[]string) @protobuf(1,bytes,rep)
	path?: string @go(Path) @protobuf(2,bytes,opt)
	user?: string @go(User) @protobuf(3,bytes,opt)
	secretFile?: string @go(SecretFile) @protobuf(4,bytes,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(5,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(6,varint,opt)
}
#SecretReference: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	namespace?: string @go(Namespace) @protobuf(2,bytes,opt)
}
#CephFSPersistentVolumeSource: {
	monitors: [...string] @go(Monitors,[]string) @protobuf(1,bytes,rep)
	path?: string @go(Path) @protobuf(2,bytes,opt)
	user?: string @go(User) @protobuf(3,bytes,opt)
	secretFile?: string @go(SecretFile) @protobuf(4,bytes,opt)
	secretRef?: null | #SecretReference @go(SecretRef,*SecretReference) @protobuf(5,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(6,varint,opt)
}
#FlockerVolumeSource: {
	datasetName?: string @go(DatasetName) @protobuf(1,bytes,opt)
	datasetUUID?: string @go(DatasetUUID) @protobuf(2,bytes,opt)
}
#StorageMedium: string
#enumStorageMedium:
	#StorageMediumDefault |
	#StorageMediumMemory |
	#StorageMediumHugePages |
	#StorageMediumHugePagesPrefix
#StorageMediumDefault:         #StorageMedium & ""
#StorageMediumMemory:          #StorageMedium & "Memory"
#StorageMediumHugePages:       #StorageMedium & "HugePages"
#StorageMediumHugePagesPrefix: #StorageMedium & "HugePages-"
#Protocol: string
#enumProtocol:
	#ProtocolTCP |
	#ProtocolUDP |
	#ProtocolSCTP
#ProtocolTCP: #Protocol & "TCP"
#ProtocolUDP: #Protocol & "UDP"
#ProtocolSCTP: #Protocol & "SCTP"
#GCEPersistentDiskVolumeSource: {
	pdName: string @go(PDName) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	partition?: int32 @go(Partition) @protobuf(3,varint,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
}
#QuobyteVolumeSource: {
	registry: string @go(Registry) @protobuf(1,bytes,opt)
	volume: string @go(Volume) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	user?: string @go(User) @protobuf(4,bytes,opt)
	group?: string @go(Group) @protobuf(5,bytes,opt)
	tenant?: string @go(Tenant) @protobuf(6,bytes,opt)
}
#FlexPersistentVolumeSource: {
	driver: string @go(Driver) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	secretRef?: null | #SecretReference @go(SecretRef,*SecretReference) @protobuf(3,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
	options?: {[string]: string} @go(Options,map[string]string) @protobuf(5,bytes,rep)
}
#FlexVolumeSource: {
	driver: string @go(Driver) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(3,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
	options?: {[string]: string} @go(Options,map[string]string) @protobuf(5,bytes,rep)
}
#AWSElasticBlockStoreVolumeSource: {
	volumeID: string @go(VolumeID) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	partition?: int32 @go(Partition) @protobuf(3,varint,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
}
#GitRepoVolumeSource: {
	repository: string @go(Repository) @protobuf(1,bytes,opt)
	revision?: string @go(Revision) @protobuf(2,bytes,opt)
	directory?: string @go(Directory) @protobuf(3,bytes,opt)
}
#SecretVolumeSource: {
	secretName?: string @go(SecretName) @protobuf(1,bytes,opt)
	items?: [...#KeyToPath] @go(Items,[]KeyToPath) @protobuf(2,bytes,rep)
	defaultMode?: null | int32 @go(DefaultMode,*int32) @protobuf(3,bytes,opt)
	optional?: null | bool @go(Optional,*bool) @protobuf(4,varint,opt)
}
#SecretVolumeSourceDefaultMode: int32 & 0o644
#SecretProjection: {
	#LocalObjectReference
	items?: [...#KeyToPath] @go(Items,[]KeyToPath) @protobuf(2,bytes,rep)
	optional?: null | bool @go(Optional,*bool) @protobuf(4,varint,opt)
}
#NFSVolumeSource: {
	server: string @go(Server) @protobuf(1,bytes,opt)
	path: string @go(Path) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
}
#ISCSIVolumeSource: {
	targetPortal: string @go(TargetPortal) @protobuf(1,bytes,opt)
	iqn: string @go(IQN) @protobuf(2,bytes,opt)
	lun: int32 @go(Lun) @protobuf(3,varint,opt)
	iscsiInterface?: string @go(ISCSIInterface) @protobuf(4,bytes,opt)
	fsType?: string @go(FSType) @protobuf(5,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(6,varint,opt)
	portals?: [...string] @go(Portals,[]string) @protobuf(7,bytes,opt)
	chapAuthDiscovery?: bool @go(DiscoveryCHAPAuth) @protobuf(8,varint,opt)
	chapAuthSession?: bool @go(SessionCHAPAuth) @protobuf(11,varint,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(10,bytes,opt)
	initiatorName?: null | string @go(InitiatorName,*string) @protobuf(12,bytes,opt)
}
#ISCSIPersistentVolumeSource: {
	targetPortal: string @go(TargetPortal) @protobuf(1,bytes,opt)
	iqn: string @go(IQN) @protobuf(2,bytes,opt)
	lun: int32 @go(Lun) @protobuf(3,varint,opt)
	iscsiInterface?: string @go(ISCSIInterface) @protobuf(4,bytes,opt)
	fsType?: string @go(FSType) @protobuf(5,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(6,varint,opt)
	portals?: [...string] @go(Portals,[]string) @protobuf(7,bytes,opt)
	chapAuthDiscovery?: bool @go(DiscoveryCHAPAuth) @protobuf(8,varint,opt)
	chapAuthSession?: bool @go(SessionCHAPAuth) @protobuf(11,varint,opt)
	secretRef?: null | #SecretReference @go(SecretRef,*SecretReference) @protobuf(10,bytes,opt)
	initiatorName?: null | string @go(InitiatorName,*string) @protobuf(12,bytes,opt)
}
#FCVolumeSource: {
	targetWWNs?: [...string] @go(TargetWWNs,[]string) @protobuf(1,bytes,rep)
	lun?: null | int32 @go(Lun,*int32) @protobuf(2,varint,opt)
	fsType?: string @go(FSType) @protobuf(3,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
	wwids?: [...string] @go(WWIDs,[]string) @protobuf(5,bytes,rep)
}
#AzureFileVolumeSource: {
	secretName: string @go(SecretName) @protobuf(1,bytes,opt)
	shareName: string @go(ShareName) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
}
#AzureFilePersistentVolumeSource: {
	secretName: string @go(SecretName) @protobuf(1,bytes,opt)
	shareName: string @go(ShareName) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	secretNamespace?: null | string @go(SecretNamespace,*string) @protobuf(4,bytes,opt)
}
#VsphereVirtualDiskVolumeSource: {
	volumePath: string @go(VolumePath) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	storagePolicyName?: string @go(StoragePolicyName) @protobuf(3,bytes,opt)
	storagePolicyID?: string @go(StoragePolicyID) @protobuf(4,bytes,opt)
}
#PhotonPersistentDiskVolumeSource: {
	pdID: string @go(PdID) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
}
#AzureDataDiskCachingMode: string
#enumAzureDataDiskCachingMode:
	#AzureDataDiskCachingNone |
	#AzureDataDiskCachingReadOnly |
	#AzureDataDiskCachingReadWrite
#AzureDataDiskKind: string
#enumAzureDataDiskKind:
	#AzureSharedBlobDisk |
	#AzureDedicatedBlobDisk |
	#AzureManagedDisk
#AzureDataDiskCachingNone:      #AzureDataDiskCachingMode & "None"
#AzureDataDiskCachingReadOnly:  #AzureDataDiskCachingMode & "ReadOnly"
#AzureDataDiskCachingReadWrite: #AzureDataDiskCachingMode & "ReadWrite"
#AzureSharedBlobDisk:           #AzureDataDiskKind & "Shared"
#AzureDedicatedBlobDisk:        #AzureDataDiskKind & "Dedicated"
#AzureManagedDisk:              #AzureDataDiskKind & "Managed"
#AzureDiskVolumeSource: {
	diskName: string @go(DiskName) @protobuf(1,bytes,opt)
	diskURI: string @go(DataDiskURI) @protobuf(2,bytes,opt)
	cachingMode?: null | #AzureDataDiskCachingMode @go(CachingMode,*AzureDataDiskCachingMode) @protobuf(3,bytes,opt,casttype=AzureDataDiskCachingMode)
	fsType?: null | string @go(FSType,*string) @protobuf(4,bytes,opt)
	readOnly?: null | bool @go(ReadOnly,*bool) @protobuf(5,varint,opt)
	kind?: null | #AzureDataDiskKind @go(Kind,*AzureDataDiskKind) @protobuf(6,bytes,opt,casttype=AzureDataDiskKind)
}
#PortworxVolumeSource: {
	volumeID: string @go(VolumeID) @protobuf(1,bytes,opt)
	fsType?: string @go(FSType) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
}
#ScaleIOVolumeSource: {
	gateway: string @go(Gateway) @protobuf(1,bytes,opt)
	system: string @go(System) @protobuf(2,bytes,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(3,bytes,opt)
	sslEnabled?: bool @go(SSLEnabled) @protobuf(4,varint,opt)
	protectionDomain?: string @go(ProtectionDomain) @protobuf(5,bytes,opt)
	storagePool?: string @go(StoragePool) @protobuf(6,bytes,opt)
	storageMode?: string @go(StorageMode) @protobuf(7,bytes,opt)
	volumeName?: string @go(VolumeName) @protobuf(8,bytes,opt)
	fsType?: string @go(FSType) @protobuf(9,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(10,varint,opt)
}
#ScaleIOPersistentVolumeSource: {
	gateway: string @go(Gateway) @protobuf(1,bytes,opt)
	system: string @go(System) @protobuf(2,bytes,opt)
	secretRef?: null | #SecretReference @go(SecretRef,*SecretReference) @protobuf(3,bytes,opt)
	sslEnabled?: bool @go(SSLEnabled) @protobuf(4,varint,opt)
	protectionDomain?: string @go(ProtectionDomain) @protobuf(5,bytes,opt)
	storagePool?: string @go(StoragePool) @protobuf(6,bytes,opt)
	storageMode?: string @go(StorageMode) @protobuf(7,bytes,opt)
	volumeName?: string @go(VolumeName) @protobuf(8,bytes,opt)
	fsType?: string @go(FSType) @protobuf(9,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(10,varint,opt)
}
#StorageOSVolumeSource: {
	volumeName?: string @go(VolumeName) @protobuf(1,bytes,opt)
	volumeNamespace?: string @go(VolumeNamespace) @protobuf(2,bytes,opt)
	fsType?: string @go(FSType) @protobuf(3,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
	secretRef?: null | #LocalObjectReference @go(SecretRef,*LocalObjectReference) @protobuf(5,bytes,opt)
}
#StorageOSPersistentVolumeSource: {
	volumeName?: string @go(VolumeName) @protobuf(1,bytes,opt)
	volumeNamespace?: string @go(VolumeNamespace) @protobuf(2,bytes,opt)
	fsType?: string @go(FSType) @protobuf(3,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(4,varint,opt)
	secretRef?: null | #ObjectReference @go(SecretRef,*ObjectReference) @protobuf(5,bytes,opt)
}
#ConfigMapVolumeSource: {
	#LocalObjectReference
	items?: [...#KeyToPath] @go(Items,[]KeyToPath) @protobuf(2,bytes,rep)
	defaultMode?: null | int32 @go(DefaultMode,*int32) @protobuf(3,varint,opt)
	optional?: null | bool @go(Optional,*bool) @protobuf(4,varint,opt)
}
#ConfigMapVolumeSourceDefaultMode: int32 & 0o644
#ConfigMapProjection: {
	#LocalObjectReference
	items?: [...#KeyToPath] @go(Items,[]KeyToPath) @protobuf(2,bytes,rep)
	optional?: null | bool @go(Optional,*bool) @protobuf(4,varint,opt)
}
#ServiceAccountTokenProjection: {
	audience?: string @go(Audience) @protobuf(1,bytes,rep)
	expirationSeconds?: null | int64 @go(ExpirationSeconds,*int64) @protobuf(2,varint,opt)
	path: string @go(Path) @protobuf(3,bytes,opt)
}
#ClusterTrustBundleProjection: {
	name?: null | string @go(Name,*string) @protobuf(1,bytes,rep)
	signerName?: null | string @go(SignerName,*string) @protobuf(2,bytes,rep)
	labelSelector?: null | metav1.#LabelSelector @go(LabelSelector,*metav1.LabelSelector) @protobuf(3,bytes,rep)
	optional?: null | bool @go(Optional,*bool) @protobuf(5,varint,opt)
	path: string @go(Path) @protobuf(4,bytes,rep)
}
#ProjectedVolumeSource: {
	sources?: [...#VolumeProjection] @go(Sources,[]VolumeProjection) @protobuf(1,bytes,rep)
	defaultMode?: null | int32 @go(DefaultMode,*int32) @protobuf(2,varint,opt)
}
#VolumeProjection: {
	secret?: null | #SecretProjection @go(Secret,*SecretProjection) @protobuf(1,bytes,opt)
	downwardAPI?: null | #DownwardAPIProjection @go(DownwardAPI,*DownwardAPIProjection) @protobuf(2,bytes,opt)
	configMap?: null | #ConfigMapProjection @go(ConfigMap,*ConfigMapProjection) @protobuf(3,bytes,opt)
	serviceAccountToken?: null | #ServiceAccountTokenProjection @go(ServiceAccountToken,*ServiceAccountTokenProjection) @protobuf(4,bytes,opt)
	clusterTrustBundle?: null | #ClusterTrustBundleProjection @go(ClusterTrustBundle,*ClusterTrustBundleProjection) @protobuf(5,bytes,opt)
}
#ProjectedVolumeSourceDefaultMode: int32 & 0o644
#KeyToPath: {
	key: string @go(Key) @protobuf(1,bytes,opt)
	path: string @go(Path) @protobuf(2,bytes,opt)
	mode?: null | int32 @go(Mode,*int32) @protobuf(3,varint,opt)
}
#LocalVolumeSource: {
	path: string @go(Path) @protobuf(1,bytes,opt)
	fsType?: null | string @go(FSType,*string) @protobuf(2,bytes,opt)
}
#CSIPersistentVolumeSource: {
	driver: string @go(Driver) @protobuf(1,bytes,opt)
	volumeHandle: string @go(VolumeHandle) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	fsType?: string @go(FSType) @protobuf(4,bytes,opt)
	volumeAttributes?: {[string]: string} @go(VolumeAttributes,map[string]string) @protobuf(5,bytes,rep)
	controllerPublishSecretRef?: null | #SecretReference @go(ControllerPublishSecretRef,*SecretReference) @protobuf(6,bytes,opt)
	nodeStageSecretRef?: null | #SecretReference @go(NodeStageSecretRef,*SecretReference) @protobuf(7,bytes,opt)
	nodePublishSecretRef?: null | #SecretReference @go(NodePublishSecretRef,*SecretReference) @protobuf(8,bytes,opt)
	controllerExpandSecretRef?: null | #SecretReference @go(ControllerExpandSecretRef,*SecretReference) @protobuf(9,bytes,opt)
	nodeExpandSecretRef?: null | #SecretReference @go(NodeExpandSecretRef,*SecretReference) @protobuf(10,bytes,opt)
}
#CSIVolumeSource: {
	driver: string @go(Driver) @protobuf(1,bytes,opt)
	readOnly?: null | bool @go(ReadOnly,*bool) @protobuf(2,varint,opt)
	fsType?: null | string @go(FSType,*string) @protobuf(3,bytes,opt)
	volumeAttributes?: {[string]: string} @go(VolumeAttributes,map[string]string) @protobuf(4,bytes,rep)
	nodePublishSecretRef?: null | #LocalObjectReference @go(NodePublishSecretRef,*LocalObjectReference) @protobuf(5,bytes,opt)
}
#EphemeralVolumeSource: {
	volumeClaimTemplate?: null | #PersistentVolumeClaimTemplate @go(VolumeClaimTemplate,*PersistentVolumeClaimTemplate) @protobuf(1,bytes,opt)
}
#PersistentVolumeClaimTemplate: {
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec: #PersistentVolumeClaimSpec @go(Spec) @protobuf(2,bytes)
}
#ContainerPort: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	hostPort?: int32 @go(HostPort) @protobuf(2,varint,opt)
	containerPort: int32 @go(ContainerPort) @protobuf(3,varint,opt)
	protocol?: #Protocol @go(Protocol) @protobuf(4,bytes,opt,casttype=Protocol)
	hostIP?: string @go(HostIP) @protobuf(5,bytes,opt)
}
#VolumeMount: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(2,varint,opt)
	recursiveReadOnly?: null | #RecursiveReadOnlyMode @go(RecursiveReadOnly,*RecursiveReadOnlyMode) @protobuf(7,bytes,opt,casttype=RecursiveReadOnlyMode)
	mountPath: string @go(MountPath) @protobuf(3,bytes,opt)
	subPath?: string @go(SubPath) @protobuf(4,bytes,opt)
	mountPropagation?: null | #MountPropagationMode @go(MountPropagation,*MountPropagationMode) @protobuf(5,bytes,opt,casttype=MountPropagationMode)
	subPathExpr?: string @go(SubPathExpr) @protobuf(6,bytes,opt)
}
#MountPropagationMode: string
#enumMountPropagationMode:
	#MountPropagationNone |
	#MountPropagationHostToContainer |
	#MountPropagationBidirectional
#MountPropagationNone: #MountPropagationMode & "None"
#MountPropagationHostToContainer: #MountPropagationMode & "HostToContainer"
#MountPropagationBidirectional: #MountPropagationMode & "Bidirectional"
#RecursiveReadOnlyMode: string
#enumRecursiveReadOnlyMode:
	#RecursiveReadOnlyDisabled |
	#RecursiveReadOnlyIfPossible |
	#RecursiveReadOnlyEnabled
#RecursiveReadOnlyDisabled: #RecursiveReadOnlyMode & "Disabled"
#RecursiveReadOnlyIfPossible: #RecursiveReadOnlyMode & "IfPossible"
#RecursiveReadOnlyEnabled: #RecursiveReadOnlyMode & "Enabled"
#VolumeDevice: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	devicePath: string @go(DevicePath) @protobuf(2,bytes,opt)
}
#EnvVar: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	value?: string @go(Value) @protobuf(2,bytes,opt)
	valueFrom?: null | #EnvVarSource @go(ValueFrom,*EnvVarSource) @protobuf(3,bytes,opt)
}
#EnvVarSource: {
	fieldRef?: null | #ObjectFieldSelector @go(FieldRef,*ObjectFieldSelector) @protobuf(1,bytes,opt)
	resourceFieldRef?: null | #ResourceFieldSelector @go(ResourceFieldRef,*ResourceFieldSelector) @protobuf(2,bytes,opt)
	configMapKeyRef?: null | #ConfigMapKeySelector @go(ConfigMapKeyRef,*ConfigMapKeySelector) @protobuf(3,bytes,opt)
	secretKeyRef?: null | #SecretKeySelector @go(SecretKeyRef,*SecretKeySelector) @protobuf(4,bytes,opt)
}
#ObjectFieldSelector: {
	apiVersion?: string @go(APIVersion) @protobuf(1,bytes,opt)
	fieldPath: string @go(FieldPath) @protobuf(2,bytes,opt)
}
#ResourceFieldSelector: {
	containerName?: string @go(ContainerName) @protobuf(1,bytes,opt)
	"resource": string @go(Resource) @protobuf(2,bytes,opt)
	divisor?: resource.#Quantity @go(Divisor) @protobuf(3,bytes,opt)
}
#ConfigMapKeySelector: {
	#LocalObjectReference
	key: string @go(Key) @protobuf(2,bytes,opt)
	optional?: null | bool @go(Optional,*bool) @protobuf(3,varint,opt)
}
#SecretKeySelector: {
	#LocalObjectReference
	key: string @go(Key) @protobuf(2,bytes,opt)
	optional?: null | bool @go(Optional,*bool) @protobuf(3,varint,opt)
}
#EnvFromSource: {
	prefix?: string @go(Prefix) @protobuf(1,bytes,opt)
	configMapRef?: null | #ConfigMapEnvSource @go(ConfigMapRef,*ConfigMapEnvSource) @protobuf(2,bytes,opt)
	secretRef?: null | #SecretEnvSource @go(SecretRef,*SecretEnvSource) @protobuf(3,bytes,opt)
}
#ConfigMapEnvSource: {
	#LocalObjectReference
	optional?: null | bool @go(Optional,*bool) @protobuf(2,varint,opt)
}
#SecretEnvSource: {
	#LocalObjectReference
	optional?: null | bool @go(Optional,*bool) @protobuf(2,varint,opt)
}
#HTTPHeader: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	value: string @go(Value) @protobuf(2,bytes,opt)
}
#HTTPGetAction: {
	path?: string @go(Path) @protobuf(1,bytes,opt)
	port: intstr.#IntOrString @go(Port) @protobuf(2,bytes,opt)
	host?: string @go(Host) @protobuf(3,bytes,opt)
	scheme?: #URIScheme @go(Scheme) @protobuf(4,bytes,opt,casttype=URIScheme)
	httpHeaders?: [...#HTTPHeader] @go(HTTPHeaders,[]HTTPHeader) @protobuf(5,bytes,rep)
}
#URIScheme: string
#enumURIScheme:
	#URISchemeHTTP |
	#URISchemeHTTPS
#URISchemeHTTP: #URIScheme & "HTTP"
#URISchemeHTTPS: #URIScheme & "HTTPS"
#TCPSocketAction: {
	port: intstr.#IntOrString @go(Port) @protobuf(1,bytes,opt)
	host?: string @go(Host) @protobuf(2,bytes,opt)
}
#GRPCAction: {
	port: int32 @go(Port) @protobuf(1,bytes,opt)
	service?: null | string @go(Service,*string) @protobuf(2,bytes,opt)
}
#ExecAction: {
	command?: [...string] @go(Command,[]string) @protobuf(1,bytes,rep)
}
#SleepAction: {
	seconds: int64 @go(Seconds) @protobuf(1,bytes,opt)
}
#Probe: {
	#ProbeHandler
	initialDelaySeconds?: int32 @go(InitialDelaySeconds) @protobuf(2,varint,opt)
	timeoutSeconds?: int32 @go(TimeoutSeconds) @protobuf(3,varint,opt)
	periodSeconds?: int32 @go(PeriodSeconds) @protobuf(4,varint,opt)
	successThreshold?: int32 @go(SuccessThreshold) @protobuf(5,varint,opt)
	failureThreshold?: int32 @go(FailureThreshold) @protobuf(6,varint,opt)
	terminationGracePeriodSeconds?: null | int64 @go(TerminationGracePeriodSeconds,*int64) @protobuf(7,varint,opt)
}
#PullPolicy: string
#enumPullPolicy:
	#PullAlways |
	#PullNever |
	#PullIfNotPresent
#PullAlways: #PullPolicy & "Always"
#PullNever: #PullPolicy & "Never"
#PullIfNotPresent: #PullPolicy & "IfNotPresent"
#ResourceResizeRestartPolicy: string
#enumResourceResizeRestartPolicy:
	#NotRequired |
	#RestartContainer
#NotRequired: #ResourceResizeRestartPolicy & "NotRequired"
#RestartContainer: #ResourceResizeRestartPolicy & "RestartContainer"
#ContainerResizePolicy: {
	resourceName: #ResourceName @go(ResourceName) @protobuf(1,bytes,opt,casttype=ResourceName)
	restartPolicy: #ResourceResizeRestartPolicy @go(RestartPolicy) @protobuf(2,bytes,opt,casttype=ResourceResizeRestartPolicy)
}
#PreemptionPolicy: string
#enumPreemptionPolicy:
	#PreemptLowerPriority |
	#PreemptNever
#PreemptLowerPriority: #PreemptionPolicy & "PreemptLowerPriority"
#PreemptNever: #PreemptionPolicy & "Never"
#TerminationMessagePolicy: string
#enumTerminationMessagePolicy:
	#TerminationMessageReadFile |
	#TerminationMessageFallbackToLogsOnError
#TerminationMessageReadFile: #TerminationMessagePolicy & "File"
#TerminationMessageFallbackToLogsOnError: #TerminationMessagePolicy & "FallbackToLogsOnError"
#Capability: string
#Capabilities: {
	add?: [...#Capability] @go(Add,[]Capability) @protobuf(1,bytes,rep,casttype=Capability)
	drop?: [...#Capability] @go(Drop,[]Capability) @protobuf(2,bytes,rep,casttype=Capability)
}
#ResourceRequirements: {
	limits?: #ResourceList @go(Limits) @protobuf(1,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	requests?: #ResourceList @go(Requests) @protobuf(2,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	claims?: [...#ResourceClaim] @go(Claims,[]ResourceClaim) @protobuf(3,bytes,opt)
}
#VolumeResourceRequirements: {
	limits?: #ResourceList @go(Limits) @protobuf(1,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	requests?: #ResourceList @go(Requests) @protobuf(2,bytes,rep,casttype=ResourceList,castkey=ResourceName)
}
#ResourceClaim: {
	name: string @go(Name) @protobuf(1,bytes,opt)
}
#TerminationMessagePathDefault: "/dev/termination-log"
#Container: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	image?: string @go(Image) @protobuf(2,bytes,opt)
	command?: [...string] @go(Command,[]string) @protobuf(3,bytes,rep)
	args?: [...string] @go(Args,[]string) @protobuf(4,bytes,rep)
	workingDir?: string @go(WorkingDir) @protobuf(5,bytes,opt)
	ports?: [...#ContainerPort] @go(Ports,[]ContainerPort) @protobuf(6,bytes,rep)
	envFrom?: [...#EnvFromSource] @go(EnvFrom,[]EnvFromSource) @protobuf(19,bytes,rep)
	env?: [...#EnvVar] @go(Env,[]EnvVar) @protobuf(7,bytes,rep)
	resources?: #ResourceRequirements @go(Resources) @protobuf(8,bytes,opt)
	resizePolicy?: [...#ContainerResizePolicy] @go(ResizePolicy,[]ContainerResizePolicy) @protobuf(23,bytes,rep)
	restartPolicy?: null | #ContainerRestartPolicy @go(RestartPolicy,*ContainerRestartPolicy) @protobuf(24,bytes,opt,casttype=ContainerRestartPolicy)
	volumeMounts?: [...#VolumeMount] @go(VolumeMounts,[]VolumeMount) @protobuf(9,bytes,rep)
	volumeDevices?: [...#VolumeDevice] @go(VolumeDevices,[]VolumeDevice) @protobuf(21,bytes,rep)
	livenessProbe?: null | #Probe @go(LivenessProbe,*Probe) @protobuf(10,bytes,opt)
	readinessProbe?: null | #Probe @go(ReadinessProbe,*Probe) @protobuf(11,bytes,opt)
	startupProbe?: null | #Probe @go(StartupProbe,*Probe) @protobuf(22,bytes,opt)
	lifecycle?: null | #Lifecycle @go(Lifecycle,*Lifecycle) @protobuf(12,bytes,opt)
	terminationMessagePath?: string @go(TerminationMessagePath) @protobuf(13,bytes,opt)
	terminationMessagePolicy?: #TerminationMessagePolicy @go(TerminationMessagePolicy) @protobuf(20,bytes,opt,casttype=TerminationMessagePolicy)
	imagePullPolicy?: #PullPolicy @go(ImagePullPolicy) @protobuf(14,bytes,opt,casttype=PullPolicy)
	securityContext?: null | #SecurityContext @go(SecurityContext,*SecurityContext) @protobuf(15,bytes,opt)
	stdin?: bool @go(Stdin) @protobuf(16,varint,opt)
	stdinOnce?: bool @go(StdinOnce) @protobuf(17,varint,opt)
	tty?: bool @go(TTY) @protobuf(18,varint,opt)
}
#ProbeHandler: {
	exec?: null | #ExecAction @go(Exec,*ExecAction) @protobuf(1,bytes,opt)
	httpGet?: null | #HTTPGetAction @go(HTTPGet,*HTTPGetAction) @protobuf(2,bytes,opt)
	tcpSocket?: null | #TCPSocketAction @go(TCPSocket,*TCPSocketAction) @protobuf(3,bytes,opt)
	grpc?: null | #GRPCAction @go(GRPC,*GRPCAction) @protobuf(4,bytes,opt)
}
#LifecycleHandler: {
	exec?: null | #ExecAction @go(Exec,*ExecAction) @protobuf(1,bytes,opt)
	httpGet?: null | #HTTPGetAction @go(HTTPGet,*HTTPGetAction) @protobuf(2,bytes,opt)
	tcpSocket?: null | #TCPSocketAction @go(TCPSocket,*TCPSocketAction) @protobuf(3,bytes,opt)
	sleep?: null | #SleepAction @go(Sleep,*SleepAction) @protobuf(4,bytes,opt)
}
#Lifecycle: {
	postStart?: null | #LifecycleHandler @go(PostStart,*LifecycleHandler) @protobuf(1,bytes,opt)
	preStop?: null | #LifecycleHandler @go(PreStop,*LifecycleHandler) @protobuf(2,bytes,opt)
}
#ConditionStatus: string
#enumConditionStatus:
	#ConditionTrue |
	#ConditionFalse |
	#ConditionUnknown
#ConditionTrue:    #ConditionStatus & "True"
#ConditionFalse:   #ConditionStatus & "False"
#ConditionUnknown: #ConditionStatus & "Unknown"
#ContainerStateWaiting: {
	reason?: string @go(Reason) @protobuf(1,bytes,opt)
	message?: string @go(Message) @protobuf(2,bytes,opt)
}
#ContainerStateRunning: {
	startedAt?: metav1.#Time @go(StartedAt) @protobuf(1,bytes,opt)
}
#ContainerStateTerminated: {
	exitCode: int32 @go(ExitCode) @protobuf(1,varint,opt)
	signal?: int32 @go(Signal) @protobuf(2,varint,opt)
	reason?: string @go(Reason) @protobuf(3,bytes,opt)
	message?: string @go(Message) @protobuf(4,bytes,opt)
	startedAt?: metav1.#Time @go(StartedAt) @protobuf(5,bytes,opt)
	finishedAt?: metav1.#Time @go(FinishedAt) @protobuf(6,bytes,opt)
	containerID?: string @go(ContainerID) @protobuf(7,bytes,opt)
}
#ContainerState: {
	waiting?: null | #ContainerStateWaiting @go(Waiting,*ContainerStateWaiting) @protobuf(1,bytes,opt)
	running?: null | #ContainerStateRunning @go(Running,*ContainerStateRunning) @protobuf(2,bytes,opt)
	terminated?: null | #ContainerStateTerminated @go(Terminated,*ContainerStateTerminated) @protobuf(3,bytes,opt)
}
#ContainerStatus: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	state?: #ContainerState @go(State) @protobuf(2,bytes,opt)
	lastState?: #ContainerState @go(LastTerminationState) @protobuf(3,bytes,opt)
	ready: bool @go(Ready) @protobuf(4,varint,opt)
	restartCount: int32 @go(RestartCount) @protobuf(5,varint,opt)
	image: string @go(Image) @protobuf(6,bytes,opt)
	imageID: string @go(ImageID) @protobuf(7,bytes,opt)
	containerID?: string @go(ContainerID) @protobuf(8,bytes,opt)
	started?: null | bool @go(Started,*bool) @protobuf(9,varint,opt)
	allocatedResources?: #ResourceList @go(AllocatedResources) @protobuf(10,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	resources?: null | #ResourceRequirements @go(Resources,*ResourceRequirements) @protobuf(11,bytes,opt)
	volumeMounts?: [...#VolumeMountStatus] @go(VolumeMounts,[]VolumeMountStatus) @protobuf(12,bytes,rep)
}
#PodPhase: string
#enumPodPhase:
	#PodPending |
	#PodRunning |
	#PodSucceeded |
	#PodFailed |
	#PodUnknown
#PodPending: #PodPhase & "Pending"
#PodRunning: #PodPhase & "Running"
#PodSucceeded: #PodPhase & "Succeeded"
#PodFailed: #PodPhase & "Failed"
#PodUnknown: #PodPhase & "Unknown"
#PodConditionType: string
#enumPodConditionType:
	#ContainersReady |
	#PodInitialized |
	#PodReady |
	#PodScheduled |
	#DisruptionTarget |
	#PodReadyToStartContainers
#ContainersReady: #PodConditionType & "ContainersReady"
#PodInitialized: #PodConditionType & "Initialized"
#PodReady: #PodConditionType & "Ready"
#PodScheduled: #PodConditionType & "PodScheduled"
#DisruptionTarget: #PodConditionType & "DisruptionTarget"
#PodReadyToStartContainers: #PodConditionType & "PodReadyToStartContainers"
#PodReasonUnschedulable: "Unschedulable"
#PodReasonSchedulingGated: "SchedulingGated"
#PodReasonSchedulerError: "SchedulerError"
#PodReasonTerminationByKubelet: "TerminationByKubelet"
#PodReasonPreemptionByScheduler: "PreemptionByScheduler"
#PodCondition: {
	type: #PodConditionType @go(Type) @protobuf(1,bytes,opt,casttype=PodConditionType)
	status: #ConditionStatus @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	lastProbeTime?: metav1.#Time @go(LastProbeTime) @protobuf(3,bytes,opt)
	lastTransitionTime?: metav1.#Time @go(LastTransitionTime) @protobuf(4,bytes,opt)
	reason?: string @go(Reason) @protobuf(5,bytes,opt)
	message?: string @go(Message) @protobuf(6,bytes,opt)
}
#PodResizeStatus: string
#enumPodResizeStatus:
	#PodResizeStatusProposed |
	#PodResizeStatusInProgress |
	#PodResizeStatusDeferred |
	#PodResizeStatusInfeasible
#PodResizeStatusProposed: #PodResizeStatus & "Proposed"
#PodResizeStatusInProgress: #PodResizeStatus & "InProgress"
#PodResizeStatusDeferred: #PodResizeStatus & "Deferred"
#PodResizeStatusInfeasible: #PodResizeStatus & "Infeasible"
#VolumeMountStatus: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	mountPath: string @go(MountPath) @protobuf(2,bytes,opt)
	readOnly?: bool @go(ReadOnly) @protobuf(3,varint,opt)
	recursiveReadOnly?: null | #RecursiveReadOnlyMode @go(RecursiveReadOnly,*RecursiveReadOnlyMode) @protobuf(4,bytes,opt,casttype=RecursiveReadOnlyMode)
}
#RestartPolicy: string
#enumRestartPolicy:
	#RestartPolicyAlways |
	#RestartPolicyOnFailure |
	#RestartPolicyNever
#RestartPolicyAlways:    #RestartPolicy & "Always"
#RestartPolicyOnFailure: #RestartPolicy & "OnFailure"
#RestartPolicyNever:     #RestartPolicy & "Never"
#ContainerRestartPolicy: string
#enumContainerRestartPolicy:
	#ContainerRestartPolicyAlways
#ContainerRestartPolicyAlways: #ContainerRestartPolicy & "Always"
#DNSPolicy: string
#enumDNSPolicy:
	#DNSClusterFirstWithHostNet |
	#DNSClusterFirst |
	#DNSDefault |
	#DNSNone
#DNSClusterFirstWithHostNet: #DNSPolicy & "ClusterFirstWithHostNet"
#DNSClusterFirst: #DNSPolicy & "ClusterFirst"
#DNSDefault: #DNSPolicy & "Default"
#DNSNone: #DNSPolicy & "None"
#DefaultTerminationGracePeriodSeconds: 30
#NodeSelector: {
	nodeSelectorTerms: [...#NodeSelectorTerm] @go(NodeSelectorTerms,[]NodeSelectorTerm) @protobuf(1,bytes,rep)
}
#NodeSelectorTerm: {
	matchExpressions?: [...#NodeSelectorRequirement] @go(MatchExpressions,[]NodeSelectorRequirement) @protobuf(1,bytes,rep)
	matchFields?: [...#NodeSelectorRequirement] @go(MatchFields,[]NodeSelectorRequirement) @protobuf(2,bytes,rep)
}
#NodeSelectorRequirement: {
	key: string @go(Key) @protobuf(1,bytes,opt)
	operator: #NodeSelectorOperator @go(Operator) @protobuf(2,bytes,opt,casttype=NodeSelectorOperator)
	values?: [...string] @go(Values,[]string) @protobuf(3,bytes,rep)
}
#NodeSelectorOperator: string
#enumNodeSelectorOperator:
	#NodeSelectorOpIn |
	#NodeSelectorOpNotIn |
	#NodeSelectorOpExists |
	#NodeSelectorOpDoesNotExist |
	#NodeSelectorOpGt |
	#NodeSelectorOpLt
#NodeSelectorOpIn:           #NodeSelectorOperator & "In"
#NodeSelectorOpNotIn:        #NodeSelectorOperator & "NotIn"
#NodeSelectorOpExists:       #NodeSelectorOperator & "Exists"
#NodeSelectorOpDoesNotExist: #NodeSelectorOperator & "DoesNotExist"
#NodeSelectorOpGt:           #NodeSelectorOperator & "Gt"
#NodeSelectorOpLt:           #NodeSelectorOperator & "Lt"
#TopologySelectorTerm: {
	matchLabelExpressions?: [...#TopologySelectorLabelRequirement] @go(MatchLabelExpressions,[]TopologySelectorLabelRequirement) @protobuf(1,bytes,rep)
}
#TopologySelectorLabelRequirement: {
	key: string @go(Key) @protobuf(1,bytes,opt)
	values: [...string] @go(Values,[]string) @protobuf(2,bytes,rep)
}
#Affinity: {
	nodeAffinity?: null | #NodeAffinity @go(NodeAffinity,*NodeAffinity) @protobuf(1,bytes,opt)
	podAffinity?: null | #PodAffinity @go(PodAffinity,*PodAffinity) @protobuf(2,bytes,opt)
	podAntiAffinity?: null | #PodAntiAffinity @go(PodAntiAffinity,*PodAntiAffinity) @protobuf(3,bytes,opt)
}
#PodAffinity: {
	requiredDuringSchedulingIgnoredDuringExecution?: [...#PodAffinityTerm] @go(RequiredDuringSchedulingIgnoredDuringExecution,[]PodAffinityTerm) @protobuf(1,bytes,rep)
	preferredDuringSchedulingIgnoredDuringExecution?: [...#WeightedPodAffinityTerm] @go(PreferredDuringSchedulingIgnoredDuringExecution,[]WeightedPodAffinityTerm) @protobuf(2,bytes,rep)
}
#PodAntiAffinity: {
	requiredDuringSchedulingIgnoredDuringExecution?: [...#PodAffinityTerm] @go(RequiredDuringSchedulingIgnoredDuringExecution,[]PodAffinityTerm) @protobuf(1,bytes,rep)
	preferredDuringSchedulingIgnoredDuringExecution?: [...#WeightedPodAffinityTerm] @go(PreferredDuringSchedulingIgnoredDuringExecution,[]WeightedPodAffinityTerm) @protobuf(2,bytes,rep)
}
#WeightedPodAffinityTerm: {
	weight: int32 @go(Weight) @protobuf(1,varint,opt)
	podAffinityTerm: #PodAffinityTerm @go(PodAffinityTerm) @protobuf(2,bytes,opt)
}
#PodAffinityTerm: {
	labelSelector?: null | metav1.#LabelSelector @go(LabelSelector,*metav1.LabelSelector) @protobuf(1,bytes,opt)
	namespaces?: [...string] @go(Namespaces,[]string) @protobuf(2,bytes,rep)
	topologyKey: string @go(TopologyKey) @protobuf(3,bytes,opt)
	namespaceSelector?: null | metav1.#LabelSelector @go(NamespaceSelector,*metav1.LabelSelector) @protobuf(4,bytes,opt)
	matchLabelKeys?: [...string] @go(MatchLabelKeys,[]string) @protobuf(5,bytes,opt)
	mismatchLabelKeys?: [...string] @go(MismatchLabelKeys,[]string) @protobuf(6,bytes,opt)
}
#NodeAffinity: {
	requiredDuringSchedulingIgnoredDuringExecution?: null | #NodeSelector @go(RequiredDuringSchedulingIgnoredDuringExecution,*NodeSelector) @protobuf(1,bytes,opt)
	preferredDuringSchedulingIgnoredDuringExecution?: [...#PreferredSchedulingTerm] @go(PreferredDuringSchedulingIgnoredDuringExecution,[]PreferredSchedulingTerm) @protobuf(2,bytes,rep)
}
#PreferredSchedulingTerm: {
	weight: int32 @go(Weight) @protobuf(1,varint,opt)
	preference: #NodeSelectorTerm @go(Preference) @protobuf(2,bytes,opt)
}
#Taint: {
	key: string @go(Key) @protobuf(1,bytes,opt)
	value?: string @go(Value) @protobuf(2,bytes,opt)
	effect: #TaintEffect @go(Effect) @protobuf(3,bytes,opt,casttype=TaintEffect)
	timeAdded?: null | metav1.#Time @go(TimeAdded,*metav1.Time) @protobuf(4,bytes,opt)
}
#TaintEffect: string
#enumTaintEffect:
	#TaintEffectNoSchedule |
	#TaintEffectPreferNoSchedule |
	#TaintEffectNoExecute
#TaintEffectNoSchedule: #TaintEffect & "NoSchedule"
#TaintEffectPreferNoSchedule: #TaintEffect & "PreferNoSchedule"
#TaintEffectNoExecute: #TaintEffect & "NoExecute"
#Toleration: {
	key?: string @go(Key) @protobuf(1,bytes,opt)
	operator?: #TolerationOperator @go(Operator) @protobuf(2,bytes,opt,casttype=TolerationOperator)
	value?: string @go(Value) @protobuf(3,bytes,opt)
	effect?: #TaintEffect @go(Effect) @protobuf(4,bytes,opt,casttype=TaintEffect)
	tolerationSeconds?: null | int64 @go(TolerationSeconds,*int64) @protobuf(5,varint,opt)
}
#TolerationOperator: string
#enumTolerationOperator:
	#TolerationOpExists |
	#TolerationOpEqual
#TolerationOpExists: #TolerationOperator & "Exists"
#TolerationOpEqual:  #TolerationOperator & "Equal"
#PodReadinessGate: {
	conditionType: #PodConditionType @go(ConditionType) @protobuf(1,bytes,opt,casttype=PodConditionType)
}
#PodSpec: {
	volumes?: [...#Volume] @go(Volumes,[]Volume) @protobuf(1,bytes,rep)
	initContainers?: [...#Container] @go(InitContainers,[]Container) @protobuf(20,bytes,rep)
	containers: [...#Container] @go(Containers,[]Container) @protobuf(2,bytes,rep)
	ephemeralContainers?: [...#EphemeralContainer] @go(EphemeralContainers,[]EphemeralContainer) @protobuf(34,bytes,rep)
	restartPolicy?: #RestartPolicy @go(RestartPolicy) @protobuf(3,bytes,opt,casttype=RestartPolicy)
	terminationGracePeriodSeconds?: null | int64 @go(TerminationGracePeriodSeconds,*int64) @protobuf(4,varint,opt)
	activeDeadlineSeconds?: null | int64 @go(ActiveDeadlineSeconds,*int64) @protobuf(5,varint,opt)
	dnsPolicy?: #DNSPolicy @go(DNSPolicy) @protobuf(6,bytes,opt,casttype=DNSPolicy)
	nodeSelector?: {[string]: string} @go(NodeSelector,map[string]string) @protobuf(7,bytes,rep)
	serviceAccountName?: string @go(ServiceAccountName) @protobuf(8,bytes,opt)
	serviceAccount?: string @go(DeprecatedServiceAccount) @protobuf(9,bytes,opt)
	automountServiceAccountToken?: null | bool @go(AutomountServiceAccountToken,*bool) @protobuf(21,varint,opt)
	nodeName?: string @go(NodeName) @protobuf(10,bytes,opt)
	hostNetwork?: bool @go(HostNetwork) @protobuf(11,varint,opt)
	hostPID?: bool @go(HostPID) @protobuf(12,varint,opt)
	hostIPC?: bool @go(HostIPC) @protobuf(13,varint,opt)
	shareProcessNamespace?: null | bool @go(ShareProcessNamespace,*bool) @protobuf(27,varint,opt)
	securityContext?: null | #PodSecurityContext @go(SecurityContext,*PodSecurityContext) @protobuf(14,bytes,opt)
	imagePullSecrets?: [...#LocalObjectReference] @go(ImagePullSecrets,[]LocalObjectReference) @protobuf(15,bytes,rep)
	hostname?: string @go(Hostname) @protobuf(16,bytes,opt)
	subdomain?: string @go(Subdomain) @protobuf(17,bytes,opt)
	affinity?: null | #Affinity @go(Affinity,*Affinity) @protobuf(18,bytes,opt)
	schedulerName?: string @go(SchedulerName) @protobuf(19,bytes,opt)
	tolerations?: [...#Toleration] @go(Tolerations,[]Toleration) @protobuf(22,bytes,opt)
	hostAliases?: [...#HostAlias] @go(HostAliases,[]HostAlias) @protobuf(23,bytes,rep)
	priorityClassName?: string @go(PriorityClassName) @protobuf(24,bytes,opt)
	priority?: null | int32 @go(Priority,*int32) @protobuf(25,bytes,opt)
	dnsConfig?: null | #PodDNSConfig @go(DNSConfig,*PodDNSConfig) @protobuf(26,bytes,opt)
	readinessGates?: [...#PodReadinessGate] @go(ReadinessGates,[]PodReadinessGate) @protobuf(28,bytes,opt)
	runtimeClassName?: null | string @go(RuntimeClassName,*string) @protobuf(29,bytes,opt)
	enableServiceLinks?: null | bool @go(EnableServiceLinks,*bool) @protobuf(30,varint,opt)
	preemptionPolicy?: null | #PreemptionPolicy @go(PreemptionPolicy,*PreemptionPolicy) @protobuf(31,bytes,opt)
	overhead?: #ResourceList @go(Overhead) @protobuf(32,bytes,opt)
	topologySpreadConstraints?: [...#TopologySpreadConstraint] @go(TopologySpreadConstraints,[]TopologySpreadConstraint) @protobuf(33,bytes,opt)
	setHostnameAsFQDN?: null | bool @go(SetHostnameAsFQDN,*bool) @protobuf(35,varint,opt)
	os?: null | #PodOS @go(OS,*PodOS) @protobuf(36,bytes,opt)
	hostUsers?: null | bool @go(HostUsers,*bool) @protobuf(37,bytes,opt)
	schedulingGates?: [...#PodSchedulingGate] @go(SchedulingGates,[]PodSchedulingGate) @protobuf(38,bytes,opt)
	resourceClaims?: [...#PodResourceClaim] @go(ResourceClaims,[]PodResourceClaim) @protobuf(39,bytes,rep)
}
#PodResourceClaim: {
	name: string @go(Name) @protobuf(1,bytes)
	source?: #ClaimSource @go(Source) @protobuf(2,bytes)
}
#ClaimSource: {
	resourceClaimName?: null | string @go(ResourceClaimName,*string) @protobuf(1,bytes,opt)
	resourceClaimTemplateName?: null | string @go(ResourceClaimTemplateName,*string) @protobuf(2,bytes,opt)
}
#PodResourceClaimStatus: {
	name: string @go(Name) @protobuf(1,bytes)
	resourceClaimName?: null | string @go(ResourceClaimName,*string) @protobuf(2,bytes,opt)
}
#OSName: string
#enumOSName:
	#Linux |
	#Windows
#Linux:   #OSName & "linux"
#Windows: #OSName & "windows"
#PodOS: {
	name: #OSName @go(Name) @protobuf(1,bytes,opt)
}
#PodSchedulingGate: {
	name: string @go(Name) @protobuf(1,bytes,opt)
}
#UnsatisfiableConstraintAction: string
#enumUnsatisfiableConstraintAction:
	#DoNotSchedule |
	#ScheduleAnyway
#DoNotSchedule: #UnsatisfiableConstraintAction & "DoNotSchedule"
#ScheduleAnyway: #UnsatisfiableConstraintAction & "ScheduleAnyway"
#NodeInclusionPolicy: string
#enumNodeInclusionPolicy:
	#NodeInclusionPolicyIgnore |
	#NodeInclusionPolicyHonor
#NodeInclusionPolicyIgnore: #NodeInclusionPolicy & "Ignore"
#NodeInclusionPolicyHonor: #NodeInclusionPolicy & "Honor"
#TopologySpreadConstraint: {
	maxSkew: int32 @go(MaxSkew) @protobuf(1,varint,opt)
	topologyKey: string @go(TopologyKey) @protobuf(2,bytes,opt)
	whenUnsatisfiable: #UnsatisfiableConstraintAction @go(WhenUnsatisfiable) @protobuf(3,bytes,opt,casttype=UnsatisfiableConstraintAction)
	labelSelector?: null | metav1.#LabelSelector @go(LabelSelector,*metav1.LabelSelector) @protobuf(4,bytes,opt)
	minDomains?: null | int32 @go(MinDomains,*int32) @protobuf(5,varint,opt)
	nodeAffinityPolicy?: null | #NodeInclusionPolicy @go(NodeAffinityPolicy,*NodeInclusionPolicy) @protobuf(6,bytes,opt)
	nodeTaintsPolicy?: null | #NodeInclusionPolicy @go(NodeTaintsPolicy,*NodeInclusionPolicy) @protobuf(7,bytes,opt)
	matchLabelKeys?: [...string] @go(MatchLabelKeys,[]string) @protobuf(8,bytes,opt)
}
#DefaultEnableServiceLinks: true
#HostAlias: {
	ip?: string @go(IP) @protobuf(1,bytes,opt)
	hostnames?: [...string] @go(Hostnames,[]string) @protobuf(2,bytes,rep)
}
#PodFSGroupChangePolicy: string
#enumPodFSGroupChangePolicy:
	#FSGroupChangeOnRootMismatch |
	#FSGroupChangeAlways
#FSGroupChangeOnRootMismatch: #PodFSGroupChangePolicy & "OnRootMismatch"
#FSGroupChangeAlways: #PodFSGroupChangePolicy & "Always"
#PodSecurityContext: {
	seLinuxOptions?: null | #SELinuxOptions @go(SELinuxOptions,*SELinuxOptions) @protobuf(1,bytes,opt)
	windowsOptions?: null | #WindowsSecurityContextOptions @go(WindowsOptions,*WindowsSecurityContextOptions) @protobuf(8,bytes,opt)
	runAsUser?: null | int64 @go(RunAsUser,*int64) @protobuf(2,varint,opt)
	runAsGroup?: null | int64 @go(RunAsGroup,*int64) @protobuf(6,varint,opt)
	runAsNonRoot?: null | bool @go(RunAsNonRoot,*bool) @protobuf(3,varint,opt)
	supplementalGroups?: [...int64] @go(SupplementalGroups,[]int64) @protobuf(4,varint,rep)
	fsGroup?: null | int64 @go(FSGroup,*int64) @protobuf(5,varint,opt)
	sysctls?: [...#Sysctl] @go(Sysctls,[]Sysctl) @protobuf(7,bytes,rep)
	fsGroupChangePolicy?: null | #PodFSGroupChangePolicy @go(FSGroupChangePolicy,*PodFSGroupChangePolicy) @protobuf(9,bytes,opt)
	seccompProfile?: null | #SeccompProfile @go(SeccompProfile,*SeccompProfile) @protobuf(10,bytes,opt)
	appArmorProfile?: null | #AppArmorProfile @go(AppArmorProfile,*AppArmorProfile) @protobuf(11,bytes,opt)
}
#SeccompProfile: {
	type: #SeccompProfileType @go(Type) @protobuf(1,bytes,opt,casttype=SeccompProfileType)
	localhostProfile?: null | string @go(LocalhostProfile,*string) @protobuf(2,bytes,opt)
}
#SeccompProfileType: string
#enumSeccompProfileType:
	#SeccompProfileTypeUnconfined |
	#SeccompProfileTypeRuntimeDefault |
	#SeccompProfileTypeLocalhost
#SeccompProfileTypeUnconfined: #SeccompProfileType & "Unconfined"
#SeccompProfileTypeRuntimeDefault: #SeccompProfileType & "RuntimeDefault"
#SeccompProfileTypeLocalhost: #SeccompProfileType & "Localhost"
#AppArmorProfile: {
	type: #AppArmorProfileType @go(Type) @protobuf(1,bytes,opt,casttype=AppArmorProfileType)
	localhostProfile?: null | string @go(LocalhostProfile,*string) @protobuf(2,bytes,opt)
}
#AppArmorProfileType: string
#enumAppArmorProfileType:
	#AppArmorProfileTypeUnconfined |
	#AppArmorProfileTypeRuntimeDefault |
	#AppArmorProfileTypeLocalhost
#AppArmorProfileTypeUnconfined: #AppArmorProfileType & "Unconfined"
#AppArmorProfileTypeRuntimeDefault: #AppArmorProfileType & "RuntimeDefault"
#AppArmorProfileTypeLocalhost: #AppArmorProfileType & "Localhost"
#PodQOSClass: string
#enumPodQOSClass:
	#PodQOSGuaranteed |
	#PodQOSBurstable |
	#PodQOSBestEffort
#PodQOSGuaranteed: #PodQOSClass & "Guaranteed"
#PodQOSBurstable: #PodQOSClass & "Burstable"
#PodQOSBestEffort: #PodQOSClass & "BestEffort"
#PodDNSConfig: {
	nameservers?: [...string] @go(Nameservers,[]string) @protobuf(1,bytes,rep)
	searches?: [...string] @go(Searches,[]string) @protobuf(2,bytes,rep)
	options?: [...#PodDNSConfigOption] @go(Options,[]PodDNSConfigOption) @protobuf(3,bytes,rep)
}
#PodDNSConfigOption: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	value?: null | string @go(Value,*string) @protobuf(2,bytes,opt)
}
#PodIP: {
	ip?: string @go(IP) @protobuf(1,bytes,opt)
}
#HostIP: {
	ip?: string @go(IP) @protobuf(1,bytes,opt)
}
#EphemeralContainerCommon: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	image?: string @go(Image) @protobuf(2,bytes,opt)
	command?: [...string] @go(Command,[]string) @protobuf(3,bytes,rep)
	args?: [...string] @go(Args,[]string) @protobuf(4,bytes,rep)
	workingDir?: string @go(WorkingDir) @protobuf(5,bytes,opt)
	ports?: [...#ContainerPort] @go(Ports,[]ContainerPort) @protobuf(6,bytes,rep)
	envFrom?: [...#EnvFromSource] @go(EnvFrom,[]EnvFromSource) @protobuf(19,bytes,rep)
	env?: [...#EnvVar] @go(Env,[]EnvVar) @protobuf(7,bytes,rep)
	resources?: #ResourceRequirements @go(Resources) @protobuf(8,bytes,opt)
	resizePolicy?: [...#ContainerResizePolicy] @go(ResizePolicy,[]ContainerResizePolicy) @protobuf(23,bytes,rep)
	restartPolicy?: null | #ContainerRestartPolicy @go(RestartPolicy,*ContainerRestartPolicy) @protobuf(24,bytes,opt,casttype=ContainerRestartPolicy)
	volumeMounts?: [...#VolumeMount] @go(VolumeMounts,[]VolumeMount) @protobuf(9,bytes,rep)
	volumeDevices?: [...#VolumeDevice] @go(VolumeDevices,[]VolumeDevice) @protobuf(21,bytes,rep)
	livenessProbe?: null | #Probe @go(LivenessProbe,*Probe) @protobuf(10,bytes,opt)
	readinessProbe?: null | #Probe @go(ReadinessProbe,*Probe) @protobuf(11,bytes,opt)
	startupProbe?: null | #Probe @go(StartupProbe,*Probe) @protobuf(22,bytes,opt)
	lifecycle?: null | #Lifecycle @go(Lifecycle,*Lifecycle) @protobuf(12,bytes,opt)
	terminationMessagePath?: string @go(TerminationMessagePath) @protobuf(13,bytes,opt)
	terminationMessagePolicy?: #TerminationMessagePolicy @go(TerminationMessagePolicy) @protobuf(20,bytes,opt,casttype=TerminationMessagePolicy)
	imagePullPolicy?: #PullPolicy @go(ImagePullPolicy) @protobuf(14,bytes,opt,casttype=PullPolicy)
	securityContext?: null | #SecurityContext @go(SecurityContext,*SecurityContext) @protobuf(15,bytes,opt)
	stdin?: bool @go(Stdin) @protobuf(16,varint,opt)
	stdinOnce?: bool @go(StdinOnce) @protobuf(17,varint,opt)
	tty?: bool @go(TTY) @protobuf(18,varint,opt)
}
#EphemeralContainer: {
	#EphemeralContainerCommon
	targetContainerName?: string @go(TargetContainerName) @protobuf(2,bytes,opt)
}
#PodStatus: {
	phase?: #PodPhase @go(Phase) @protobuf(1,bytes,opt,casttype=PodPhase)
	conditions?: [...#PodCondition] @go(Conditions,[]PodCondition) @protobuf(2,bytes,rep)
	message?: string @go(Message) @protobuf(3,bytes,opt)
	reason?: string @go(Reason) @protobuf(4,bytes,opt)
	nominatedNodeName?: string @go(NominatedNodeName) @protobuf(11,bytes,opt)
	hostIP?: string @go(HostIP) @protobuf(5,bytes,opt)
	hostIPs?: [...#HostIP] @go(HostIPs,[]HostIP) @protobuf(16,bytes,rep)
	podIP?: string @go(PodIP) @protobuf(6,bytes,opt)
	podIPs?: [...#PodIP] @go(PodIPs,[]PodIP) @protobuf(12,bytes,rep)
	startTime?: null | metav1.#Time @go(StartTime,*metav1.Time) @protobuf(7,bytes,opt)
	initContainerStatuses?: [...#ContainerStatus] @go(InitContainerStatuses,[]ContainerStatus) @protobuf(10,bytes,rep)
	containerStatuses?: [...#ContainerStatus] @go(ContainerStatuses,[]ContainerStatus) @protobuf(8,bytes,rep)
	qosClass?: #PodQOSClass @go(QOSClass) @protobuf(9,bytes,rep)
	ephemeralContainerStatuses?: [...#ContainerStatus] @go(EphemeralContainerStatuses,[]ContainerStatus) @protobuf(13,bytes,rep)
	resize?: #PodResizeStatus @go(Resize) @protobuf(14,bytes,opt,casttype=PodResizeStatus)
	resourceClaimStatuses?: [...#PodResourceClaimStatus] @go(ResourceClaimStatuses,[]PodResourceClaimStatus) @protobuf(15,bytes,rep)
}
#PodStatusResult: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	status?: #PodStatus @go(Status) @protobuf(2,bytes,opt)
}
#Pod: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #PodSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #PodStatus @go(Status) @protobuf(3,bytes,opt)
}
#PodList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Pod] @go(Items,[]Pod) @protobuf(2,bytes,rep)
}
#PodTemplateSpec: {
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #PodSpec @go(Spec) @protobuf(2,bytes,opt)
}
#PodTemplate: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	template?: #PodTemplateSpec @go(Template) @protobuf(2,bytes,opt)
}
#PodTemplateList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#PodTemplate] @go(Items,[]PodTemplate) @protobuf(2,bytes,rep)
}
#ReplicationControllerSpec: {
	replicas?: null | int32 @go(Replicas,*int32) @protobuf(1,varint,opt)
	minReadySeconds?: int32 @go(MinReadySeconds) @protobuf(4,varint,opt)
	selector?: {[string]: string} @go(Selector,map[string]string) @protobuf(2,bytes,rep)
	template?: null | #PodTemplateSpec @go(Template,*PodTemplateSpec) @protobuf(3,bytes,opt)
}
#ReplicationControllerStatus: {
	replicas: int32 @go(Replicas) @protobuf(1,varint,opt)
	fullyLabeledReplicas?: int32 @go(FullyLabeledReplicas) @protobuf(2,varint,opt)
	readyReplicas?: int32 @go(ReadyReplicas) @protobuf(4,varint,opt)
	availableReplicas?: int32 @go(AvailableReplicas) @protobuf(5,varint,opt)
	observedGeneration?: int64 @go(ObservedGeneration) @protobuf(3,varint,opt)
	conditions?: [...#ReplicationControllerCondition] @go(Conditions,[]ReplicationControllerCondition) @protobuf(6,bytes,rep)
}
#ReplicationControllerConditionType: string
#enumReplicationControllerConditionType:
	#ReplicationControllerReplicaFailure
#ReplicationControllerReplicaFailure: #ReplicationControllerConditionType & "ReplicaFailure"
#ReplicationControllerCondition: {
	type: #ReplicationControllerConditionType @go(Type) @protobuf(1,bytes,opt,casttype=ReplicationControllerConditionType)
	status: #ConditionStatus @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	lastTransitionTime?: metav1.#Time @go(LastTransitionTime) @protobuf(3,bytes,opt)
	reason?: string @go(Reason) @protobuf(4,bytes,opt)
	message?: string @go(Message) @protobuf(5,bytes,opt)
}
#ReplicationController: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #ReplicationControllerSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #ReplicationControllerStatus @go(Status) @protobuf(3,bytes,opt)
}
#ReplicationControllerList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#ReplicationController] @go(Items,[]ReplicationController) @protobuf(2,bytes,rep)
}
#ServiceAffinity: string
#enumServiceAffinity:
	#ServiceAffinityClientIP |
	#ServiceAffinityNone
#ServiceAffinityClientIP: #ServiceAffinity & "ClientIP"
#ServiceAffinityNone: #ServiceAffinity & "None"
#DefaultClientIPServiceAffinitySeconds: int32 & 10800
#SessionAffinityConfig: {
	clientIP?: null | #ClientIPConfig @go(ClientIP,*ClientIPConfig) @protobuf(1,bytes,opt)
}
#ClientIPConfig: {
	timeoutSeconds?: null | int32 @go(TimeoutSeconds,*int32) @protobuf(1,varint,opt)
}
#ServiceType: string
#enumServiceType:
	#ServiceTypeClusterIP |
	#ServiceTypeNodePort |
	#ServiceTypeLoadBalancer |
	#ServiceTypeExternalName
#ServiceTypeClusterIP: #ServiceType & "ClusterIP"
#ServiceTypeNodePort: #ServiceType & "NodePort"
#ServiceTypeLoadBalancer: #ServiceType & "LoadBalancer"
#ServiceTypeExternalName: #ServiceType & "ExternalName"
#ServiceInternalTrafficPolicy: string
#enumServiceInternalTrafficPolicy:
	#ServiceInternalTrafficPolicyCluster |
	#ServiceInternalTrafficPolicyLocal
#ServiceInternalTrafficPolicyCluster: #ServiceInternalTrafficPolicy & "Cluster"
#ServiceInternalTrafficPolicyLocal: #ServiceInternalTrafficPolicy & "Local"
#ServiceInternalTrafficPolicyType: #ServiceInternalTrafficPolicy
#enumServiceInternalTrafficPolicyType:
	#ServiceInternalTrafficPolicyCluster |
	#ServiceInternalTrafficPolicyLocal
#ServiceExternalTrafficPolicy: string
#enumServiceExternalTrafficPolicy:
	#ServiceExternalTrafficPolicyCluster |
	#ServiceExternalTrafficPolicyLocal |
	#ServiceExternalTrafficPolicyTypeLocal |
	#ServiceExternalTrafficPolicyTypeCluster
#ServiceExternalTrafficPolicyCluster: #ServiceExternalTrafficPolicy & "Cluster"
#ServiceExternalTrafficPolicyLocal: #ServiceExternalTrafficPolicy & "Local"
#ServiceExternalTrafficPolicyType: #ServiceExternalTrafficPolicy
#enumServiceExternalTrafficPolicyType:
	#ServiceExternalTrafficPolicyCluster |
	#ServiceExternalTrafficPolicyLocal |
	#ServiceExternalTrafficPolicyTypeLocal |
	#ServiceExternalTrafficPolicyTypeCluster
#ServiceExternalTrafficPolicyTypeLocal:   #ServiceExternalTrafficPolicy & "Local"
#ServiceExternalTrafficPolicyTypeCluster: #ServiceExternalTrafficPolicy & "Cluster"
#ServiceTrafficDistributionPreferClose: "PreferClose"
#LoadBalancerPortsError: "LoadBalancerPortsError"
#LoadBalancerPortsErrorReason: "LoadBalancerMixedProtocolNotSupported"
#ServiceStatus: {
	loadBalancer?: #LoadBalancerStatus @go(LoadBalancer) @protobuf(1,bytes,opt)
	conditions?: [...metav1.#Condition] @go(Conditions,[]metav1.Condition) @protobuf(2,bytes,rep)
}
#LoadBalancerStatus: {
	ingress?: [...#LoadBalancerIngress] @go(Ingress,[]LoadBalancerIngress) @protobuf(1,bytes,rep)
}
#LoadBalancerIngress: {
	ip?: string @go(IP) @protobuf(1,bytes,opt)
	hostname?: string @go(Hostname) @protobuf(2,bytes,opt)
	ipMode?: null | #LoadBalancerIPMode @go(IPMode,*LoadBalancerIPMode) @protobuf(3,bytes,opt)
	ports?: [...#PortStatus] @go(Ports,[]PortStatus) @protobuf(4,bytes,rep)
}
#IPFamily: string
#enumIPFamily:
	#IPv4Protocol |
	#IPv6Protocol |
	#IPFamilyUnknown
#IPv4Protocol: #IPFamily & "IPv4"
#IPv6Protocol: #IPFamily & "IPv6"
#IPFamilyUnknown: #IPFamily & ""
#IPFamilyPolicy: string
#enumIPFamilyPolicy:
	#IPFamilyPolicySingleStack |
	#IPFamilyPolicyPreferDualStack |
	#IPFamilyPolicyRequireDualStack
#IPFamilyPolicySingleStack: #IPFamilyPolicy & "SingleStack"
#IPFamilyPolicyPreferDualStack: #IPFamilyPolicy & "PreferDualStack"
#IPFamilyPolicyRequireDualStack: #IPFamilyPolicy & "RequireDualStack"
#IPFamilyPolicyType: #IPFamilyPolicy
#enumIPFamilyPolicyType:
	#IPFamilyPolicySingleStack |
	#IPFamilyPolicyPreferDualStack |
	#IPFamilyPolicyRequireDualStack
#ServiceSpec: {
	ports?: [...#ServicePort] @go(Ports,[]ServicePort) @protobuf(1,bytes,rep)
	selector?: {[string]: string} @go(Selector,map[string]string) @protobuf(2,bytes,rep)
	clusterIP?: string @go(ClusterIP) @protobuf(3,bytes,opt)
	clusterIPs?: [...string] @go(ClusterIPs,[]string) @protobuf(18,bytes,opt)
	type?: #ServiceType @go(Type) @protobuf(4,bytes,opt,casttype=ServiceType)
	externalIPs?: [...string] @go(ExternalIPs,[]string) @protobuf(5,bytes,rep)
	sessionAffinity?: #ServiceAffinity @go(SessionAffinity) @protobuf(7,bytes,opt,casttype=ServiceAffinity)
	loadBalancerIP?: string @go(LoadBalancerIP) @protobuf(8,bytes,opt)
	loadBalancerSourceRanges?: [...string] @go(LoadBalancerSourceRanges,[]string) @protobuf(9,bytes,opt)
	externalName?: string @go(ExternalName) @protobuf(10,bytes,opt)
	externalTrafficPolicy?: #ServiceExternalTrafficPolicy @go(ExternalTrafficPolicy) @protobuf(11,bytes,opt)
	healthCheckNodePort?: int32 @go(HealthCheckNodePort) @protobuf(12,bytes,opt)
	publishNotReadyAddresses?: bool @go(PublishNotReadyAddresses) @protobuf(13,varint,opt)
	sessionAffinityConfig?: null | #SessionAffinityConfig @go(SessionAffinityConfig,*SessionAffinityConfig) @protobuf(14,bytes,opt)
	ipFamilies?: [...#IPFamily] @go(IPFamilies,[]IPFamily) @protobuf(19,bytes,opt,casttype=IPFamily)
	ipFamilyPolicy?: null | #IPFamilyPolicy @go(IPFamilyPolicy,*IPFamilyPolicy) @protobuf(17,bytes,opt,casttype=IPFamilyPolicy)
	allocateLoadBalancerNodePorts?: null | bool @go(AllocateLoadBalancerNodePorts,*bool) @protobuf(20,bytes,opt)
	loadBalancerClass?: null | string @go(LoadBalancerClass,*string) @protobuf(21,bytes,opt)
	internalTrafficPolicy?: null | #ServiceInternalTrafficPolicy @go(InternalTrafficPolicy,*ServiceInternalTrafficPolicy) @protobuf(22,bytes,opt)
	trafficDistribution?: null | string @go(TrafficDistribution,*string) @protobuf(23,bytes,opt)
}
#ServicePort: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	protocol?: #Protocol @go(Protocol) @protobuf(2,bytes,opt,casttype=Protocol)
	appProtocol?: null | string @go(AppProtocol,*string) @protobuf(6,bytes,opt)
	port: int32 @go(Port) @protobuf(3,varint,opt)
	targetPort?: intstr.#IntOrString @go(TargetPort) @protobuf(4,bytes,opt)
	nodePort?: int32 @go(NodePort) @protobuf(5,varint,opt)
}
#Service: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #ServiceSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #ServiceStatus @go(Status) @protobuf(3,bytes,opt)
}
#ClusterIPNone: "None"
#ServiceList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Service] @go(Items,[]Service) @protobuf(2,bytes,rep)
}
#ServiceAccount: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	secrets?: [...#ObjectReference] @go(Secrets,[]ObjectReference) @protobuf(2,bytes,rep)
	imagePullSecrets?: [...#LocalObjectReference] @go(ImagePullSecrets,[]LocalObjectReference) @protobuf(3,bytes,rep)
	automountServiceAccountToken?: null | bool @go(AutomountServiceAccountToken,*bool) @protobuf(4,varint,opt)
}
#ServiceAccountList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#ServiceAccount] @go(Items,[]ServiceAccount) @protobuf(2,bytes,rep)
}
#Endpoints: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	subsets?: [...#EndpointSubset] @go(Subsets,[]EndpointSubset) @protobuf(2,bytes,rep)
}
#EndpointSubset: {
	addresses?: [...#EndpointAddress] @go(Addresses,[]EndpointAddress) @protobuf(1,bytes,rep)
	notReadyAddresses?: [...#EndpointAddress] @go(NotReadyAddresses,[]EndpointAddress) @protobuf(2,bytes,rep)
	ports?: [...#EndpointPort] @go(Ports,[]EndpointPort) @protobuf(3,bytes,rep)
}
#EndpointAddress: {
	ip: string @go(IP) @protobuf(1,bytes,opt)
	hostname?: string @go(Hostname) @protobuf(3,bytes,opt)
	nodeName?: null | string @go(NodeName,*string) @protobuf(4,bytes,opt)
	targetRef?: null | #ObjectReference @go(TargetRef,*ObjectReference) @protobuf(2,bytes,opt)
}
#EndpointPort: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	port: int32 @go(Port) @protobuf(2,varint,opt)
	protocol?: #Protocol @go(Protocol) @protobuf(3,bytes,opt,casttype=Protocol)
	appProtocol?: null | string @go(AppProtocol,*string) @protobuf(4,bytes,opt)
}
#EndpointsList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Endpoints] @go(Items,[]Endpoints) @protobuf(2,bytes,rep)
}
#NodeSpec: {
	podCIDR?: string @go(PodCIDR) @protobuf(1,bytes,opt)
	podCIDRs?: [...string] @go(PodCIDRs,[]string) @protobuf(7,bytes,opt)
	providerID?: string @go(ProviderID) @protobuf(3,bytes,opt)
	unschedulable?: bool @go(Unschedulable) @protobuf(4,varint,opt)
	taints?: [...#Taint] @go(Taints,[]Taint) @protobuf(5,bytes,opt)
	configSource?: null | #NodeConfigSource @go(ConfigSource,*NodeConfigSource) @protobuf(6,bytes,opt)
	externalID?: string @go(DoNotUseExternalID) @protobuf(2,bytes,opt)
}
#NodeConfigSource: {
	configMap?: null | #ConfigMapNodeConfigSource @go(ConfigMap,*ConfigMapNodeConfigSource) @protobuf(2,bytes,opt)
}
#ConfigMapNodeConfigSource: {
	namespace: string @go(Namespace) @protobuf(1,bytes,opt)
	name: string @go(Name) @protobuf(2,bytes,opt)
	uid?: types.#UID @go(UID) @protobuf(3,bytes,opt)
	resourceVersion?: string @go(ResourceVersion) @protobuf(4,bytes,opt)
	kubeletConfigKey: string @go(KubeletConfigKey) @protobuf(5,bytes,opt)
}
#DaemonEndpoint: {
	Port: int32 @protobuf(1,varint,opt)
}
#NodeDaemonEndpoints: {
	kubeletEndpoint?: #DaemonEndpoint @go(KubeletEndpoint) @protobuf(1,bytes,opt)
}
#NodeRuntimeHandlerFeatures: {
	recursiveReadOnlyMounts?: null | bool @go(RecursiveReadOnlyMounts,*bool) @protobuf(1,varint,opt)
}
#NodeRuntimeHandler: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	features?: null | #NodeRuntimeHandlerFeatures @go(Features,*NodeRuntimeHandlerFeatures) @protobuf(2,bytes,opt)
}
#NodeSystemInfo: {
	machineID: string @go(MachineID) @protobuf(1,bytes,opt)
	systemUUID: string @go(SystemUUID) @protobuf(2,bytes,opt)
	bootID: string @go(BootID) @protobuf(3,bytes,opt)
	kernelVersion: string @go(KernelVersion) @protobuf(4,bytes,opt)
	osImage: string @go(OSImage) @protobuf(5,bytes,opt)
	containerRuntimeVersion: string @go(ContainerRuntimeVersion) @protobuf(6,bytes,opt)
	kubeletVersion: string @go(KubeletVersion) @protobuf(7,bytes,opt)
	kubeProxyVersion: string @go(KubeProxyVersion) @protobuf(8,bytes,opt)
	operatingSystem: string @go(OperatingSystem) @protobuf(9,bytes,opt)
	architecture: string @go(Architecture) @protobuf(10,bytes,opt)
}
#NodeConfigStatus: {
	assigned?: null | #NodeConfigSource @go(Assigned,*NodeConfigSource) @protobuf(1,bytes,opt)
	active?: null | #NodeConfigSource @go(Active,*NodeConfigSource) @protobuf(2,bytes,opt)
	lastKnownGood?: null | #NodeConfigSource @go(LastKnownGood,*NodeConfigSource) @protobuf(3,bytes,opt)
	error?: string @go(Error) @protobuf(4,bytes,opt)
}
#NodeStatus: {
	capacity?: #ResourceList @go(Capacity) @protobuf(1,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	allocatable?: #ResourceList @go(Allocatable) @protobuf(2,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	phase?: #NodePhase @go(Phase) @protobuf(3,bytes,opt,casttype=NodePhase)
	conditions?: [...#NodeCondition] @go(Conditions,[]NodeCondition) @protobuf(4,bytes,rep)
	addresses?: [...#NodeAddress] @go(Addresses,[]NodeAddress) @protobuf(5,bytes,rep)
	daemonEndpoints?: #NodeDaemonEndpoints @go(DaemonEndpoints) @protobuf(6,bytes,opt)
	nodeInfo?: #NodeSystemInfo @go(NodeInfo) @protobuf(7,bytes,opt)
	images?: [...#ContainerImage] @go(Images,[]ContainerImage) @protobuf(8,bytes,rep)
	volumesInUse?: [...#UniqueVolumeName] @go(VolumesInUse,[]UniqueVolumeName) @protobuf(9,bytes,rep)
	volumesAttached?: [...#AttachedVolume] @go(VolumesAttached,[]AttachedVolume) @protobuf(10,bytes,rep)
	config?: null | #NodeConfigStatus @go(Config,*NodeConfigStatus) @protobuf(11,bytes,opt)
	runtimeHandlers?: [...#NodeRuntimeHandler] @go(RuntimeHandlers,[]NodeRuntimeHandler) @protobuf(12,bytes,rep)
}
#UniqueVolumeName: string
#AttachedVolume: {
	name: #UniqueVolumeName @go(Name) @protobuf(1,bytes,rep)
	devicePath: string @go(DevicePath) @protobuf(2,bytes,rep)
}
#AvoidPods: {
	preferAvoidPods?: [...#PreferAvoidPodsEntry] @go(PreferAvoidPods,[]PreferAvoidPodsEntry) @protobuf(1,bytes,rep)
}
#PreferAvoidPodsEntry: {
	podSignature: #PodSignature @go(PodSignature) @protobuf(1,bytes,opt)
	evictionTime?: metav1.#Time @go(EvictionTime) @protobuf(2,bytes,opt)
	reason?: string @go(Reason) @protobuf(3,bytes,opt)
	message?: string @go(Message) @protobuf(4,bytes,opt)
}
#PodSignature: {
	podController?: null | metav1.#OwnerReference @go(PodController,*metav1.OwnerReference) @protobuf(1,bytes,opt)
}
#ContainerImage: {
	names?: [...string] @go(Names,[]string) @protobuf(1,bytes,rep)
	sizeBytes?: int64 @go(SizeBytes) @protobuf(2,varint,opt)
}
#NodePhase: string
#enumNodePhase:
	#NodePending |
	#NodeRunning |
	#NodeTerminated
#NodePending: #NodePhase & "Pending"
#NodeRunning: #NodePhase & "Running"
#NodeTerminated: #NodePhase & "Terminated"
#NodeConditionType: string
#enumNodeConditionType:
	#NodeReady |
	#NodeMemoryPressure |
	#NodeDiskPressure |
	#NodePIDPressure |
	#NodeNetworkUnavailable
#NodeReady: #NodeConditionType & "Ready"
#NodeMemoryPressure: #NodeConditionType & "MemoryPressure"
#NodeDiskPressure: #NodeConditionType & "DiskPressure"
#NodePIDPressure: #NodeConditionType & "PIDPressure"
#NodeNetworkUnavailable: #NodeConditionType & "NetworkUnavailable"
#NodeCondition: {
	type: #NodeConditionType @go(Type) @protobuf(1,bytes,opt,casttype=NodeConditionType)
	status: #ConditionStatus @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	lastHeartbeatTime?: metav1.#Time @go(LastHeartbeatTime) @protobuf(3,bytes,opt)
	lastTransitionTime?: metav1.#Time @go(LastTransitionTime) @protobuf(4,bytes,opt)
	reason?: string @go(Reason) @protobuf(5,bytes,opt)
	message?: string @go(Message) @protobuf(6,bytes,opt)
}
#NodeAddressType: string
#enumNodeAddressType:
	#NodeHostName |
	#NodeInternalIP |
	#NodeExternalIP |
	#NodeInternalDNS |
	#NodeExternalDNS
#NodeHostName: #NodeAddressType & "Hostname"
#NodeInternalIP: #NodeAddressType & "InternalIP"
#NodeExternalIP: #NodeAddressType & "ExternalIP"
#NodeInternalDNS: #NodeAddressType & "InternalDNS"
#NodeExternalDNS: #NodeAddressType & "ExternalDNS"
#NodeAddress: {
	type: #NodeAddressType @go(Type) @protobuf(1,bytes,opt,casttype=NodeAddressType)
	address: string @go(Address) @protobuf(2,bytes,opt)
}
#ResourceName: string
#enumResourceName:
	#ResourceCPU |
	#ResourceMemory |
	#ResourceStorage |
	#ResourceEphemeralStorage |
	#ResourcePods |
	#ResourceServices |
	#ResourceReplicationControllers |
	#ResourceQuotas |
	#ResourceSecrets |
	#ResourceConfigMaps |
	#ResourcePersistentVolumeClaims |
	#ResourceServicesNodePorts |
	#ResourceServicesLoadBalancers |
	#ResourceRequestsCPU |
	#ResourceRequestsMemory |
	#ResourceRequestsStorage |
	#ResourceRequestsEphemeralStorage |
	#ResourceLimitsCPU |
	#ResourceLimitsMemory |
	#ResourceLimitsEphemeralStorage
#ResourceCPU: #ResourceName & "cpu"
#ResourceMemory: #ResourceName & "memory"
#ResourceStorage: #ResourceName & "storage"
#ResourceEphemeralStorage: #ResourceName & "ephemeral-storage"
#ResourceDefaultNamespacePrefix: "kubernetes.io/"
#ResourceHugePagesPrefix: "hugepages-"
#ResourceAttachableVolumesPrefix: "attachable-volumes-"
#ResourceList: {[string]: resource.#Quantity}
#Node: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #NodeSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #NodeStatus @go(Status) @protobuf(3,bytes,opt)
}
#NodeList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Node] @go(Items,[]Node) @protobuf(2,bytes,rep)
}
#FinalizerName: string
#enumFinalizerName:
	#FinalizerKubernetes
#FinalizerKubernetes: #FinalizerName & "kubernetes"
#NamespaceSpec: {
	finalizers?: [...#FinalizerName] @go(Finalizers,[]FinalizerName) @protobuf(1,bytes,rep,casttype=FinalizerName)
}
#NamespaceStatus: {
	phase?: #NamespacePhase @go(Phase) @protobuf(1,bytes,opt,casttype=NamespacePhase)
	conditions?: [...#NamespaceCondition] @go(Conditions,[]NamespaceCondition) @protobuf(2,bytes,rep)
}
#NamespacePhase: string
#enumNamespacePhase:
	#NamespaceActive |
	#NamespaceTerminating
#NamespaceActive: #NamespacePhase & "Active"
#NamespaceTerminating: #NamespacePhase & "Terminating"
#NamespaceTerminatingCause: metav1.#CauseType & "NamespaceTerminating"
#NamespaceConditionType: string
#enumNamespaceConditionType:
	#NamespaceDeletionDiscoveryFailure |
	#NamespaceDeletionContentFailure |
	#NamespaceDeletionGVParsingFailure |
	#NamespaceContentRemaining |
	#NamespaceFinalizersRemaining
#NamespaceDeletionDiscoveryFailure: #NamespaceConditionType & "NamespaceDeletionDiscoveryFailure"
#NamespaceDeletionContentFailure: #NamespaceConditionType & "NamespaceDeletionContentFailure"
#NamespaceDeletionGVParsingFailure: #NamespaceConditionType & "NamespaceDeletionGroupVersionParsingFailure"
#NamespaceContentRemaining: #NamespaceConditionType & "NamespaceContentRemaining"
#NamespaceFinalizersRemaining: #NamespaceConditionType & "NamespaceFinalizersRemaining"
#NamespaceCondition: {
	type: #NamespaceConditionType @go(Type) @protobuf(1,bytes,opt,casttype=NamespaceConditionType)
	status: #ConditionStatus @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	lastTransitionTime?: metav1.#Time @go(LastTransitionTime) @protobuf(4,bytes,opt)
	reason?: string @go(Reason) @protobuf(5,bytes,opt)
	message?: string @go(Message) @protobuf(6,bytes,opt)
}
#Namespace: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #NamespaceSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #NamespaceStatus @go(Status) @protobuf(3,bytes,opt)
}
#NamespaceList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Namespace] @go(Items,[]Namespace) @protobuf(2,bytes,rep)
}
#Binding: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	target: #ObjectReference @go(Target) @protobuf(2,bytes,opt)
}
#Preconditions: {
	uid?: null | types.#UID @go(UID,*types.UID) @protobuf(1,bytes,opt,casttype=k8s.io/apimachinery/pkg/types.UID)
}
#PodLogOptions: {
	metav1.#TypeMeta
	container?: string @go(Container) @protobuf(1,bytes,opt)
	follow?: bool @go(Follow) @protobuf(2,varint,opt)
	previous?: bool @go(Previous) @protobuf(3,varint,opt)
	sinceSeconds?: null | int64 @go(SinceSeconds,*int64) @protobuf(4,varint,opt)
	sinceTime?: null | metav1.#Time @go(SinceTime,*metav1.Time) @protobuf(5,bytes,opt)
	timestamps?: bool @go(Timestamps) @protobuf(6,varint,opt)
	tailLines?: null | int64 @go(TailLines,*int64) @protobuf(7,varint,opt)
	limitBytes?: null | int64 @go(LimitBytes,*int64) @protobuf(8,varint,opt)
	insecureSkipTLSVerifyBackend?: bool @go(InsecureSkipTLSVerifyBackend) @protobuf(9,varint,opt)
}
#PodAttachOptions: {
	metav1.#TypeMeta
	stdin?: bool @go(Stdin) @protobuf(1,varint,opt)
	stdout?: bool @go(Stdout) @protobuf(2,varint,opt)
	stderr?: bool @go(Stderr) @protobuf(3,varint,opt)
	tty?: bool @go(TTY) @protobuf(4,varint,opt)
	container?: string @go(Container) @protobuf(5,bytes,opt)
}
#PodExecOptions: {
	metav1.#TypeMeta
	stdin?: bool @go(Stdin) @protobuf(1,varint,opt)
	stdout?: bool @go(Stdout) @protobuf(2,varint,opt)
	stderr?: bool @go(Stderr) @protobuf(3,varint,opt)
	tty?: bool @go(TTY) @protobuf(4,varint,opt)
	container?: string @go(Container) @protobuf(5,bytes,opt)
	command: [...string] @go(Command,[]string) @protobuf(6,bytes,rep)
}
#PodPortForwardOptions: {
	metav1.#TypeMeta
	ports?: [...int32] @go(Ports,[]int32) @protobuf(1,varint,rep)
}
#PodProxyOptions: {
	metav1.#TypeMeta
	path?: string @go(Path) @protobuf(1,bytes,opt)
}
#NodeProxyOptions: {
	metav1.#TypeMeta
	path?: string @go(Path) @protobuf(1,bytes,opt)
}
#ServiceProxyOptions: {
	metav1.#TypeMeta
	path?: string @go(Path) @protobuf(1,bytes,opt)
}
#ObjectReference: {
	kind?: string @go(Kind) @protobuf(1,bytes,opt)
	namespace?: string @go(Namespace) @protobuf(2,bytes,opt)
	name?: string @go(Name) @protobuf(3,bytes,opt)
	uid?: types.#UID @go(UID) @protobuf(4,bytes,opt,casttype=k8s.io/apimachinery/pkg/types.UID)
	apiVersion?: string @go(APIVersion) @protobuf(5,bytes,opt)
	resourceVersion?: string @go(ResourceVersion) @protobuf(6,bytes,opt)
	fieldPath?: string @go(FieldPath) @protobuf(7,bytes,opt)
}
#LocalObjectReference: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
}
#TypedLocalObjectReference: {
	apiGroup?: null | string @go(APIGroup,*string) @protobuf(1,bytes,opt)
	kind: string @go(Kind) @protobuf(2,bytes,opt)
	name: string @go(Name) @protobuf(3,bytes,opt)
}
#SerializedReference: {
	metav1.#TypeMeta
	reference?: #ObjectReference @go(Reference) @protobuf(1,bytes,opt)
}
#EventSource: {
	component?: string @go(Component) @protobuf(1,bytes,opt)
	host?: string @go(Host) @protobuf(2,bytes,opt)
}
#EventTypeNormal: "Normal"
#EventTypeWarning: "Warning"
#Event: {
	metav1.#TypeMeta
	metadata: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	involvedObject: #ObjectReference @go(InvolvedObject) @protobuf(2,bytes,opt)
	reason?: string @go(Reason) @protobuf(3,bytes,opt)
	message?: string @go(Message) @protobuf(4,bytes,opt)
	source?: #EventSource @go(Source) @protobuf(5,bytes,opt)
	firstTimestamp?: metav1.#Time @go(FirstTimestamp) @protobuf(6,bytes,opt)
	lastTimestamp?: metav1.#Time @go(LastTimestamp) @protobuf(7,bytes,opt)
	count?: int32 @go(Count) @protobuf(8,varint,opt)
	type?: string @go(Type) @protobuf(9,bytes,opt)
	eventTime?: metav1.#MicroTime @go(EventTime) @protobuf(10,bytes,opt)
	series?: null | #EventSeries @go(Series,*EventSeries) @protobuf(11,bytes,opt)
	action?: string @go(Action) @protobuf(12,bytes,opt)
	related?: null | #ObjectReference @go(Related,*ObjectReference) @protobuf(13,bytes,opt)
	reportingComponent?: string @go(ReportingController) @protobuf(14,bytes,opt)
	reportingInstance?: string @go(ReportingInstance) @protobuf(15,bytes,opt)
}
#EventSeries: {
	count?: int32 @go(Count) @protobuf(1,varint)
	lastObservedTime?: metav1.#MicroTime @go(LastObservedTime) @protobuf(2,bytes)
}
#EventList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Event] @go(Items,[]Event) @protobuf(2,bytes,rep)
}
#List: metav1.#List
#LimitType: string
#enumLimitType:
	#LimitTypePod |
	#LimitTypeContainer |
	#LimitTypePersistentVolumeClaim
#LimitTypePod: #LimitType & "Pod"
#LimitTypeContainer: #LimitType & "Container"
#LimitTypePersistentVolumeClaim: #LimitType & "PersistentVolumeClaim"
#LimitRangeItem: {
	type: #LimitType @go(Type) @protobuf(1,bytes,opt,casttype=LimitType)
	max?: #ResourceList @go(Max) @protobuf(2,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	min?: #ResourceList @go(Min) @protobuf(3,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	default?: #ResourceList @go(Default) @protobuf(4,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	defaultRequest?: #ResourceList @go(DefaultRequest) @protobuf(5,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	maxLimitRequestRatio?: #ResourceList @go(MaxLimitRequestRatio) @protobuf(6,bytes,rep,casttype=ResourceList,castkey=ResourceName)
}
#LimitRangeSpec: {
	limits: [...#LimitRangeItem] @go(Limits,[]LimitRangeItem) @protobuf(1,bytes,rep)
}
#LimitRange: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #LimitRangeSpec @go(Spec) @protobuf(2,bytes,opt)
}
#LimitRangeList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#LimitRange] @go(Items,[]LimitRange) @protobuf(2,bytes,rep)
}
#ResourcePods: #ResourceName & "pods"
#ResourceServices: #ResourceName & "services"
#ResourceReplicationControllers: #ResourceName & "replicationcontrollers"
#ResourceQuotas: #ResourceName & "resourcequotas"
#ResourceSecrets: #ResourceName & "secrets"
#ResourceConfigMaps: #ResourceName & "configmaps"
#ResourcePersistentVolumeClaims: #ResourceName & "persistentvolumeclaims"
#ResourceServicesNodePorts: #ResourceName & "services.nodeports"
#ResourceServicesLoadBalancers: #ResourceName & "services.loadbalancers"
#ResourceRequestsCPU: #ResourceName & "requests.cpu"
#ResourceRequestsMemory: #ResourceName & "requests.memory"
#ResourceRequestsStorage: #ResourceName & "requests.storage"
#ResourceRequestsEphemeralStorage: #ResourceName & "requests.ephemeral-storage"
#ResourceLimitsCPU: #ResourceName & "limits.cpu"
#ResourceLimitsMemory: #ResourceName & "limits.memory"
#ResourceLimitsEphemeralStorage: #ResourceName & "limits.ephemeral-storage"
#ResourceRequestsHugePagesPrefix: "requests.hugepages-"
#DefaultResourceRequestsPrefix: "requests."
#ResourceQuotaScope: string
#enumResourceQuotaScope:
	#ResourceQuotaScopeTerminating |
	#ResourceQuotaScopeNotTerminating |
	#ResourceQuotaScopeBestEffort |
	#ResourceQuotaScopeNotBestEffort |
	#ResourceQuotaScopePriorityClass |
	#ResourceQuotaScopeCrossNamespacePodAffinity
#ResourceQuotaScopeTerminating: #ResourceQuotaScope & "Terminating"
#ResourceQuotaScopeNotTerminating: #ResourceQuotaScope & "NotTerminating"
#ResourceQuotaScopeBestEffort: #ResourceQuotaScope & "BestEffort"
#ResourceQuotaScopeNotBestEffort: #ResourceQuotaScope & "NotBestEffort"
#ResourceQuotaScopePriorityClass: #ResourceQuotaScope & "PriorityClass"
#ResourceQuotaScopeCrossNamespacePodAffinity: #ResourceQuotaScope & "CrossNamespacePodAffinity"
#ResourceQuotaSpec: {
	hard?: #ResourceList @go(Hard) @protobuf(1,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	scopes?: [...#ResourceQuotaScope] @go(Scopes,[]ResourceQuotaScope) @protobuf(2,bytes,rep,casttype=ResourceQuotaScope)
	scopeSelector?: null | #ScopeSelector @go(ScopeSelector,*ScopeSelector) @protobuf(3,bytes,opt)
}
#ScopeSelector: {
	matchExpressions?: [...#ScopedResourceSelectorRequirement] @go(MatchExpressions,[]ScopedResourceSelectorRequirement) @protobuf(1,bytes,rep)
}
#ScopedResourceSelectorRequirement: {
	scopeName: #ResourceQuotaScope @go(ScopeName) @protobuf(1,bytes,opt)
	operator: #ScopeSelectorOperator @go(Operator) @protobuf(2,bytes,opt,casttype=ScopedResourceSelectorOperator)
	values?: [...string] @go(Values,[]string) @protobuf(3,bytes,rep)
}
#ScopeSelectorOperator: string
#enumScopeSelectorOperator:
	#ScopeSelectorOpIn |
	#ScopeSelectorOpNotIn |
	#ScopeSelectorOpExists |
	#ScopeSelectorOpDoesNotExist
#ScopeSelectorOpIn:           #ScopeSelectorOperator & "In"
#ScopeSelectorOpNotIn:        #ScopeSelectorOperator & "NotIn"
#ScopeSelectorOpExists:       #ScopeSelectorOperator & "Exists"
#ScopeSelectorOpDoesNotExist: #ScopeSelectorOperator & "DoesNotExist"
#ResourceQuotaStatus: {
	hard?: #ResourceList @go(Hard) @protobuf(1,bytes,rep,casttype=ResourceList,castkey=ResourceName)
	used?: #ResourceList @go(Used) @protobuf(2,bytes,rep,casttype=ResourceList,castkey=ResourceName)
}
#ResourceQuota: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #ResourceQuotaSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #ResourceQuotaStatus @go(Status) @protobuf(3,bytes,opt)
}
#ResourceQuotaList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#ResourceQuota] @go(Items,[]ResourceQuota) @protobuf(2,bytes,rep)
}
#Secret: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	immutable?: null | bool @go(Immutable,*bool) @protobuf(5,varint,opt)
	data?: {[string]: bytes} @go(Data,map[string][]byte) @protobuf(2,bytes,rep)
	stringData?: {[string]: string} @go(StringData,map[string]string) @protobuf(4,bytes,rep)
	type?: #SecretType @go(Type) @protobuf(3,bytes,opt,casttype=SecretType)
}
#MaxSecretSize: 1048576
#SecretType: string
#enumSecretType:
	#SecretTypeOpaque |
	#SecretTypeServiceAccountToken |
	#SecretTypeDockercfg |
	#SecretTypeDockerConfigJson |
	#SecretTypeBasicAuth |
	#SecretTypeSSHAuth |
	#SecretTypeTLS |
	#SecretTypeBootstrapToken
#SecretTypeOpaque: #SecretType & "Opaque"
#SecretTypeServiceAccountToken: #SecretType & "kubernetes.io/service-account-token"
#ServiceAccountNameKey: "kubernetes.io/service-account.name"
#ServiceAccountUIDKey: "kubernetes.io/service-account.uid"
#ServiceAccountTokenKey: "token"
#ServiceAccountKubeconfigKey: "kubernetes.kubeconfig"
#ServiceAccountRootCAKey: "ca.crt"
#ServiceAccountNamespaceKey: "namespace"
#SecretTypeDockercfg: #SecretType & "kubernetes.io/dockercfg"
#DockerConfigKey: ".dockercfg"
#SecretTypeDockerConfigJson: #SecretType & "kubernetes.io/dockerconfigjson"
#DockerConfigJsonKey: ".dockerconfigjson"
#SecretTypeBasicAuth: #SecretType & "kubernetes.io/basic-auth"
#BasicAuthUsernameKey: "username"
#BasicAuthPasswordKey: "password"
#SecretTypeSSHAuth: #SecretType & "kubernetes.io/ssh-auth"
#SSHAuthPrivateKey: "ssh-privatekey"
#SecretTypeTLS: #SecretType & "kubernetes.io/tls"
#TLSCertKey: "tls.crt"
#TLSPrivateKeyKey: "tls.key"
#SecretTypeBootstrapToken: #SecretType & "bootstrap.kubernetes.io/token"
#SecretList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Secret] @go(Items,[]Secret) @protobuf(2,bytes,rep)
}
#ConfigMap: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	immutable?: null | bool @go(Immutable,*bool) @protobuf(4,varint,opt)
	data?: {[string]: string} @go(Data,map[string]string) @protobuf(2,bytes,rep)
	binaryData?: {[string]: bytes} @go(BinaryData,map[string][]byte) @protobuf(3,bytes,rep)
}
#ConfigMapList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#ConfigMap] @go(Items,[]ConfigMap) @protobuf(2,bytes,rep)
}
#ComponentConditionType: string
#enumComponentConditionType:
	#ComponentHealthy
#ComponentHealthy: #ComponentConditionType & "Healthy"
#ComponentCondition: {
	type: #ComponentConditionType @go(Type) @protobuf(1,bytes,opt,casttype=ComponentConditionType)
	status: #ConditionStatus @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	message?: string @go(Message) @protobuf(3,bytes,opt)
	error?: string @go(Error) @protobuf(4,bytes,opt)
}
#ComponentStatus: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	conditions?: [...#ComponentCondition] @go(Conditions,[]ComponentCondition) @protobuf(2,bytes,rep)
}
#ComponentStatusList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#ComponentStatus] @go(Items,[]ComponentStatus) @protobuf(2,bytes,rep)
}
#DownwardAPIVolumeSource: {
	items?: [...#DownwardAPIVolumeFile] @go(Items,[]DownwardAPIVolumeFile) @protobuf(1,bytes,rep)
	defaultMode?: null | int32 @go(DefaultMode,*int32) @protobuf(2,varint,opt)
}
#DownwardAPIVolumeSourceDefaultMode: int32 & 0o644
#DownwardAPIVolumeFile: {
	path: string @go(Path) @protobuf(1,bytes,opt)
	fieldRef?: null | #ObjectFieldSelector @go(FieldRef,*ObjectFieldSelector) @protobuf(2,bytes,opt)
	resourceFieldRef?: null | #ResourceFieldSelector @go(ResourceFieldRef,*ResourceFieldSelector) @protobuf(3,bytes,opt)
	mode?: null | int32 @go(Mode,*int32) @protobuf(4,varint,opt)
}
#DownwardAPIProjection: {
	items?: [...#DownwardAPIVolumeFile] @go(Items,[]DownwardAPIVolumeFile) @protobuf(1,bytes,rep)
}
#SecurityContext: {
	capabilities?: null | #Capabilities @go(Capabilities,*Capabilities) @protobuf(1,bytes,opt)
	privileged?: null | bool @go(Privileged,*bool) @protobuf(2,varint,opt)
	seLinuxOptions?: null | #SELinuxOptions @go(SELinuxOptions,*SELinuxOptions) @protobuf(3,bytes,opt)
	windowsOptions?: null | #WindowsSecurityContextOptions @go(WindowsOptions,*WindowsSecurityContextOptions) @protobuf(10,bytes,opt)
	runAsUser?: null | int64 @go(RunAsUser,*int64) @protobuf(4,varint,opt)
	runAsGroup?: null | int64 @go(RunAsGroup,*int64) @protobuf(8,varint,opt)
	runAsNonRoot?: null | bool @go(RunAsNonRoot,*bool) @protobuf(5,varint,opt)
	readOnlyRootFilesystem?: null | bool @go(ReadOnlyRootFilesystem,*bool) @protobuf(6,varint,opt)
	allowPrivilegeEscalation?: null | bool @go(AllowPrivilegeEscalation,*bool) @protobuf(7,varint,opt)
	procMount?: null | #ProcMountType @go(ProcMount,*ProcMountType) @protobuf(9,bytes,opt)
	seccompProfile?: null | #SeccompProfile @go(SeccompProfile,*SeccompProfile) @protobuf(11,bytes,opt)
	appArmorProfile?: null | #AppArmorProfile @go(AppArmorProfile,*AppArmorProfile) @protobuf(12,bytes,opt)
}
#ProcMountType: string
#enumProcMountType:
	#DefaultProcMount |
	#UnmaskedProcMount
#DefaultProcMount: #ProcMountType & "Default"
#UnmaskedProcMount: #ProcMountType & "Unmasked"
#SELinuxOptions: {
	user?: string @go(User) @protobuf(1,bytes,opt)
	role?: string @go(Role) @protobuf(2,bytes,opt)
	type?: string @go(Type) @protobuf(3,bytes,opt)
	level?: string @go(Level) @protobuf(4,bytes,opt)
}
#WindowsSecurityContextOptions: {
	gmsaCredentialSpecName?: null | string @go(GMSACredentialSpecName,*string) @protobuf(1,bytes,opt)
	gmsaCredentialSpec?: null | string @go(GMSACredentialSpec,*string) @protobuf(2,bytes,opt)
	runAsUserName?: null | string @go(RunAsUserName,*string) @protobuf(3,bytes,opt)
	hostProcess?: null | bool @go(HostProcess,*bool) @protobuf(4,bytes,opt)
}
#RangeAllocation: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	range: string @go(Range) @protobuf(2,bytes,opt)
	data: bytes @go(Data,[]byte) @protobuf(3,bytes,opt)
}
#DefaultSchedulerName: "default-scheduler"
#DefaultHardPodAffinitySymmetricWeight: int32 & 1
#Sysctl: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	value: string @go(Value) @protobuf(2,bytes,opt)
}
#ExecStdinParam: "input"
#ExecStdoutParam: "output"
#ExecStderrParam: "error"
#ExecTTYParam: "tty"
#ExecCommandParam: "command"
#StreamType: "streamType"
#StreamTypeStdin: "stdin"
#StreamTypeStdout: "stdout"
#StreamTypeStderr: "stderr"
#StreamTypeData: "data"
#StreamTypeError: "error"
#StreamTypeResize: "resize"
#PortHeader: "port"
#PortForwardRequestIDHeader: "requestID"
#MixedProtocolNotSupported: "MixedProtocolNotSupported"
#PortStatus: {
	port: int32 @go(Port) @protobuf(1,varint,opt)
	protocol: #Protocol @go(Protocol) @protobuf(2,bytes,opt,casttype=Protocol)
	error?: null | string @go(Error,*string) @protobuf(3,bytes,opt)
}
#LoadBalancerIPMode: string
#enumLoadBalancerIPMode:
	#LoadBalancerIPModeVIP |
	#LoadBalancerIPModeProxy
#LoadBalancerIPModeVIP: #LoadBalancerIPMode & "VIP"
#LoadBalancerIPModeProxy: #LoadBalancerIPMode & "Proxy"