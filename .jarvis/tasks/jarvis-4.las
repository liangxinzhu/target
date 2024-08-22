
#pos(eg(id0), {schema("ClientIPConfig")}, {}, {
  input("type", "object").
  input("properties", "timeoutSeconds", "type", "integer").
  input("properties", "timeoutSeconds", "minimum", "int(\"-2147483648\")").
  input("properties", "timeoutSeconds", "maximum", "int(\"2147483647\")").
  input("properties", "timeoutSeconds", "nullable", true).
}).

#pos(eg(id1), {schema("Condition")}, {}, {
  input("type", "object").
  input("required", 0, "type").
  input("required", 1, "status").
  input("required", 2, "lastTransitionTime").
  input("required", 3, "reason").
  input("required", 4, "message").
  input("properties", "type", "type", "string").
  input("properties", "status", "$ref", "#/components/schemas/ConditionStatus").
  input("properties", "observedGeneration", "type", "integer").
  input("properties", "observedGeneration", "format", "int64").
  input("properties", "lastTransitionTime", "$ref", "#/components/schemas/Time").
  input("properties", "reason", "type", "string").
  input("properties", "message", "type", "string").
}).

#pos(eg(id2), {schema("ConditionStatus")}, {}, {
  input("type", "string").
}).

#pos(eg(id3), {schema("FieldsV1")}, {}, {

}).

#pos(eg(id4), {schema("IPFamily")}, {}, {
  input("type", "string").
}).

#pos(eg(id5), {schema("Instance")}, {}, {
  input("type", "object").
  input("required", 0, "objects").
  input("properties", "objects", "type", "object").
  input("properties", "objects", "required", 0, "obj0").
  input("properties", "objects", "properties", "obj0", "$ref", "#/components/schemas/Service0").
}).

#pos(eg(id6), {schema("IntOrString")}, {}, {

}).

#pos(eg(id7), {schema("LoadBalancerIngress")}, {}, {
  input("type", "object").
  input("properties", "ip", "type", "string").
  input("properties", "hostname", "type", "string").
  input("properties", "ipMode", "type", "string").
  input("properties", "ipMode", "nullable", true).
  input("properties", "ports", "type", "array").
  input("properties", "ports", "items", "$ref", "#/components/schemas/PortStatus").
}).

#pos(eg(id8), {schema("LoadBalancerStatus")}, {}, {
  input("type", "object").
  input("properties", "ingress", "type", "array").
  input("properties", "ingress", "items", "$ref", "#/components/schemas/LoadBalancerIngress").
}).

#pos(eg(id9), {schema("ManagedFieldsEntry")}, {}, {
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

#pos(eg(id10), {schema("ManagedFieldsOperationType")}, {}, {
  input("type", "string").
}).

#pos(eg(id11), {schema("ObjectMeta")}, {}, {
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

#pos(eg(id12), {schema("OwnerReference")}, {}, {
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

#pos(eg(id13), {schema("PortStatus")}, {}, {
  input("type", "object").
  input("required", 0, "port").
  input("required", 1, "protocol").
  input("properties", "port", "type", "integer").
  input("properties", "port", "format", "int32").
  input("properties", "protocol", "$ref", "#/components/schemas/Protocol").
  input("properties", "error", "type", "string").
  input("properties", "error", "nullable", true).
}).

#pos(eg(id14), {schema("Protocol")}, {}, {
  input("type", "string").
}).

#pos(eg(id15), {schema("Service")}, {}, {
  input("type", "object").
  input("properties", "metadata", "$ref", "#/components/schemas/ObjectMeta").
  input("properties", "spec", "$ref", "#/components/schemas/ServiceSpec").
  input("properties", "status", "$ref", "#/components/schemas/ServiceStatus").
  input("allOf", 0, "$ref", "#/components/schemas/TypeMeta").
}).

