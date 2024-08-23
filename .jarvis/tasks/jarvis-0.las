
#pos(eg(id0), {schema("AggregationRule")}, {}, {
  input("type", "object").
  input("properties", "clusterRoleSelectors", "type", "array").
  input("properties", "clusterRoleSelectors", "items", "$ref", "#/components/schemas/LabelSelector").
}).

#pos(eg(id1), {schema("ClusterRole")}, {}, {
  input("type", "object").
  input("properties", "metadata", "$ref", "#/components/schemas/ObjectMeta").
  input("properties", "rules", "type", "array").
  input("properties", "rules", "items", "$ref", "#/components/schemas/PolicyRule").
  input("properties", "aggregationRule", "type", "object").
  input("properties", "aggregationRule", "allOf", 0, "$ref", "#/components/schemas/AggregationRule").
  input("properties", "aggregationRule", "nullable", true).
  input("allOf", 0, "$ref", "#/components/schemas/TypeMeta").
}).

#pos(eg(id2), {schema("ClusterRole0")}, {}, {
  input("type", "object").
  input("properties", "apiVersion", "type", "string").
  input("properties", "apiVersion", "enum", 0, "rbac/v1").
  input("properties", "kind", "type", "string").
  input("properties", "kind", "enum", 0, "ClusterRole").
  input("properties", "metadata", "type", "object").
  input("properties", "metadata", "required", 0, "name").
  input("properties", "metadata", "properties", "name", "type", "string").
  input("properties", "metadata", "properties", "name", "enum", 0, "config-viewer-role").
  input("properties", "rules", "type", "array").
  input("properties", "rules", "items", 0, "type", "object").
  input("properties", "rules", "items", 0, "required", 0, "apiGroups").
  input("properties", "rules", "items", 0, "required", 1, "resources").
  input("properties", "rules", "items", 0, "required", 2, "verbs").
  input("properties", "rules", "items", 0, "properties", "apiGroups", "type", "array").
  input("properties", "rules", "items", 0, "properties", "apiGroups", "items", 0, "type", "string").
  input("properties", "rules", "items", 0, "properties", "apiGroups", "items", 0, "enum", 0, "machine.crit.sh").
  input("properties", "rules", "items", 0, "properties", "apiGroups", "enum", 0, 0, "machine.crit.sh").
  input("properties", "rules", "items", 0, "properties", "apiGroups", "default", 0, "machine.crit.sh").
  input("properties", "rules", "items", 0, "properties", "resources", "type", "array").
  input("properties", "rules", "items", 0, "properties", "resources", "items", 0, "type", "string").
  input("properties", "rules", "items", 0, "properties", "resources", "items", 0, "enum", 0, "configs").
  input("properties", "rules", "items", 0, "properties", "resources", "items", 1, "type", "string").
  input("properties", "rules", "items", 0, "properties", "resources", "items", 1, "enum", 0, "configs/status").
  input("properties", "rules", "items", 0, "properties", "resources", "enum", 0, 0, "configs").
  input("properties", "rules", "items", 0, "properties", "resources", "enum", 0, 1, "configs/status").
  input("properties", "rules", "items", 0, "properties", "resources", "default", 0, "configs").
  input("properties", "rules", "items", 0, "properties", "resources", "default", 1, "configs/status").
  input("properties", "rules", "items", 0, "properties", "verbs", "type", "array").
  input("properties", "rules", "items", 0, "properties", "verbs", "items", 0, "type", "string").
  input("properties", "rules", "items", 0, "properties", "verbs", "items", 0, "enum", 0, "get").
  input("properties", "rules", "items", 0, "properties", "verbs", "items", 1, "type", "string").
  input("properties", "rules", "items", 0, "properties", "verbs", "items", 1, "enum", 0, "list").
  input("properties", "rules", "items", 0, "properties", "verbs", "enum", 0, 0, "get").
  input("properties", "rules", "items", 0, "properties", "verbs", "enum", 0, 1, "list").
  input("properties", "rules", "items", 0, "properties", "verbs", "default", 0, "get").
  input("properties", "rules", "items", 0, "properties", "verbs", "default", 1, "list").
  input("properties", "rules", "default", 0, "apiGroups", 0, "machine.crit.sh").
  input("properties", "rules", "default", 0, "resources", 0, "configs").
  input("properties", "rules", "default", 0, "resources", 1, "configs/status").
  input("properties", "rules", "default", 0, "verbs", 0, "get").
  input("properties", "rules", "default", 0, "verbs", 1, "list").
  input("allOf", 0, "$ref", "#/components/schemas/ClusterRole").
  input("allOf", 1, "required", 0, "apiVersion").
  input("allOf", 1, "required", 1, "kind").
  input("allOf", 1, "required", 2, "metadata").
  input("allOf", 1, "required", 3, "rules").
}).

