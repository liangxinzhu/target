package watch
import "k8s.io/apimachinery/pkg/runtime"
#Interface: _
#EventType: string
#enumEventType:
	#Added |
	#Modified |
	#Deleted |
	#Bookmark |
	#Error
#Added:    #EventType & "ADDED"
#Modified: #EventType & "MODIFIED"
#Deleted:  #EventType & "DELETED"
#Bookmark: #EventType & "BOOKMARK"
#Error:    #EventType & "ERROR"
#Event: {
	Type: #EventType
	Object: runtime.#Object
}
#RaceFreeFakeWatcher: {
	Stopped: bool
}