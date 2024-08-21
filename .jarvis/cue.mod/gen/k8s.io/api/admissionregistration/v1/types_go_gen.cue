package v1
import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
#Rule: {
	apiGroups?: [...string] @go(APIGroups,[]string) @protobuf(1,bytes,rep)
	apiVersions?: [...string] @go(APIVersions,[]string) @protobuf(2,bytes,rep)
	resources?: [...string] @go(Resources,[]string) @protobuf(3,bytes,rep)
	scope?: null | #ScopeType @go(Scope,*ScopeType) @protobuf(4,bytes,rep)
}
#ScopeType: string
#enumScopeType:
	#ClusterScope |
	#NamespacedScope |
	#AllScopes
#ClusterScope: #ScopeType & "Cluster"
#NamespacedScope: #ScopeType & "Namespaced"
#AllScopes: #ScopeType & "*"
#FailurePolicyType: string
#enumFailurePolicyType:
	#Ignore |
	#Fail
#Ignore: #FailurePolicyType & "Ignore"
#Fail: #FailurePolicyType & "Fail"
#ParameterNotFoundActionType: string
#enumParameterNotFoundActionType:
	#AllowAction |
	#DenyAction
#AllowAction: #ParameterNotFoundActionType & "Allow"
#DenyAction: #ParameterNotFoundActionType & "Deny"
#MatchPolicyType: string
#enumMatchPolicyType:
	#Exact |
	#Equivalent
#Exact: #MatchPolicyType & "Exact"
#Equivalent: #MatchPolicyType & "Equivalent"
#SideEffectClass: string
#enumSideEffectClass:
	#SideEffectClassUnknown |
	#SideEffectClassNone |
	#SideEffectClassSome |
	#SideEffectClassNoneOnDryRun