#pos(eg(id3), {schema("FieldsV1")}, {}, {

}).

#pos(eg(id4), {schema("Instance")}, {}, {
  input("type", "object").
  input("required", 0, "objects").
  input("properties", "objects", "type", "object").
  input("properties", "objects", "required", 0, "obj0").
  input("properties", "objects", "properties", "obj0", "$ref", "#/components/schemas/ClusterRole0").
}).

#pos(eg(id5), {schema("LabelSelector")}, {}, {
  input("type", "object").
  input("properties", "matchLabels", "type", "object").
  input("properties", "matchLabels", "additionalProperties", "type", "string").
  input("properties", "matchExpressions", "type", "array").
  input("properties", "matchExpressions", "items", "$ref", "#/components/schemas/LabelSelectorRequirement").
}).

#pos(eg(id6), {schema("LabelSelectorOperator")}, {}, {
  input("type", "string").
}).

#pos(eg(id7), {schema("LabelSelectorRequirement")}, {}, {
  input("type", "object").
  input("required", 0, "key").
  input("required", 1, "operator").
  input("properties", "key", "type", "string").
  input("properties", "operator", "$ref", "#/components/schemas/LabelSelectorOperator").
  input("properties", "values", "type", "array").
  input("properties", "values", "items", "type", "string").
}).

#pos(eg(id8), {schema("ManagedFieldsEntry")}, {}, {
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

#pos(eg(id9), {schema("ManagedFieldsOperationType")}, {}, {
  input("type", "string").
}).

#pos(eg(id10), {schema("ObjectMeta")}, {}, {
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

#pos(eg(id11), {schema("OwnerReference")}, {}, {
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

#pos(eg(id12), {schema("PolicyRule")}, {}, {
  input("type", "object").
  input("required", 0, "verbs").
  input("properties", "verbs", "type", "array").
  input("properties", "verbs", "items", "type", "string").
  input("properties", "apiGroups", "type", "array").
  input("properties", "apiGroups", "items", "type", "string").
  input("properties", "resources", "type", "array").
  input("properties", "resources", "items", "type", "string").
  input("properties", "resourceNames", "type", "array").
  input("properties", "resourceNames", "items", "type", "string").
  input("properties", "nonResourceURLs", "type", "array").
  input("properties", "nonResourceURLs", "items", "type", "string").
}).

#pos(eg(id13), {schema("Time")}, {}, {

}).

#pos(eg(id14), {schema("TypeMeta")}, {}, {
  input("type", "object").
  input("properties", "kind", "type", "string").
  input("properties", "apiVersion", "type", "string").
}).

#pos(eg(id15), {schema("UID")}, {}, {
  input("type", "string").
}).

