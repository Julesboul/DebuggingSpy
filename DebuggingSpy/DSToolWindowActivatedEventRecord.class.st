"
I record when a tool is activated, ie, a window having this tool as model is activated
"
Class {
	#name : 'DSToolWindowActivatedEventRecord',
	#superclass : 'DSToolWindowEvent',
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSToolWindowActivatedEventRecord >> toolAction [
	^'activated'
]
