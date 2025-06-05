"
I record when a tool is opened, ie, a window having this tool as model is opened
"
Class {
	#name : 'DSToolWindowOpenedEventRecord',
	#superclass : 'DSToolWindowEvent',
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSToolWindowOpenedEventRecord >> toolAction [
	^'opened'
]
