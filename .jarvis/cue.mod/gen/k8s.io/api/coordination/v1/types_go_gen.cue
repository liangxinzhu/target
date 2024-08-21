package v1
import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
#Lease: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #LeaseSpec @go(Spec) @protobuf(2,bytes,opt)
}
#LeaseSpec: {
	holderIdentity?: null | string @go(HolderIdentity,*string) @protobuf(1,bytes,opt)
	leaseDurationSeconds?: null | int32 @go(LeaseDurationSeconds,*int32) @protobuf(2,varint,opt)
	acquireTime?: null | metav1.#MicroTime @go(AcquireTime,*metav1.MicroTime) @protobuf(3,bytes,opt)
	renewTime?: null | metav1.#MicroTime @go(RenewTime,*metav1.MicroTime) @protobuf(4,bytes,opt)
	leaseTransitions?: null | int32 @go(LeaseTransitions,*int32) @protobuf(5,varint,opt)
}
#LeaseList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Lease] @go(Items,[]Lease) @protobuf(2,bytes,rep)
}