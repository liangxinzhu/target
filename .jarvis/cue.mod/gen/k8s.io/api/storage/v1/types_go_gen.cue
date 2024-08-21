package v1
import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/api/resource"
)
#StorageClass: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	provisioner: string @go(Provisioner) @protobuf(2,bytes,opt)
	parameters?: {[string]: string} @go(Parameters,map[string]string) @protobuf(3,bytes,rep)
	reclaimPolicy?: null | v1.#PersistentVolumeReclaimPolicy @go(ReclaimPolicy,*v1.PersistentVolumeReclaimPolicy) @protobuf(4,bytes,opt,casttype=k8s.io/api/core/v1.PersistentVolumeReclaimPolicy)
	mountOptions?: [...string] @go(MountOptions,[]string) @protobuf(5,bytes,opt)
	allowVolumeExpansion?: null | bool @go(AllowVolumeExpansion,*bool) @protobuf(6,varint,opt)
	volumeBindingMode?: null | #VolumeBindingMode @go(VolumeBindingMode,*VolumeBindingMode) @protobuf(7,bytes,opt)
	allowedTopologies?: [...v1.#TopologySelectorTerm] @go(AllowedTopologies,[]v1.TopologySelectorTerm) @protobuf(8,bytes,rep)
}
#StorageClassList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#StorageClass] @go(Items,[]StorageClass) @protobuf(2,bytes,rep)
}
#VolumeBindingMode: string
#enumVolumeBindingMode:
	#VolumeBindingImmediate |
	#VolumeBindingWaitForFirstConsumer
#VolumeBindingImmediate: #VolumeBindingMode & "Immediate"
#VolumeBindingWaitForFirstConsumer: #VolumeBindingMode & "WaitForFirstConsumer"
#VolumeAttachment: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec: #VolumeAttachmentSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #VolumeAttachmentStatus @go(Status) @protobuf(3,bytes,opt)
}
#VolumeAttachmentList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#VolumeAttachment] @go(Items,[]VolumeAttachment) @protobuf(2,bytes,rep)
}
#VolumeAttachmentSpec: {
	attacher: string @go(Attacher) @protobuf(1,bytes,opt)
	source: #VolumeAttachmentSource @go(Source) @protobuf(2,bytes,opt)
	nodeName: string @go(NodeName) @protobuf(3,bytes,opt)
}
#VolumeAttachmentSource: {
	persistentVolumeName?: null | string @go(PersistentVolumeName,*string) @protobuf(1,bytes,opt)
	inlineVolumeSpec?: null | v1.#PersistentVolumeSpec @go(InlineVolumeSpec,*v1.PersistentVolumeSpec) @protobuf(2,bytes,opt)
}
#VolumeAttachmentStatus: {
	attached: bool @go(Attached) @protobuf(1,varint,opt)
	attachmentMetadata?: {[string]: string} @go(AttachmentMetadata,map[string]string) @protobuf(2,bytes,rep)
	attachError?: null | #VolumeError @go(AttachError,*VolumeError) @protobuf(3,bytes,opt,casttype=VolumeError)
	detachError?: null | #VolumeError @go(DetachError,*VolumeError) @protobuf(4,bytes,opt,casttype=VolumeError)
}
#VolumeError: {
	time?: metav1.#Time @go(Time) @protobuf(1,bytes,opt)
	message?: string @go(Message) @protobuf(2,bytes,opt)
}
#CSIDriver: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec: #CSIDriverSpec @go(Spec) @protobuf(2,bytes,opt)
}
#CSIDriverList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#CSIDriver] @go(Items,[]CSIDriver) @protobuf(2,bytes,rep)
}
#CSIDriverSpec: {
	attachRequired?: null | bool @go(AttachRequired,*bool) @protobuf(1,varint,opt)
	podInfoOnMount?: null | bool @go(PodInfoOnMount,*bool) @protobuf(2,bytes,opt)
	volumeLifecycleModes?: [...#VolumeLifecycleMode] @go(VolumeLifecycleModes,[]VolumeLifecycleMode) @protobuf(3,bytes,opt)
	storageCapacity?: null | bool @go(StorageCapacity,*bool) @protobuf(4,bytes,opt)
	fsGroupPolicy?: null | #FSGroupPolicy @go(FSGroupPolicy,*FSGroupPolicy) @protobuf(5,bytes,opt)
	tokenRequests?: [...#TokenRequest] @go(TokenRequests,[]TokenRequest) @protobuf(6,bytes,opt)
	requiresRepublish?: null | bool @go(RequiresRepublish,*bool) @protobuf(7,varint,opt)
	seLinuxMount?: null | bool @go(SELinuxMount,*bool) @protobuf(8,varint,opt)
}
#FSGroupPolicy: string
#enumFSGroupPolicy:
	#ReadWriteOnceWithFSTypeFSGroupPolicy |
	#FileFSGroupPolicy |
	#NoneFSGroupPolicy
#ReadWriteOnceWithFSTypeFSGroupPolicy: #FSGroupPolicy & "ReadWriteOnceWithFSType"
#FileFSGroupPolicy: #FSGroupPolicy & "File"
#NoneFSGroupPolicy: #FSGroupPolicy & "None"
#VolumeLifecycleMode: string
#enumVolumeLifecycleMode:
	#VolumeLifecyclePersistent |
	#VolumeLifecycleEphemeral
#TokenRequest: {
	audience: string @go(Audience) @protobuf(1,bytes,opt)
	expirationSeconds?: null | int64 @go(ExpirationSeconds,*int64) @protobuf(2,varint,opt)
}
#VolumeLifecyclePersistent: #VolumeLifecycleMode & "Persistent"
#VolumeLifecycleEphemeral: #VolumeLifecycleMode & "Ephemeral"
#CSINode: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec: #CSINodeSpec @go(Spec) @protobuf(2,bytes,opt)
}
#CSINodeSpec: {
	drivers: [...#CSINodeDriver] @go(Drivers,[]CSINodeDriver) @protobuf(1,bytes,rep)
}
#CSINodeDriver: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	nodeID: string @go(NodeID) @protobuf(2,bytes,opt)
	topologyKeys?: [...string] @go(TopologyKeys,[]string) @protobuf(3,bytes,rep)
	allocatable?: null | #VolumeNodeResources @go(Allocatable,*VolumeNodeResources) @protobuf(4,bytes,opt)
}
#VolumeNodeResources: {
	count?: null | int32 @go(Count,*int32) @protobuf(1,varint,opt)
}
#CSINodeList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#CSINode] @go(Items,[]CSINode) @protobuf(2,bytes,rep)
}
#CSIStorageCapacity: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	nodeTopology?: null | metav1.#LabelSelector @go(NodeTopology,*metav1.LabelSelector) @protobuf(2,bytes,opt)
	storageClassName: string @go(StorageClassName) @protobuf(3,bytes)
	capacity?: null | resource.#Quantity @go(Capacity,*resource.Quantity) @protobuf(4,bytes,opt)
	maximumVolumeSize?: null | resource.#Quantity @go(MaximumVolumeSize,*resource.Quantity) @protobuf(5,bytes,opt)
}
#CSIStorageCapacityList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#CSIStorageCapacity] @go(Items,[]CSIStorageCapacity) @protobuf(2,bytes,rep)
}