#SideEffectClassUnknown: #SideEffectClass & "Unknown"
#SideEffectClassNone: #SideEffectClass & "None"
#SideEffectClassSome: #SideEffectClass & "Some"
#SideEffectClassNoneOnDryRun: #SideEffectClass & "NoneOnDryRun"
#ValidatingAdmissionPolicy: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #ValidatingAdmissionPolicySpec @go(Spec) @protobuf(2,bytes,opt)
	status?: #ValidatingAdmissionPolicyStatus @go(Status) @protobuf(3,bytes,opt)
}
#ValidatingAdmissionPolicyStatus: {
	observedGeneration?: int64 @go(ObservedGeneration) @protobuf(1,varint,opt)
	typeChecking?: null | #TypeChecking @go(TypeChecking,*TypeChecking) @protobuf(2,bytes,opt)
	conditions?: [...metav1.#Condition] @go(Conditions,[]metav1.Condition) @protobuf(3,bytes,rep)
}
#ValidatingAdmissionPolicyConditionType: string
#TypeChecking: {
	expressionWarnings?: [...#ExpressionWarning] @go(ExpressionWarnings,[]ExpressionWarning) @protobuf(1,bytes,rep)
}
#ExpressionWarning: {
	fieldRef: string @go(FieldRef) @protobuf(2,bytes,opt)
	warning: string @go(Warning) @protobuf(3,bytes,opt)
}
#ValidatingAdmissionPolicyList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items?: [...#ValidatingAdmissionPolicy] @go(Items,[]ValidatingAdmissionPolicy) @protobuf(2,bytes,rep)
}
#ValidatingAdmissionPolicySpec: {
	paramKind?: null | #ParamKind @go(ParamKind,*ParamKind) @protobuf(1,bytes,rep)
	matchConstraints?: null | #MatchResources @go(MatchConstraints,*MatchResources) @protobuf(2,bytes,rep)
	validations?: [...#Validation] @go(Validations,[]Validation) @protobuf(3,bytes,rep)
	failurePolicy?: null | #FailurePolicyType @go(FailurePolicy,*FailurePolicyType) @protobuf(4,bytes,opt,casttype=FailurePolicyType)
	auditAnnotations?: [...#AuditAnnotation] @go(AuditAnnotations,[]AuditAnnotation) @protobuf(5,bytes,rep)
	matchConditions?: [...#MatchCondition] @go(MatchConditions,[]MatchCondition) @protobuf(6,bytes,rep)
	variables?: [...#Variable] @go(Variables,[]Variable) @protobuf(7,bytes,rep)
}
#ParamKind: {
	apiVersion?: string @go(APIVersion) @protobuf(1,bytes,rep)
	kind?: string @go(Kind) @protobuf(2,bytes,rep)
}
#Validation: {
	expression: string @go(Expression) @protobuf(1,bytes,opt,name=Expression)
	message?: string @go(Message) @protobuf(2,bytes,opt)
	reason?: null | metav1.#StatusReason @go(Reason,*metav1.StatusReason) @protobuf(3,bytes,opt)
	messageExpression?: string @go(MessageExpression) @protobuf(4,bytes,opt)
}
#Variable: {
	name: string @go(Name) @protobuf(1,bytes,opt,name=Name)
	expression: string @go(Expression) @protobuf(2,bytes,opt,name=Expression)
}
#AuditAnnotation: {
	key: string @go(Key) @protobuf(1,bytes,opt)
	valueExpression: string @go(ValueExpression) @protobuf(2,bytes,opt)
}
#ValidatingAdmissionPolicyBinding: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	spec?: #ValidatingAdmissionPolicyBindingSpec @go(Spec) @protobuf(2,bytes,opt)
}
#ValidatingAdmissionPolicyBindingList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items?: [...#ValidatingAdmissionPolicyBinding] @go(Items,[]ValidatingAdmissionPolicyBinding) @protobuf(2,bytes,rep)
}
#ValidatingAdmissionPolicyBindingSpec: {
	policyName?: string @go(PolicyName) @protobuf(1,bytes,rep)
	paramRef?: null | #ParamRef @go(ParamRef,*ParamRef) @protobuf(2,bytes,rep)
	matchResources?: null | #MatchResources @go(MatchResources,*MatchResources) @protobuf(3,bytes,rep)
	validationActions?: [...#ValidationAction] @go(ValidationActions,[]ValidationAction) @protobuf(4,bytes,rep)
}
#ParamRef: {
	name?: string @go(Name) @protobuf(1,bytes,rep)
	namespace?: string @go(Namespace) @protobuf(2,bytes,rep)
	selector?: null | metav1.#LabelSelector @go(Selector,*metav1.LabelSelector) @protobuf(3,bytes,rep)
	parameterNotFoundAction?: null | #ParameterNotFoundActionType @go(ParameterNotFoundAction,*ParameterNotFoundActionType) @protobuf(4,bytes,rep)
}
#MatchResources: {
	namespaceSelector?: null | metav1.#LabelSelector @go(NamespaceSelector,*metav1.LabelSelector) @protobuf(1,bytes,opt)
	objectSelector?: null | metav1.#LabelSelector @go(ObjectSelector,*metav1.LabelSelector) @protobuf(2,bytes,opt)
	resourceRules?: [...#NamedRuleWithOperations] @go(ResourceRules,[]NamedRuleWithOperations) @protobuf(3,bytes,rep)
	excludeResourceRules?: [...#NamedRuleWithOperations] @go(ExcludeResourceRules,[]NamedRuleWithOperations) @protobuf(4,bytes,rep)
	matchPolicy?: null | #MatchPolicyType @go(MatchPolicy,*MatchPolicyType) @protobuf(7,bytes,opt,casttype=MatchPolicyType)
}
#ValidationAction: string
#enumValidationAction:
	#Deny |
	#Warn |
	#Audit
#Deny: #ValidationAction & "Deny"
#Warn: #ValidationAction & "Warn"
#Audit: #ValidationAction & "Audit"
#NamedRuleWithOperations: {
	resourceNames?: [...string] @go(ResourceNames,[]string) @protobuf(1,bytes,rep)
	#RuleWithOperations
}
#ValidatingWebhookConfiguration: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	webhooks?: [...#ValidatingWebhook] @go(Webhooks,[]ValidatingWebhook) @protobuf(2,bytes,rep,name=Webhooks)
}
#ValidatingWebhookConfigurationList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#ValidatingWebhookConfiguration] @go(Items,[]ValidatingWebhookConfiguration) @protobuf(2,bytes,rep)
}
#MutatingWebhookConfiguration: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)
	webhooks?: [...#MutatingWebhook] @go(Webhooks,[]MutatingWebhook) @protobuf(2,bytes,rep,name=Webhooks)
}
#MutatingWebhookConfigurationList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta) @protobuf(1,bytes,opt)
	items: [...#MutatingWebhookConfiguration] @go(Items,[]MutatingWebhookConfiguration) @protobuf(2,bytes,rep)
}
#ValidatingWebhook: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	clientConfig: #WebhookClientConfig @go(ClientConfig) @protobuf(2,bytes,opt)
	rules?: [...#RuleWithOperations] @go(Rules,[]RuleWithOperations) @protobuf(3,bytes,rep)
	failurePolicy?: null | #FailurePolicyType @go(FailurePolicy,*FailurePolicyType) @protobuf(4,bytes,opt,casttype=FailurePolicyType)
	matchPolicy?: null | #MatchPolicyType @go(MatchPolicy,*MatchPolicyType) @protobuf(9,bytes,opt,casttype=MatchPolicyType)
	namespaceSelector?: null | metav1.#LabelSelector @go(NamespaceSelector,*metav1.LabelSelector) @protobuf(5,bytes,opt)
	objectSelector?: null | metav1.#LabelSelector @go(ObjectSelector,*metav1.LabelSelector) @protobuf(10,bytes,opt)
	sideEffects?: null | #SideEffectClass @go(SideEffects,*SideEffectClass) @protobuf(6,bytes,opt,casttype=SideEffectClass)
	timeoutSeconds?: null | int32 @go(TimeoutSeconds,*int32) @protobuf(7,varint,opt)
	admissionReviewVersions: [...string] @go(AdmissionReviewVersions,[]string) @protobuf(8,bytes,rep)
	matchConditions?: [...#MatchCondition] @go(MatchConditions,[]MatchCondition) @protobuf(11,bytes,opt)
}
#MutatingWebhook: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	clientConfig: #WebhookClientConfig @go(ClientConfig) @protobuf(2,bytes,opt)
	rules?: [...#RuleWithOperations] @go(Rules,[]RuleWithOperations) @protobuf(3,bytes,rep)
	failurePolicy?: null | #FailurePolicyType @go(FailurePolicy,*FailurePolicyType) @protobuf(4,bytes,opt,casttype=FailurePolicyType)
	matchPolicy?: null | #MatchPolicyType @go(MatchPolicy,*MatchPolicyType) @protobuf(9,bytes,opt,casttype=MatchPolicyType)
	namespaceSelector?: null | metav1.#LabelSelector @go(NamespaceSelector,*metav1.LabelSelector) @protobuf(5,bytes,opt)
	objectSelector?: null | metav1.#LabelSelector @go(ObjectSelector,*metav1.LabelSelector) @protobuf(11,bytes,opt)
	sideEffects?: null | #SideEffectClass @go(SideEffects,*SideEffectClass) @protobuf(6,bytes,opt,casttype=SideEffectClass)
	timeoutSeconds?: null | int32 @go(TimeoutSeconds,*int32) @protobuf(7,varint,opt)
	admissionReviewVersions: [...string] @go(AdmissionReviewVersions,[]string) @protobuf(8,bytes,rep)
	reinvocationPolicy?: null | #ReinvocationPolicyType @go(ReinvocationPolicy,*ReinvocationPolicyType) @protobuf(10,bytes,opt,casttype=ReinvocationPolicyType)
	matchConditions?: [...#MatchCondition] @go(MatchConditions,[]MatchCondition) @protobuf(12,bytes,opt)
}
#ReinvocationPolicyType: string
#enumReinvocationPolicyType:
	#NeverReinvocationPolicy |
	#IfNeededReinvocationPolicy
#NeverReinvocationPolicy: #ReinvocationPolicyType & "Never"
#IfNeededReinvocationPolicy: #ReinvocationPolicyType & "IfNeeded"
#RuleWithOperations: {
	operations?: [...#OperationType] @go(Operations,[]OperationType) @protobuf(1,bytes,rep,casttype=OperationType)
	#Rule
}
#OperationType: string
#enumOperationType:
	#OperationAll |
	#Create |
	#Update |
	#Delete |
	#Connect
#OperationAll: #OperationType & "*"
#Create:       #OperationType & "CREATE"
#Update:       #OperationType & "UPDATE"
#Delete:       #OperationType & "DELETE"
#Connect:      #OperationType & "CONNECT"
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
#MatchCondition: {
	name: string @go(Name) @protobuf(1,bytes,opt)
	expression: string @go(Expression) @protobuf(2,bytes,opt)
}