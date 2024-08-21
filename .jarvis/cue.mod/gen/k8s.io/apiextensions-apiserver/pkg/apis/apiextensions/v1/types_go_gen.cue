package v1
import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/types"
	"k8s.io/apimachinery/pkg/runtime"
)
#ConversionStrategyType: string
#enumConversionStrategyType:
	#NoneConverter |
	#WebhookConverter
#KubeAPIApprovedAnnotation: "api-approved.kubernetes.io"
#NoneConverter: #ConversionStrategyType & "None"
#WebhookConverter: #ConversionStrategyType & "Webhook"
#CustomResourceDefinitionSpec: {
	group: string @go(Group) @protobuf(1,bytes,opt)
	names: #CustomResourceDefinitionNames @go(Names) @protobuf(3,bytes,opt)
	scope: #ResourceScope @go(Scope) @protobuf(4,bytes,opt,casttype=ResourceScope)
	versions: [...#CustomResourceDefinitionVersion] @go(Versions,[]CustomResourceDefinitionVersion) @protobuf(7,bytes,rep)
	conversion?: null | #CustomResourceConversion @go(Conversion,*CustomResourceConversion) @protobuf(9,bytes,opt)
	preserveUnknownFields?: bool @go(PreserveUnknownFields) @protobuf(10,varint,opt)
}
#CustomResourceConversion: {
	strategy: #ConversionStrategyType @go(Strategy) @protobuf(1,bytes)
	webhook?: null | #WebhookConversion @go(Webhook,*WebhookConversion) @protobuf(2,bytes,opt)
}
#WebhookConversion: {
	clientConfig?: null | #WebhookClientConfig @go(ClientConfig,*WebhookClientConfig) @protobuf(2,bytes)
	conversionReviewVersions: [...string] @go(ConversionReviewVersions,[]string) @protobuf(3,bytes,rep)
}
#WebhookClientConfig: {
	url?: null | string @go(URL,*string) @protobuf(3,bytes,opt)
	service?: null | #ServiceReference @go(Service,*ServiceReference) @protobuf(1,bytes,opt)
	caBundle?: bytes @go(CABundle,[]byte) @protobuf(2,bytes,opt)
}
#ServiceReference: {
	namespace: string @go(Namespace) @protobuf(1,bytes,opt)
	name: string @go(Name) @protobuf(2,bytes,opt)
	path?: null | string @go(Path,*string) @protobuf(3,bytes,opt)
	port?: null | int32 @go(Port,*int32) @protobuf(4,varint,opt)
}
#CustomResourceDefinitionVersion: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	served: bool @go(Served) @protobuf(2,varint,opt)
	storage: bool @go(Storage) @protobuf(3,varint,opt)
	deprecated?: bool @go(Deprecated) @protobuf(7,varint,opt)
	deprecationWarning?: null | string @go(DeprecationWarning,*string) @protobuf(8,bytes,opt)
	schema?: null | #CustomResourceValidation @go(Schema,*CustomResourceValidation) @protobuf(4,bytes,opt)
	subresources?: null | #CustomResourceSubresources @go(Subresources,*CustomResourceSubresources) @protobuf(5,bytes,opt)
	additionalPrinterColumns?: [...#CustomResourceColumnDefinition] @go(AdditionalPrinterColumns,[]CustomResourceColumnDefinition) @protobuf(6,bytes,rep)
	selectableFields?: [...#SelectableField] @go(SelectableFields,[]SelectableField) @protobuf(9,bytes,rep)
}
#SelectableField: {
	jsonPath: string @go(JSONPath) @protobuf(1,bytes,opt)
}
#CustomResourceColumnDefinition: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	type: string @go(Type) @protobuf(2,bytes,opt)
	format?: string @go(Format) @protobuf(3,bytes,opt)
	description?: string @go(Description) @protobuf(4,bytes,opt)
	priority?: int32 @go(Priority) @protobuf(5,bytes,opt)
	jsonPath: string @go(JSONPath) @protobuf(6,bytes,opt)
}
#CustomResourceDefinitionNames: {
	plural: string @go(Plural) @protobuf(1,bytes,opt)
	singular?: string @go(Singular) @protobuf(2,bytes,opt)
	shortNames?: [...string] @go(ShortNames,[]string) @protobuf(3,bytes,opt)
	kind: string @go(Kind) @protobuf(4,bytes,opt)
	listKind?: string @go(ListKind) @protobuf(5,bytes,opt)
	categories?: [...string] @go(Categories,[]string) @protobuf(6,bytes,rep)
}
#ResourceScope: string
#enumResourceScope:
	#ClusterScoped |
	#NamespaceScoped
