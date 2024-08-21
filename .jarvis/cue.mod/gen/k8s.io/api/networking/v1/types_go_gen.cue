package v1
import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/util/intstr"
)
#NetworkPolicy: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #NetworkPolicySpec @go(Spec) @protobuf(2,bytes,opt)
}
#PolicyType: string
#enumPolicyType:
	#PolicyTypeIngress |
	#PolicyTypeEgress
#PolicyTypeIngress: #PolicyType & "Ingress"
#PolicyTypeEgress: #PolicyType & "Egress"
#NetworkPolicySpec: {
	podSelector: metav1.#LabelSelector @go(PodSelector) @protobuf(1,bytes,opt)
	ingress?: [...#NetworkPolicyIngressRule] @go(Ingress,[]NetworkPolicyIngressRule) @protobuf(2,bytes,rep)
	egress?: [...#NetworkPolicyEgressRule] @go(Egress,[]NetworkPolicyEgressRule) @protobuf(3,bytes,rep)
	policyTypes?: [...#PolicyType] @go(PolicyTypes,[]PolicyType) @protobuf(4,bytes,rep,casttype=PolicyType)
}
#NetworkPolicyIngressRule: {
	ports?: [...#NetworkPolicyPort] @go(Ports,[]NetworkPolicyPort) @protobuf(1,bytes,rep)
	from?: [...#NetworkPolicyPeer] @go(From,[]NetworkPolicyPeer) @protobuf(2,bytes,rep)
}
#NetworkPolicyEgressRule: {
	ports?: [...#NetworkPolicyPort] @go(Ports,[]NetworkPolicyPort) @protobuf(1,bytes,rep)
	to?: [...#NetworkPolicyPeer] @go(To,[]NetworkPolicyPeer) @protobuf(2,bytes,rep)
}
#NetworkPolicyPort: {
	protocol?: null | v1.#Protocol @go(Protocol,*v1.Protocol) @protobuf(1,bytes,opt,casttype=k8s.io/api/core/v1.Protocol)
	port?: null | intstr.#IntOrString @go(Port,*intstr.IntOrString) @protobuf(2,bytes,opt)
	endPort?: null | int32 @go(EndPort,*int32) @protobuf(3,bytes,opt)
}
#IPBlock: {
	cidr: string @go(CIDR) @protobuf(1,bytes)
	except?: [...string] @go(Except,[]string) @protobuf(2,bytes,rep)
}
#NetworkPolicyPeer: {
	podSelector?: null | metav1.#LabelSelector @go(PodSelector,*metav1.LabelSelector) @protobuf(1,bytes,opt)
	namespaceSelector?: null | metav1.#LabelSelector @go(NamespaceSelector,*metav1.LabelSelector) @protobuf(2,bytes,opt)
	ipBlock?: null | #IPBlock @go(IPBlock,*IPBlock) @protobuf(3,bytes,rep)
}
#NetworkPolicyList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#NetworkPolicy] @go(Items,[]NetworkPolicy) @protobuf(2,bytes,rep)
}
#Ingress: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #IngressSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #IngressStatus @go(Status) @protobuf(3,bytes,opt)
}
#IngressList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#Ingress] @go(Items,[]Ingress) @protobuf(2,bytes,rep)
}
#IngressSpec: {
	ingressClassName?: null | string @go(IngressClassName,*string) @protobuf(4,bytes,opt)
	defaultBackend?: null | #IngressBackend @go(DefaultBackend,*IngressBackend) @protobuf(1,bytes,opt)
	tls?: [...#IngressTLS] @go(TLS,[]IngressTLS) @protobuf(2,bytes,rep)
	rules?: [...#IngressRule] @go(Rules,[]IngressRule) @protobuf(3,bytes,rep)
}
#IngressTLS: {
	hosts?: [...string] @go(Hosts,[]string) @protobuf(1,bytes,rep)
	secretName?: string @go(SecretName) @protobuf(2,bytes,opt)
}
#IngressStatus: {
	loadBalancer?: #IngressLoadBalancerStatus @go(LoadBalancer) @protobuf(1,bytes,opt)
}
#IngressLoadBalancerStatus: {
	ingress?: [...#IngressLoadBalancerIngress] @go(Ingress,[]IngressLoadBalancerIngress) @protobuf(1,bytes,rep)
}
#IngressLoadBalancerIngress: {
	ip?: string @go(IP) @protobuf(1,bytes,opt)
	hostname?: string @go(Hostname) @protobuf(2,bytes,opt)
	ports?: [...#IngressPortStatus] @go(Ports,[]IngressPortStatus) @protobuf(4,bytes,rep)
}
#IngressPortStatus: {
	port: int32 @go(Port) @protobuf(1,varint,opt)
	protocol: v1.#Protocol @go(Protocol) @protobuf(2,bytes,opt,casttype=Protocol)
	error?: null | string @go(Error,*string) @protobuf(3,bytes,opt)
}
#IngressRule: {
	host?: string @go(Host) @protobuf(1,bytes,opt)
	#IngressRuleValue
}
#IngressRuleValue: {
	http?: null | #HTTPIngressRuleValue @go(HTTP,*HTTPIngressRuleValue) @protobuf(1,bytes,opt)
}
#HTTPIngressRuleValue: {
	paths: [...#HTTPIngressPath] @go(Paths,[]HTTPIngressPath) @protobuf(1,bytes,rep)
}
#PathType: string
#enumPathType:
	#PathTypeExact |
	#PathTypePrefix |
	#PathTypeImplementationSpecific
#PathTypeExact: #PathType & "Exact"
#PathTypePrefix: #PathType & "Prefix"
#PathTypeImplementationSpecific: #PathType & "ImplementationSpecific"
#HTTPIngressPath: {
	path?: string @go(Path) @protobuf(1,bytes,opt)
	pathType?: null | #PathType @go(PathType,*PathType) @protobuf(3,bytes,opt)
	backend: #IngressBackend @go(Backend) @protobuf(2,bytes,opt)
}
#IngressBackend: {
	service?: null | #IngressServiceBackend @go(Service,*IngressServiceBackend) @protobuf(4,bytes,opt)
	resource?: null | v1.#TypedLocalObjectReference @go(Resource,*v1.TypedLocalObjectReference) @protobuf(3,bytes,opt)
}
#IngressServiceBackend: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	port?: #ServiceBackendPort @go(Port) @protobuf(2,bytes,opt)
}
#ServiceBackendPort: {
	name?: string @go(Name) @protobuf(1,bytes,opt)
	number?: int32 @go(Number) @protobuf(2,bytes,opt)
}
#IngressClass: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #IngressClassSpec @go(Spec) @protobuf(2,bytes,opt)
}
#IngressClassSpec: {
	controller?: string @go(Controller) @protobuf(1,bytes,opt)
	parameters?: null | #IngressClassParametersReference @go(Parameters,*IngressClassParametersReference) @protobuf(2,bytes,opt)
}
#IngressClassParametersReferenceScopeNamespace: "Namespace"
#IngressClassParametersReferenceScopeCluster: "Cluster"
#IngressClassParametersReference: {
	apiGroup?: null | string @go(APIGroup,*string) @protobuf(1,bytes,opt,name=aPIGroup)
	kind: string @go(Kind) @protobuf(2,bytes,opt)
	name: string @go(Name) @protobuf(3,bytes,opt)
	scope?: null | string @go(Scope,*string) @protobuf(4,bytes,opt)
	namespace?: null | string @go(Namespace,*string) @protobuf(5,bytes,opt)
}
#IngressClassList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#IngressClass] @go(Items,[]IngressClass) @protobuf(2,bytes,rep)
}