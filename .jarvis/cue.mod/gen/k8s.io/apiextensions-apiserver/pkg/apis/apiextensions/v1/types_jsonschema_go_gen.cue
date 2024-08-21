package v1
#FieldValueErrorReason: string
#enumFieldValueErrorReason:
	#FieldValueRequired |
	#FieldValueDuplicate |
	#FieldValueInvalid |
	#FieldValueForbidden
#FieldValueRequired: #FieldValueErrorReason & "FieldValueRequired"
#FieldValueDuplicate: #FieldValueErrorReason & "FieldValueDuplicate"
#FieldValueInvalid: #FieldValueErrorReason & "FieldValueInvalid"
#FieldValueForbidden: #FieldValueErrorReason & "FieldValueForbidden"
#JSONSchemaProps: {
	id?:          string         @go(ID) @protobuf(1,bytes,opt)
	$schema?:     #JSONSchemaURL @go(Schema) @protobuf(2,bytes,opt,name=schema)
	$ref?:        null | string  @go(Ref,*string) @protobuf(3,bytes,opt,name=ref)
	description?: string         @go(Description) @protobuf(4,bytes,opt)
	type?:        string         @go(Type) @protobuf(5,bytes,opt)
	format?: string @go(Format) @protobuf(6,bytes,opt)
	title?:  string @go(Title) @protobuf(7,bytes,opt)
	default?:          null | #JSON   @go(Default,*JSON) @protobuf(8,bytes,opt)
	maximum?:          null | float64 @go(Maximum,*float64) @protobuf(9,bytes,opt)
	exclusiveMaximum?: bool           @go(ExclusiveMaximum) @protobuf(10,bytes,opt)
	minimum?:          null | float64 @go(Minimum,*float64) @protobuf(11,bytes,opt)
	exclusiveMinimum?: bool           @go(ExclusiveMinimum) @protobuf(12,bytes,opt)
	maxLength?:        null | int64   @go(MaxLength,*int64) @protobuf(13,bytes,opt)
	minLength?:        null | int64   @go(MinLength,*int64) @protobuf(14,bytes,opt)
	pattern?:          string         @go(Pattern) @protobuf(15,bytes,opt)
	maxItems?:         null | int64   @go(MaxItems,*int64) @protobuf(16,bytes,opt)
	minItems?:         null | int64   @go(MinItems,*int64) @protobuf(17,bytes,opt)
	uniqueItems?:      bool           @go(UniqueItems) @protobuf(18,bytes,opt)
	multipleOf?:       null | float64 @go(MultipleOf,*float64) @protobuf(19,bytes,opt)
	enum?: [...#JSON] @go(Enum,[]JSON) @protobuf(20,bytes,rep)
	maxProperties?: null | int64 @go(MaxProperties,*int64) @protobuf(21,bytes,opt)
	minProperties?: null | int64 @go(MinProperties,*int64) @protobuf(22,bytes,opt)
	required?: [...string] @go(Required,[]string) @protobuf(23,bytes,rep)
	items?: null | #JSONSchemaPropsOrArray @go(Items,*JSONSchemaPropsOrArray) @protobuf(24,bytes,opt)
	allOf?: [...#JSONSchemaProps] @go(AllOf,[]JSONSchemaProps) @protobuf(25,bytes,rep)
	oneOf?: [...#JSONSchemaProps] @go(OneOf,[]JSONSchemaProps) @protobuf(26,bytes,rep)
	anyOf?: [...#JSONSchemaProps] @go(AnyOf,[]JSONSchemaProps) @protobuf(27,bytes,rep)
	not?: null | #JSONSchemaProps @go(Not,*JSONSchemaProps) @protobuf(28,bytes,opt)
	properties?: {[string]: #JSONSchemaProps} @go(Properties,map[string]JSONSchemaProps) @protobuf(29,bytes,rep)
	additionalProperties?: null | #JSONSchemaPropsOrBool @go(AdditionalProperties,*JSONSchemaPropsOrBool) @protobuf(30,bytes,opt)
	patternProperties?: {[string]: #JSONSchemaProps} @go(PatternProperties,map[string]JSONSchemaProps) @protobuf(31,bytes,rep)
	dependencies?:    #JSONSchemaDependencies       @go(Dependencies) @protobuf(32,bytes,opt)
	additionalItems?: null | #JSONSchemaPropsOrBool @go(AdditionalItems,*JSONSchemaPropsOrBool) @protobuf(33,bytes,opt)
	definitions?:     #JSONSchemaDefinitions        @go(Definitions) @protobuf(34,bytes,opt)
	externalDocs?:    null | #ExternalDocumentation @go(ExternalDocs,*ExternalDocumentation) @protobuf(35,bytes,opt)
	example?:         null | #JSON                  @go(Example,*JSON) @protobuf(36,bytes,opt)
	nullable?:        bool                          @go(Nullable) @protobuf(37,bytes,opt)
	"x-kubernetes-preserve-unknown-fields"?: null | bool @go(XPreserveUnknownFields,*bool) @protobuf(38,bytes,opt,name=xKubernetesPreserveUnknownFields)
	"x-kubernetes-embedded-resource"?: bool @go(XEmbeddedResource) @protobuf(39,bytes,opt,name=xKubernetesEmbeddedResource)
	"x-kubernetes-int-or-string"?: bool @go(XIntOrString) @protobuf(40,bytes,opt,name=xKubernetesIntOrString)
	"x-kubernetes-list-map-keys"?: [...string] @go(XListMapKeys,[]string) @protobuf(41,bytes,rep,name=xKubernetesListMapKeys)
	"x-kubernetes-list-type"?: null | string @go(XListType,*string) @protobuf(42,bytes,opt,name=xKubernetesListType)
	"x-kubernetes-map-type"?: null | string @go(XMapType,*string) @protobuf(43,bytes,opt,name=xKubernetesMapType)
	"x-kubernetes-validations"?: #ValidationRules @go(XValidations) @protobuf(44,bytes,rep,name=xKubernetesValidations)
}
#ValidationRules: [...#ValidationRule]
#ValidationRule: {
	rule: string @go(Rule) @protobuf(1,bytes,opt)
	message?: string @go(Message) @protobuf(2,bytes,opt)
	messageExpression?: string @go(MessageExpression) @protobuf(3,bytes,opt)
	reason?: null | #FieldValueErrorReason @go(Reason,*FieldValueErrorReason) @protobuf(4,bytes,opt)
	fieldPath?: string @go(FieldPath) @protobuf(5,bytes,opt)
	optionalOldSelf?: null | bool @go(OptionalOldSelf,*bool) @protobuf(6,bytes,opt)
}
#JSON: _
#JSONSchemaURL: string
#JSONSchemaPropsOrArray: _
#JSONSchemaPropsOrBool: _
#JSONSchemaDependencies: {[string]: #JSONSchemaPropsOrStringArray}
#JSONSchemaPropsOrStringArray: _
#JSONSchemaDefinitions: {[string]: #JSONSchemaProps}
#ExternalDocumentation: {
	description?: string @go(Description) @protobuf(1,bytes,opt)
	url?:         string @go(URL) @protobuf(2,bytes,opt)
}