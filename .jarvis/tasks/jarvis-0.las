
#pos(eg(id0), {schema("Instance")}, {}, {
  input("type", "object").
  input("required", 0, "objects").
  input("properties", "objects", "type", "array").
  input("properties", "objects", "items", 0, "type", "object").
  input("properties", "objects", "items", 0, "required", 0, "apiVersion").
  input("properties", "objects", "items", 0, "required", 1, "kind").
  input("properties", "objects", "items", 0, "required", 2, "metadata").
  input("properties", "objects", "items", 0, "required", 3, "spec").
  input("properties", "objects", "items", 0, "properties", "apiVersion", "type", "string").
  input("properties", "objects", "items", 0, "properties", "apiVersion", "enum", 0, "v1").
  input("properties", "objects", "items", 0, "properties", "kind", "type", "string").
  input("properties", "objects", "items", 0, "properties", "kind", "enum", 0, "Pod").
  input("properties", "objects", "items", 0, "properties", "metadata", "type", "object").
  input("properties", "objects", "items", 0, "properties", "metadata", "required", 0, "name").
  input("properties", "objects", "items", 0, "properties", "metadata", "required", 1, "labels").
  input("properties", "objects", "items", 0, "properties", "metadata", "properties", "name", "type", "string").
  input("properties", "objects", "items", 0, "properties", "metadata", "properties", "name", "enum", 0, "simple-pod").
  input("properties", "objects", "items", 0, "properties", "metadata", "properties", "labels", "type", "object").
  input("properties", "objects", "items", 0, "properties", "metadata", "properties", "labels", "required", 0, "app").
  input("properties", "objects", "items", 0, "properties", "metadata", "properties", "labels", "properties", "app", "type", "string").
  input("properties", "objects", "items", 0, "properties", "metadata", "properties", "labels", "properties", "app", "enum", 0, "demo").
  input("properties", "objects", "items", 0, "properties", "spec", "type", "object").
  input("properties", "objects", "items", 0, "properties", "spec", "required", 0, "containers").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "type", "array").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "type", "object").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "required", 0, "name").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "required", 1, "image").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "required", 2, "ports").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "name", "type", "string").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "name", "enum", 0, "demo-container").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "image", "type", "string").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "image", "enum", 0, "nginx:latest").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "type", "array").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "type", "object").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "required", 0, "containerPort").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "type", "integer").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "enum", 0, "int(\"80\")").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "default", 0, "containerPort", "int(\"80\")").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "default", 0, "name", "demo-container").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "default", 0, "image", "nginx:latest").
  input("properties", "objects", "items", 0, "properties", "spec", "properties", "containers", "default", 0, "ports", 0, "containerPort", "int(\"80\")").
  input("properties", "objects", "default", 0, "apiVersion", "v1").
  input("properties", "objects", "default", 0, "kind", "Pod").
  input("properties", "objects", "default", 0, "metadata", "name", "simple-pod").
  input("properties", "objects", "default", 0, "metadata", "labels", "app", "demo").
  input("properties", "objects", "default", 0, "spec", "containers", 0, "name", "demo-container").
  input("properties", "objects", "default", 0, "spec", "containers", 0, "image", "nginx:latest").
  input("properties", "objects", "default", 0, "spec", "containers", 0, "ports", 0, "containerPort", "int(\"80\")").
}).

#pos(eg(id1), {schema("Pod0")}, {}, {
  input("type", "object").
  input("required", 0, "apiVersion").
  input("required", 1, "kind").
  input("required", 2, "metadata").
  input("required", 3, "spec").
  input("properties", "apiVersion", "type", "string").
  input("properties", "apiVersion", "enum", 0, "v1").
  input("properties", "kind", "type", "string").
  input("properties", "kind", "enum", 0, "Pod").
  input("properties", "metadata", "type", "object").
  input("properties", "metadata", "required", 0, "labels").
  input("properties", "metadata", "required", 1, "name").
  input("properties", "metadata", "properties", "labels", "type", "object").
  input("properties", "metadata", "properties", "labels", "required", 0, "app").
  input("properties", "metadata", "properties", "labels", "properties", "app", "type", "string").
  input("properties", "metadata", "properties", "labels", "properties", "app", "enum", 0, "demo").
  input("properties", "metadata", "properties", "name", "type", "string").
  input("properties", "metadata", "properties", "name", "enum", 0, "simple-pod").
  input("properties", "spec", "type", "object").
  input("properties", "spec", "required", 0, "containers").
  input("properties", "spec", "properties", "containers", "type", "array").
  input("properties", "spec", "properties", "containers", "items", 0, "type", "object").
  input("properties", "spec", "properties", "containers", "items", 0, "required", 0, "image").
  input("properties", "spec", "properties", "containers", "items", 0, "required", 1, "name").
  input("properties", "spec", "properties", "containers", "items", 0, "required", 2, "ports").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "image", "type", "string").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "image", "enum", 0, "nginx:latest").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "name", "type", "string").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "name", "enum", 0, "demo-container").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "type", "array").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "type", "object").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "required", 0, "containerPort").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "type", "integer").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "items", 0, "properties", "containerPort", "enum", 0, "int(\"80\")").
  input("properties", "spec", "properties", "containers", "items", 0, "properties", "ports", "default", 0, "containerPort", "int(\"80\")").
  input("properties", "spec", "properties", "containers", "default", 0, "image", "nginx:latest").
  input("properties", "spec", "properties", "containers", "default", 0, "name", "demo-container").
  input("properties", "spec", "properties", "containers", "default", 0, "ports", 0, "containerPort", "int(\"80\")").
}).