#pos(eg(id16), {schema("Service0")}, {}, {
  input("type", "object").
  input("properties", "apiVersion", "type", "string").
  input("properties", "apiVersion", "enum", 0, "v1").
  input("properties", "kind", "type", "string").
  input("properties", "kind", "enum", 0, "Service").
  input("properties", "metadata", "type", "object").
  input("properties", "metadata", "required", 0, "name").
  input("properties", "metadata", "properties", "name", "type", "string").
  input("properties", "metadata", "properties", "name", "enum", 0, "argocd-metrics").
  input("properties", "spec", "type", "object").
  input("properties", "spec", "required", 0, "selector").
  input("properties", "spec", "required", 1, "ports").
  input("properties", "spec", "properties", "selector", "type", "object").
  input("properties", "spec", "properties", "selector", "required", 0, "app").
  input("properties", "spec", "properties", "selector", "properties", "app", "type", "string").
  input("properties", "spec", "properties", "selector", "properties", "app", "enum", 0, "argocd-server").
  input("properties", "spec", "properties", "ports", "type", "array").
  input("properties", "spec", "properties", "ports", "items", 0, "type", "object").
  input("properties", "spec", "properties", "ports", "items", 0, "required", 0, "protocol").
  input("properties", "spec", "properties", "ports", "items", 0, "required", 1, "port").
  input("properties", "spec", "properties", "ports", "items", 0, "required", 2, "targetPort").
  input("properties", "spec", "properties", "ports", "items", 0, "properties", "protocol", "type", "string").
  input("properties", "spec", "properties", "ports", "items", 0, "properties", "protocol", "enum", 0, "TCP").
  input("properties", "spec", "properties", "ports", "items", 0, "properties", "port", "type", "integer").
  input("properties", "spec", "properties", "ports", "items", 0, "properties", "port", "enum", 0, "int(\"8082\")").
  input("properties", "spec", "properties", "ports", "items", 0, "properties", "targetPort", "type", "integer").
  input("properties", "spec", "properties", "ports", "items", 0, "properties", "targetPort", "enum", 0, "int(\"8082\")").
  input("properties", "spec", "properties", "ports", "default", 0, "protocol", "TCP").
  input("properties", "spec", "properties", "ports", "default", 0, "port", "int(\"8082\")").
  input("properties", "spec", "properties", "ports", "default", 0, "targetPort", "int(\"8082\")").
  input("allOf", 0, "$ref", "#/components/schemas/Service").
  input("allOf", 1, "required", 0, "apiVersion").
  input("allOf", 1, "required", 1, "kind").
  input("allOf", 1, "required", 2, "metadata").
  input("allOf", 1, "required", 3, "spec").
}).

#pos(eg(id17), {schema("ServiceAffinity")}, {}, {
  input("type", "string").
}).

#pos(eg(id18), {schema("ServiceExternalTrafficPolicy")}, {}, {
  input("type", "string").
}).

#pos(eg(id19), {schema("ServicePort")}, {}, {
  input("type", "object").
  input("required", 0, "port").
  input("properties", "name", "type", "string").
  input("properties", "protocol", "$ref", "#/components/schemas/Protocol").
  input("properties", "appProtocol", "type", "string").
  input("properties", "appProtocol", "nullable", true).
  input("properties", "port", "type", "integer").
  input("properties", "port", "format", "int32").
  input("properties", "targetPort", "$ref", "#/components/schemas/IntOrString").
  input("properties", "nodePort", "type", "integer").
  input("properties", "nodePort", "format", "int32").
}).