input0("type").
input1("object").
#modeb(input(const(input0), const(input1))).
input0("properties").
input1("clusterRoleSelectors").
input2("type").
input3("array").
#modeb(input(const(input0), const(input1), const(input2), const(input3))).
input2("items").
input3("$ref").
input4("#/components/schemas/LabelSelector").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4))).
input1("metadata").
input2("$ref").
input3("#/components/schemas/ObjectMeta").
input1("rules").
input4("#/components/schemas/PolicyRule").
input1("aggregationRule").
input3("object").
input2("allOf").
input3(0).
input4("$ref").
input5("#/components/schemas/AggregationRule").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5))).
input2("nullable").
input3(true).
input0("allOf").
input1(0).
input3("#/components/schemas/TypeMeta").
input1("apiVersion").
input3("string").
input2("enum").
input4("rbac/v1").
input1("kind").
input4("ClusterRole").
input2("required").
input4("name").
input2("properties").
input3("name").
input4("type").
input5("string").
input4("enum").
input5(0).
input6("config-viewer-role").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6))).
input5("object").
input4("required").
input6("apiGroups").
input5(1).
input6("resources").
input5(2).
input6("verbs").
input4("properties").
input5("apiGroups").
input6("type").
input7("array").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7))).
input6("items").
input7(0).
input8("type").
input9("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9))).
input8("enum").
input9(0).
input10("machine.crit.sh").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10))).
input6("enum").
input8(0).
input9("machine.crit.sh").
input6("default").
input8("machine.crit.sh").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8))).
input5("resources").
input10("configs").
input7(1).
input10("configs/status").
input9("configs").
input8(1).
input9("configs/status").
input8("configs").
input8("configs/status").
input5("verbs").
input10("get").
input10("list").
input9("get").
input9("list").
input8("get").
input8("list").
input2("default").
input4("apiGroups").
input6("machine.crit.sh").
input4("resources").
input6("configs").
input6("configs/status").
input4("verbs").
input6("get").
input6("list").
input3("#/components/schemas/ClusterRole").
input1(1).
input4("apiVersion").
input3(1).
input4("kind").
input3(2).
input4("metadata").
input3(3).
input4("rules").
input0("required").
input2("objects").
#modeb(input(const(input0), const(input1), const(input2))).
input1("objects").
input4("obj0").
input3("obj0").
input5("#/components/schemas/ClusterRole0").
input1("matchLabels").
input2("additionalProperties").
input3("type").
input4("string").
input1("matchExpressions").
input4("#/components/schemas/LabelSelectorRequirement").
input1("string").
input2("key").
input2("operator").
input1("key").
input1("operator").
input3("#/components/schemas/LabelSelectorOperator").
input1("values").
input1("manager").
input1("operation").
input3("#/components/schemas/ManagedFieldsOperationType").
input1("time").
input5("#/components/schemas/Time").
input1("fieldsType").
input1("fieldsV1").
input5("#/components/schemas/FieldsV1").
input1("subresource").
input1("name").
input1("generateName").
input1("namespace").
input1("selfLink").
input1("uid").
input3("#/components/schemas/UID").
input1("resourceVersion").
input1("generation").
input3("integer").
input2("format").
input3("int64").
input1("creationTimestamp").
input3("#/components/schemas/Time").
input1("deletionTimestamp").
input1("deletionGracePeriodSeconds").
input2("minimum").
input3("int(\"-9223372036854775808\")").
input2("maximum").
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
input1(2).
input2("name").
input1(3).
input2("uid").
input1("controller").
input3("boolean").
input1("blockOwnerDeletion").
input2("verbs").
input1("verbs").
input1("apiGroups").
input1("resources").
input1("resourceNames").
input1("nonResourceURLs").

#modeh(schema(const(schema0))).
schema0("ManagedFieldsOperationType").

#modeh(schema(const(schema1))).
schema1("LabelSelectorOperator").

#modeh(schema(const(schema2))).
schema2("OwnerReference").

#modeh(schema(const(schema3))).
schema3("FieldsV1").

#modeh(schema(const(schema4))).
schema4("LabelSelectorRequirement").

#modeh(schema(const(schema5))).
schema5("Time").

#modeh(schema(const(schema6))).
schema6("TypeMeta").

#modeh(schema(const(schema7))).
schema7("ObjectMeta").

#modeh(schema(const(schema8))).
schema8("LabelSelector").

#modeh(schema(const(schema9))).
schema9("ClusterRole0").