#ClusterScoped:   #ResourceScope & "Cluster"
#NamespaceScoped: #ResourceScope & "Namespaced"
#ConditionStatus: string
#enumConditionStatus:
	#ConditionTrue |
	#ConditionFalse |
	#ConditionUnknown
#ConditionTrue:    #ConditionStatus & "True"
#ConditionFalse:   #ConditionStatus & "False"
#ConditionUnknown: #ConditionStatus & "Unknown"
#CustomResourceDefinitionConditionType: string
#enumCustomResourceDefinitionConditionType:
	#Established |
	#NamesAccepted |
	#NonStructuralSchema |
	#Terminating |
	#KubernetesAPIApprovalPolicyConformant
#Established: #CustomResourceDefinitionConditionType & "Established"
#NamesAccepted: #CustomResourceDefinitionConditionType & "NamesAccepted"
#NonStructuralSchema: #CustomResourceDefinitionConditionType & "NonStructuralSchema"
#Terminating: #CustomResourceDefinitionConditionType & "Terminating"
#KubernetesAPIApprovalPolicyConformant: #CustomResourceDefinitionConditionType & "KubernetesAPIApprovalPolicyConformant"
#CustomResourceDefinitionCondition: {
	type: #CustomResourceDefinitionConditionType @go(Type) @protobuf(1,bytes,opt,casttype=CustomResourceDefinitionConditionType)
	status: #ConditionStatus @go(Status) @protobuf(2,bytes,opt,casttype=ConditionStatus)
	lastTransitionTime?: metav1.#Time @go(LastTransitionTime) @protobuf(3,bytes,opt)
	reason?: string @go(Reason) @protobuf(4,bytes,opt)
	message?: string @go(Message) @protobuf(5,bytes,opt)
}
#CustomResourceDefinitionStatus: {
	conditions?: [...#CustomResourceDefinitionCondition] @go(Conditions,[]CustomResourceDefinitionCondition) @protobuf(1,bytes,opt)
	acceptedNames?: #CustomResourceDefinitionNames @go(AcceptedNames) @protobuf(2,bytes,opt)
	storedVersions?: [...string] @go(StoredVersions,[]string) @protobuf(3,bytes,rep)
}
#CustomResourceCleanupFinalizer: "customresourcecleanup.apiextensions.k8s.io"
#CustomResourceDefinition: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec: #CustomResourceDefinitionSpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #CustomResourceDefinitionStatus @go(Status) @protobuf(3,bytes,opt)
}
#CustomResourceDefinitionList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#CustomResourceDefinition] @go(Items,[]CustomResourceDefinition) @protobuf(2,bytes,rep)
}
#CustomResourceValidation: {
	openAPIV3Schema?: null | #JSONSchemaProps @go(OpenAPIV3Schema,*JSONSchemaProps) @protobuf(1,bytes,opt)
}
#CustomResourceSubresources: {
	status?: null | #CustomResourceSubresourceStatus @go(Status,*CustomResourceSubresourceStatus) @protobuf(1,bytes,opt)
	scale?: null | #CustomResourceSubresourceScale @go(Scale,*CustomResourceSubresourceScale) @protobuf(2,bytes,opt)
}
#CustomResourceSubresourceStatus: {
}
#CustomResourceSubresourceScale: {
	specReplicasPath: string @go(SpecReplicasPath) @protobuf(1,bytes)
	statusReplicasPath: string @go(StatusReplicasPath) @protobuf(2,bytes,opt)
	labelSelectorPath?: null | string @go(LabelSelectorPath,*string) @protobuf(3,bytes,opt)
}
#ConversionReview: {
	metav1.#TypeMeta
	request?: null | #ConversionRequest @go(Request,*ConversionRequest) @protobuf(1,bytes,opt)
	response?: null | #ConversionResponse @go(Response,*ConversionResponse) @protobuf(2,bytes,opt)
}
#ConversionRequest: {
	uid: types.#UID @go(UID) @protobuf(1,bytes)
	desiredAPIVersion: string @go(DesiredAPIVersion) @protobuf(2,bytes)
	objects: [...runtime.#RawExtension] @go(Objects,[]runtime.RawExtension) @protobuf(3,bytes,rep)
}
#ConversionResponse: {
	uid: types.#UID @go(UID) @protobuf(1,bytes)
	convertedObjects: [...runtime.#RawExtension] @go(ConvertedObjects,[]runtime.RawExtension) @protobuf(2,bytes,rep)
	result: metav1.#Status @go(Result) @protobuf(3,bytes)
}