#pos(eg(id20), {schema("ServiceSpec")}, {}, {
  input("type", "object").
  input("properties", "ports", "type", "array").
  input("properties", "ports", "items", "$ref", "#/components/schemas/ServicePort").
  input("properties", "selector", "type", "object").
  input("properties", "selector", "additionalProperties", "type", "string").
  input("properties", "clusterIP", "type", "string").
  input("properties", "clusterIPs", "type", "array").
  input("properties", "clusterIPs", "items", "type", "string").
  input("properties", "type", "$ref", "#/components/schemas/ServiceType").
  input("properties", "externalIPs", "type", "array").
  input("properties", "externalIPs", "items", "type", "string").
  input("properties", "sessionAffinity", "$ref", "#/components/schemas/ServiceAffinity").
  input("properties", "loadBalancerIP", "type", "string").
  input("properties", "loadBalancerSourceRanges", "type", "array").
  input("properties", "loadBalancerSourceRanges", "items", "type", "string").
  input("properties", "externalName", "type", "string").
  input("properties", "externalTrafficPolicy", "$ref", "#/components/schemas/ServiceExternalTrafficPolicy").
  input("properties", "healthCheckNodePort", "type", "integer").
  input("properties", "healthCheckNodePort", "format", "int32").
  input("properties", "publishNotReadyAddresses", "type", "boolean").
  input("properties", "sessionAffinityConfig", "type", "object").
  input("properties", "sessionAffinityConfig", "allOf", 0, "$ref", "#/components/schemas/SessionAffinityConfig").
  input("properties", "sessionAffinityConfig", "nullable", true).
  input("properties", "ipFamilies", "type", "array").
  input("properties", "ipFamilies", "items", "$ref", "#/components/schemas/IPFamily").
  input("properties", "ipFamilyPolicy", "type", "string").
  input("properties", "ipFamilyPolicy", "nullable", true).
  input("properties", "allocateLoadBalancerNodePorts", "type", "boolean").
  input("properties", "allocateLoadBalancerNodePorts", "nullable", true).
  input("properties", "loadBalancerClass", "type", "string").
  input("properties", "loadBalancerClass", "nullable", true).
  input("properties", "internalTrafficPolicy", "type", "string").
  input("properties", "internalTrafficPolicy", "nullable", true).
  input("properties", "trafficDistribution", "type", "string").
  input("properties", "trafficDistribution", "nullable", true).
}).

#pos(eg(id21), {schema("ServiceStatus")}, {}, {
  input("type", "object").
  input("properties", "loadBalancer", "$ref", "#/components/schemas/LoadBalancerStatus").
  input("properties", "conditions", "type", "array").
  input("properties", "conditions", "items", "$ref", "#/components/schemas/Condition").
}).

#pos(eg(id22), {schema("ServiceType")}, {}, {
  input("type", "string").
}).

#pos(eg(id23), {schema("SessionAffinityConfig")}, {}, {
  input("type", "object").
  input("properties", "clientIP", "type", "object").
  input("properties", "clientIP", "allOf", 0, "$ref", "#/components/schemas/ClientIPConfig").
  input("properties", "clientIP", "nullable", true).
}).

#pos(eg(id24), {schema("Time")}, {}, {

}).

#pos(eg(id25), {schema("TypeMeta")}, {}, {
  input("type", "object").
  input("properties", "kind", "type", "string").
  input("properties", "apiVersion", "type", "string").
}).

#pos(eg(id26), {schema("UID")}, {}, {
  input("type", "string").
}).

