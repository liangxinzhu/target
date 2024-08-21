package types
#PatchType: string
#enumPatchType:
	#JSONPatchType |
	#MergePatchType |
	#StrategicMergePatchType |
	#ApplyPatchType
#JSONPatchType:           #PatchType & "application/json-patch+json"
#MergePatchType:          #PatchType & "application/merge-patch+json"
#StrategicMergePatchType: #PatchType & "application/strategic-merge-patch+json"
#ApplyPatchType:          #PatchType & "application/apply-patch+yaml"