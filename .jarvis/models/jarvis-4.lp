schema("TypeMeta") :-
    input("type","object"),
    input("properties","apiVersion","type","string"),
    input("properties","kind","type","string").
schema("OwnerReference") :-
    input("type","object"),
    input("properties","apiVersion","type","string"),
    input("properties","uid","$ref","#/components/schemas/UID"),
    input("properties","name","type","string"),
    input("properties","blockOwnerDeletion","nullable",true),
    input("properties","blockOwnerDeletion","type","boolean"),
    input("properties","controller","nullable",true),
    input("properties","controller","type","boolean"),
    input("properties","kind","type","string"),
    input("required",3,"uid"),
    input("required",2,"name"),
    input("required",1,"kind"),
    input("required",0,"apiVersion").
schema("ClientIPConfig") :-
    input("properties","timeoutSeconds","nullable",true),
    input("properties","timeoutSeconds","maximum","int(\"2147483647\")"),
    input("properties","timeoutSeconds","minimum","int(\"-2147483648\")"),
    input("properties","timeoutSeconds","type","integer"),
    input("type","object").
schema("ConditionStatus") :-
    input("type","string").
schema("ManagedFieldsOperationType") :-
    input("type","string").
schema("ServiceExternalTrafficPolicy") :-
    input("type","string").
schema("Protocol") :-
    input("type","string").
schema("ServiceType") :-
    input("type","string").
schema("ObjectMeta") :-
    input("type","object"),
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
    input("properties","generateName","type","string"),
    input("properties","name","type","string").
schema("SessionAffinityConfig") :-
    input("type","object"),
    input("properties","clientIP","nullable",true),
    input("properties","clientIP","allOf",0,"$ref","#/components/schemas/ClientIPConfig"),
    input("properties","clientIP","type","object").
schema("ServiceAffinity") :-
    input("type","string").
schema("UID") :-
    input("type","string").
schema("IPFamily") :-
    input("type","string").
schema("Condition") :-
    input("type","object"),
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
    input("required",1,"status"),
    input("required",0,"type").
schema("ServiceStatus") :-
    input("type","object"),
    input("properties","conditions","items","$ref","#/components/schemas/Condition"),
    input("properties","conditions","type","array"),
    input("properties","loadBalancer","$ref","#/components/schemas/LoadBalancerStatus").
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
schema("Instance") :-
    input("type","object"),
    input("properties","objects","properties","obj0","$ref","#/components/schemas/Service0"),
    input("properties","objects","required",0,"obj0"),
    input("properties","objects","type","object"),
    input("required",0,"objects").
schema("Service0") :-
    input("type","object"),
    input("properties","apiVersion","type","string"),
    input("properties","kind","type","string"),
    input("allOf",1,"required",3,"spec"),
    input("allOf",1,"required",2,"metadata"),
    input("allOf",1,"required",1,"kind"),
    input("allOf",1,"required",0,"apiVersion"),
    input("allOf",0,"$ref","#/components/schemas/Service"),
    input("properties","spec","properties","selector","properties","app","enum",0,"argocd-server"),
    input("properties","spec","properties","selector","properties","app","type","string"),
    input("properties","spec","properties","selector","required",0,"app"),
    input("properties","spec","properties","selector","type","object"),
    input("properties","spec","properties","ports","default",0,"protocol","TCP"),
    input("properties","spec","properties","ports","default",0,"targetPort","int(\"8082\")"),
    input("properties","spec","properties","ports","default",0,"port","int(\"8082\")"),
    input("properties","spec","properties","ports","items",0,"properties","protocol","enum",0,"TCP"),
    input("properties","spec","properties","ports","items",0,"properties","protocol","type","string"),
    input("properties","spec","properties","ports","items",0,"properties","targetPort","enum",0,"int(\"8082\")"),
    input("properties","spec","properties","ports","items",0,"properties","targetPort","type","integer"),
    input("properties","spec","properties","ports","items",0,"properties","port","enum",0,"int(\"8082\")"),
    input("properties","spec","properties","ports","items",0,"properties","port","type","integer"),
    input("properties","spec","properties","ports","items",0,"required",2,"protocol"),
    input("properties","spec","properties","ports","items",0,"required",1,"targetPort"),
    input("properties","spec","properties","ports","items",0,"required",0,"port"),
    input("properties","spec","properties","ports","items",0,"type","object"),
    input("properties","spec","properties","ports","type","array"),
    input("properties","spec","required",1,"selector"),
    input("properties","spec","required",0,"ports"),
    input("properties","spec","type","object"),
    input("properties","metadata","properties","name","enum",0,"argocd-metrics"),
    input("properties","metadata","properties","name","type","string"),
    input("properties","metadata","required",0,"name"),
    input("properties","metadata","type","object"),
    input("properties","kind","enum",0,"Service"),
    input("properties","apiVersion","enum",0,"v1").
schema("IntOrString").
schema("Time").
schema("FieldsV1").
schema("Service") :-
    input("type","object"),
    input("allOf",0,"$ref","#/components/schemas/TypeMeta"),
    input("properties","status","$ref","#/components/schemas/ServiceStatus"),
    input("properties","spec","$ref","#/components/schemas/ServiceSpec"),
    input("properties","metadata","$ref","#/components/schemas/ObjectMeta").
schema("LoadBalancerStatus") :-
    input("type","object"),
    input("properties","ingress","items","$ref","#/components/schemas/LoadBalancerIngress"),
    input("properties","ingress","type","array").
schema("PortStatus") :-
    input("type","object"),
    input("properties","error","nullable",true),
    input("properties","error","type","string"),
    input("properties","protocol","$ref","#/components/schemas/Protocol"),
    input("properties","port","format","int32"),
    input("properties","port","type","integer"),
    input("required",1,"protocol"),
    input("required",0,"port").
schema("LoadBalancerIngress") :-
    input("type","object"),
    input("properties","ports","items","$ref","#/components/schemas/PortStatus"),
    input("properties","ports","type","array"),
    input("properties","ipMode","nullable",true),
    input("properties","ipMode","type","string"),
    input("properties","hostname","type","string"),
    input("properties","ip","type","string").
schema("ServiceSpec") :-
    input("type","object"),
    input("properties","ports","type","array"),
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
    input("properties","selector","type","object"),
    input("properties","ports","items","$ref","#/components/schemas/ServicePort").
schema("ManagedFieldsEntry") :-
    input("type","object"),
    input("properties","subresource","type","string"),
    input("properties","fieldsV1","nullable",true),
    input("properties","fieldsV1","allOf",0,"$ref","#/components/schemas/FieldsV1"),
    input("properties","fieldsType","type","string"),
    input("properties","time","nullable",true),
    input("properties","time","allOf",0,"$ref","#/components/schemas/Time"),
    input("properties","apiVersion","type","string"),
    input("properties","operation","$ref","#/components/schemas/ManagedFieldsOperationType"),
    input("properties","manager","type","string").