input0("type").
input1("object").
#modeb(input(const(input0), const(input1))).
input0("properties").
input1("timeoutSeconds").
input2("type").
input3("integer").
#modeb(input(const(input0), const(input1), const(input2), const(input3))).
input2("minimum").
input3("int(\"-2147483648\")").
input2("maximum").
input3("int(\"2147483647\")").
input2("nullable").
input3(true).
input0("required").
input1(0).
#modeb(input(const(input0), const(input1), const(input2))).
input1(1).
input2("status").
input1(2).
input2("lastTransitionTime").
input1(3).
input2("reason").
input1(4).
input2("message").
input1("type").
input3("string").
input1("status").
input2("$ref").
input3("#/components/schemas/ConditionStatus").
input1("observedGeneration").
input2("format").
input3("int64").
input1("lastTransitionTime").
input3("#/components/schemas/Time").
input1("reason").
input1("message").
input1("string").
input2("objects").
input1("objects").
input3("object").
input2("required").
input3(0).
input4("obj0").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4))).
input2("properties").
input3("obj0").
input4("$ref").
input5("#/components/schemas/Service0").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5))).
input1("ip").
input1("hostname").
input1("ipMode").
input1("ports").
input3("array").
input2("items").
input3("$ref").
input4("#/components/schemas/PortStatus").
input1("ingress").
input4("#/components/schemas/LoadBalancerIngress").
input1("manager").
input1("operation").
input3("#/components/schemas/ManagedFieldsOperationType").
input1("apiVersion").
input1("time").
input2("allOf").
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
input1("creationTimestamp").
input1("deletionTimestamp").
input1("deletionGracePeriodSeconds").
input3("int(\"-9223372036854775808\")").
input3("int(\"9223372036854775807\")").
input1("labels").
input2("additionalProperties").
input3("type").
input4("string").
input1("annotations").
input1("ownerReferences").
input4("#/components/schemas/OwnerReference").
input1("finalizers").
input1("managedFields").
input4("#/components/schemas/ManagedFieldsEntry").
input2("apiVersion").
input2("kind").
input2("name").
input2("uid").
input1("kind").
input1("controller").
input3("boolean").
input1("blockOwnerDeletion").
input2("port").
input2("protocol").
input1("port").
input3("int32").
input1("protocol").
input3("#/components/schemas/Protocol").
input1("error").
input1("metadata").
input3("#/components/schemas/ObjectMeta").
input1("spec").
input3("#/components/schemas/ServiceSpec").
input3("#/components/schemas/ServiceStatus").
input0("allOf").
input3("#/components/schemas/TypeMeta").
input2("enum").
input4("v1").
input4("Service").
input4("name").
input3("name").
input4("type").
input5("string").
input4("enum").
input5(0).
input6("argocd-metrics").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6))).
input4("selector").
input3(1).
input4("ports").
input3("selector").
input5("object").
input4("required").
input6("app").
input4("properties").
input5("app").
input6("type").
input7("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7))).
input6("enum").
input7(0).
input8("argocd-server").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8))).
input3("ports").
input5("array").
input4("items").
input7("object").
input6("required").
input8("protocol").
input7(1).
input8("port").
input7(2).
input8("targetPort").
input6("properties").
input7("protocol").
input8("type").
input9("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9))).
input8("enum").
input9(0).
input10("TCP").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10))).
input7("port").
input9("integer").
input10("int(\"8082\")").
input7("targetPort").
input4("default").
input6("protocol").
input7("TCP").
input6("port").
input7("int(\"8082\")").
input6("targetPort").
input3("#/components/schemas/Service").
input4("apiVersion").
input4("kind").
input3(2).
input4("metadata").
input3(3).
input4("spec").
input1("appProtocol").
input1("targetPort").
input3("#/components/schemas/IntOrString").
input1("nodePort").
input4("#/components/schemas/ServicePort").
input1("selector").
input1("clusterIP").
input1("clusterIPs").
input3("#/components/schemas/ServiceType").
input1("externalIPs").
input1("sessionAffinity").
input3("#/components/schemas/ServiceAffinity").
input1("loadBalancerIP").
input1("loadBalancerSourceRanges").
input1("externalName").
input1("externalTrafficPolicy").
input3("#/components/schemas/ServiceExternalTrafficPolicy").
input1("healthCheckNodePort").
input1("publishNotReadyAddresses").
input1("sessionAffinityConfig").
input5("#/components/schemas/SessionAffinityConfig").
input1("ipFamilies").
input4("#/components/schemas/IPFamily").
input1("ipFamilyPolicy").
input1("allocateLoadBalancerNodePorts").
input1("loadBalancerClass").
input1("internalTrafficPolicy").
input1("trafficDistribution").
input1("loadBalancer").
input3("#/components/schemas/LoadBalancerStatus").
input1("conditions").
input4("#/components/schemas/Condition").
input1("clientIP").
input5("#/components/schemas/ClientIPConfig").

#modeh(schema(const(schema0))).
schema0("ServiceAffinity").

#modeh(schema(const(schema1))).
schema1("ConditionStatus").

#modeh(schema(const(schema2))).
schema2("IntOrString").

#modeh(schema(const(schema3))).
schema3("ManagedFieldsEntry").

#modeh(schema(const(schema4))).
schema4("ServiceSpec").

#modeh(schema(const(schema5))).
schema5("ManagedFieldsOperationType").

#modeh(schema(const(schema6))).
schema6("Service").

#modeh(schema(const(schema7))).
schema7("Instance").

#modeh(schema(const(schema8))).
schema8("ServicePort").

#modeh(schema(const(schema9))).
schema9("ClientIPConfig").