input0("type").
input1("object").
#modeb(input(const(input0), const(input1))).
input0("required").
input1(0).
input2("objects").
#modeb(input(const(input0), const(input1), const(input2))).
input0("properties").
input1("objects").
input2("type").
input3("array").
#modeb(input(const(input0), const(input1), const(input2), const(input3))).
input2("items").
input3(0).
input4("type").
input5("object").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5))).
input4("required").
input5(0).
input6("apiVersion").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6))).
input5(1).
input6("kind").
input5(2).
input6("metadata").
input5(3).
input6("spec").
input4("properties").
input5("apiVersion").
input6("type").
input7("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7))).
input6("enum").
input7(0).
input8("v1").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8))).
input5("kind").
input8("Pod").
input5("metadata").
input7("object").
input6("required").
input8("name").
input7(1).
input8("labels").
input6("properties").
input7("name").
input8("type").
input9("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9))).
input8("enum").
input9(0).
input10("simple-pod").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10))).
input7("labels").
input9("object").
input8("required").
input10("app").
input8("properties").
input9("app").
input10("type").
input11("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11))).
input10("enum").
input11(0).
input12("demo").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12))).
input5("spec").
input8("containers").
input7("containers").
input9("array").
input8("items").
input11("object").
input10("required").
input12("name").
input11(1).
input12("image").
input11(2).
input12("ports").
input10("properties").
input11("name").
input12("type").
input13("string").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13))).
input12("enum").
input13(0).
input14("demo-container").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13), const(input14))).
input11("image").
input14("nginx:latest").
input11("ports").
input13("array").
input12("items").
input14("type").
input15("object").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13), const(input14), const(input15))).
input14("required").
input15(0).
input16("containerPort").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13), const(input14), const(input15), const(input16))).
input14("properties").
input15("containerPort").
input16("type").
input17("integer").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13), const(input14), const(input15), const(input16), const(input17))).
input16("enum").
input17(0).
input18("int(\"80\")").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4), const(input5), const(input6), const(input7), const(input8), const(input9), const(input10), const(input11), const(input12), const(input13), const(input14), const(input15), const(input16), const(input17), const(input18))).
input12("default").
input14("containerPort").
input15("int(\"80\")").
input8("default").
input10("name").
input11("demo-container").
input10("image").
input11("nginx:latest").
input10("ports").
input12("containerPort").
input13("int(\"80\")").
input2("default").
input4("apiVersion").
input5("v1").
input4("kind").
input5("Pod").
input4("metadata").
input5("name").
input6("simple-pod").
input5("labels").
input6("app").
input7("demo").
input4("spec").
input5("containers").
input6(0).
input8("demo-container").
input7("image").
input8("nginx:latest").
input7("ports").
input8(0).
input9("containerPort").
input10("int(\"80\")").
input2("apiVersion").
input1(1).
input2("kind").
input1(2).
input2("metadata").
input1(3).
input2("spec").
input1("apiVersion").
input3("string").
input2("enum").
input4("v1").
#modeb(input(const(input0), const(input1), const(input2), const(input3), const(input4))).
input1("kind").
input4("Pod").
input1("metadata").
input3("object").
input2("required").
input4("labels").
input3(1).
input4("name").
input2("properties").
input3("labels").
input5("app").
input8("demo").
input3("name").
input5("string").
input4("enum").
input1("spec").
input4("containers").
input3("containers").
input5("array").
input4("items").
input8("image").
input7(2).
input8("ports").
input10("nginx:latest").
input10("demo-container").
input11("containerPort").
input13("integer").
input14("int(\"80\")").
input10("containerPort").
input11("int(\"80\")").
input4("default").
input6("image").
input7("nginx:latest").
input6("name").
input7("demo-container").
input6("ports").
input8("containerPort").
input9("int(\"80\")").

#modeh(schema(const(schema0))).
schema0("Instance").

#modeh(schema(const(schema1))).
schema1("Pod0").




% #bias("penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X)}.").

% #bias('penalty(|(N - 30)**4| + 1, rule) :- N = #count{X: in_body(X), in_head(schema("Deployment")), user(U), not user(U, X)}.').

#bias("penalty(1000, head(X)) :- in_head(X).").
#bias("penalty(-1, body(X)) :- in_body(X).").

% #bias("penalty(1, body(X)) :- in_body(X), not required(X).").
% #bias('required(X) :- in_body(X), X = input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').

% Prefer rules that cover bias examples
% #bias("penalty(-100, body(U, S, X)) :- user(U, S), in_head(S), in_body(X), user(U, X).").
% #bias('penalty(1000, body(X)) :- user(U, S), schema(S), in_head(schema(S)), in_body(X), X != input("properties", "spec", "properties", "template", "properties", "spec", "properties", "nodeSelector", "default", 0, "topology.kubernetes.io/zone", "us-west-2b").').