#modeh(schema(const(schema10))).
schema10("ManagedFieldsEntry").

#modeh(schema(const(schema11))).
schema11("AggregationRule").

#modeh(schema(const(schema12))).
schema12("PolicyRule").

#modeh(schema(const(schema13))).
schema13("UID").

#modeh(schema(const(schema14))).
schema14("Instance").

#modeh(schema(const(schema15))).
schema15("ClusterRole").


#bias('user(eg(id0)).').
#bias('user(eg(id0), input("type", "object")).').
#bias('user(eg(id0), input("required", 0, "apiVersion")).').
#bias('user(eg(id0), input("required", 1, "kind")).').
#bias('user(eg(id0), input("required", 2, "metadata")).').
#bias('user(eg(id0), input("required", 3, "rules")).').
#bias('user(eg(id0), input("properties", "apiVersion", "type", "string")).').
#bias('user(eg(id0), input("properties", "apiVersion", "enum", 0, "rbac/v1")).').
#bias('user(eg(id0), input("properties", "kind", "type", "string")).').
#bias('user(eg(id0), input("properties", "kind", "enum", 0, "ClusterRole")).').
#bias('user(eg(id0), input("properties", "metadata", "type", "object")).').
#bias('user(eg(id0), input("properties", "metadata", "required", 0, "name")).').
#bias('user(eg(id0), input("properties", "metadata", "properties", "name", "type", "string")).').
#bias('user(eg(id0), input("properties", "metadata", "properties", "name", "enum", 0, "config-viewer-role")).').
#bias('user(eg(id0), input("properties", "rules", "type", "array")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "type", "object")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "required", 0, "apiGroups")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "required", 1, "resources")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "required", 2, "verbs")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "apiGroups", "type", "array")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "apiGroups", "items", 0, "type", "string")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "apiGroups", "items", 0, "enum", 0, "machine.crit.sh")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "apiGroups", "enum", 0, 0, "machine.crit.sh")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "apiGroups", "default", 0, "machine.crit.sh")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "type", "array")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "items", 0, "type", "string")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "items", 0, "enum", 0, "configs")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "items", 1, "type", "string")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "items", 1, "enum", 0, "configs/status")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "enum", 0, 0, "configs")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "enum", 0, 1, "configs/status")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "default", 0, "configs")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "resources", "default", 1, "configs/status")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "type", "array")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "items", 0, "type", "string")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "items", 0, "enum", 0, "get")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "items", 1, "type", "string")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "items", 1, "enum", 0, "list")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "enum", 0, 0, "get")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "enum", 0, 1, "list")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "default", 0, "get")).').
#bias('user(eg(id0), input("properties", "rules", "items", 0, "properties", "verbs", "default", 1, "list")).').
#bias('user(eg(id0), input("properties", "rules", "default", 0, "apiGroups", 0, "machine.crit.sh")).').
#bias('user(eg(id0), input("properties", "rules", "default", 0, "resources", 0, "configs")).').
#bias('user(eg(id0), input("properties", "rules", "default", 0, "resources", 1, "configs/status")).').
#bias('user(eg(id0), input("properties", "rules", "default", 0, "verbs", 0, "get")).').
#bias('user(eg(id0), input("properties", "rules", "default", 0, "verbs", 1, "list")).').

% #bias("penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X)}.").

% #bias('penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X), in_head(schema("Deployment")), user(U), not user(U, X)}.').

#bias("penalty(1000, head(X)) :- in_head(X).").
#bias("penalty(-1, body(X)) :- in_body(X).").

% #bias("penalty(1, body(X)) :- in_body(X), not required(X).").
% #bias('required(X) :- in_body(X), X = input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').

% Prefer rules that cover bias examples
% #bias("penalty(-100, body(U, S, X)) :- user(U, S), in_head(S), in_body(X), user(U, X).").
% #bias('penalty(1000, body(X)) :- user(U, S), schema(S), in_head(schema(S)), in_body(X), X != input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').