#modeh(schema(const(schema10))).
schema10("UID").

#modeh(schema(const(schema11))).
schema11("PortStatus").

#modeh(schema(const(schema12))).
schema12("Condition").

#modeh(schema(const(schema13))).
schema13("Time").

#modeh(schema(const(schema14))).
schema14("TypeMeta").

#modeh(schema(const(schema15))).
schema15("OwnerReference").

#modeh(schema(const(schema16))).
schema16("Service0").

#modeh(schema(const(schema17))).
schema17("LoadBalancerStatus").

#modeh(schema(const(schema18))).
schema18("SessionAffinityConfig").

#modeh(schema(const(schema19))).
schema19("ServiceExternalTrafficPolicy").

#modeh(schema(const(schema20))).
schema20("LoadBalancerIngress").

#modeh(schema(const(schema21))).
schema21("FieldsV1").

#modeh(schema(const(schema22))).
schema22("IPFamily").

#modeh(schema(const(schema23))).
schema23("ServiceType").

#modeh(schema(const(schema24))).
schema24("Protocol").

#modeh(schema(const(schema25))).
schema25("ObjectMeta").

#modeh(schema(const(schema26))).
schema26("ServiceStatus").


#bias('user(eg(id0)).').
#bias('user(eg(id0), input("type", "object")).').
#bias('user(eg(id0), input("required", 0, "apiVersion")).').
#bias('user(eg(id0), input("required", 1, "kind")).').
#bias('user(eg(id0), input("required", 2, "metadata")).').
#bias('user(eg(id0), input("required", 3, "spec")).').
#bias('user(eg(id0), input("properties", "apiVersion", "type", "string")).').
#bias('user(eg(id0), input("properties", "apiVersion", "enum", 0, "v1")).').
#bias('user(eg(id0), input("properties", "kind", "type", "string")).').
#bias('user(eg(id0), input("properties", "kind", "enum", 0, "Service")).').
#bias('user(eg(id0), input("properties", "metadata", "type", "object")).').
#bias('user(eg(id0), input("properties", "metadata", "required", 0, "name")).').
#bias('user(eg(id0), input("properties", "metadata", "properties", "name", "type", "string")).').
#bias('user(eg(id0), input("properties", "metadata", "properties", "name", "enum", 0, "argocd-metrics")).').
#bias('user(eg(id0), input("properties", "spec", "type", "object")).').
#bias('user(eg(id0), input("properties", "spec", "required", 0, "ports")).').
#bias('user(eg(id0), input("properties", "spec", "required", 1, "selector")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "type", "array")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "type", "object")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "required", 0, "port")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "required", 1, "protocol")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "required", 2, "targetPort")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "properties", "port", "type", "integer")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "properties", "port", "enum", 0, "int(\"8082\")")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "properties", "protocol", "type", "string")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "properties", "protocol", "enum", 0, "TCP")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "properties", "targetPort", "type", "integer")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "items", 0, "properties", "targetPort", "enum", 0, "int(\"8082\")")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "default", 0, "port", "int(\"8082\")")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "default", 0, "protocol", "TCP")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "ports", "default", 0, "targetPort", "int(\"8082\")")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "selector", "type", "object")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "selector", "required", 0, "app")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "selector", "properties", "app", "type", "string")).').
#bias('user(eg(id0), input("properties", "spec", "properties", "selector", "properties", "app", "enum", 0, "argocd-server")).').

% #bias("penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X)}.").

% #bias('penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X), in_head(schema("Deployment")), user(U), not user(U, X)}.').

#bias("penalty(1000, head(X)) :- in_head(X).").
#bias("penalty(-1, body(X)) :- in_body(X).").

% #bias("penalty(1, body(X)) :- in_body(X), not required(X).").
% #bias('required(X) :- in_body(X), X = input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').

% Prefer rules that cover bias examples
% #bias("penalty(-100, body(U, S, X)) :- user(U, S), in_head(S), in_body(X), user(U, X).").
% #bias('penalty(1000, body(X)) :- user(U, S), schema(S), in_head(schema(S)), in_body(X), X != input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').


