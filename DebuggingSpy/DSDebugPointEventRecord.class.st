"
I record breakpoint events information.
"
Class {
	#name : 'DSDebugPointEventRecord',
	#superclass : 'DSAbstractDebugPointEventRecord',
	#instVars : [
		'method',
		'node'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSDebugPointEventRecord >> method [

	^ method
]

{ #category : 'converting' }
DSDebugPointEventRecord >> modelClass [

	^ DSMethodDebugPointRecord
]

{ #category : 'accessing' }
DSDebugPointEventRecord >> node [

	^ node
]

{ #category : 'actions api' }
DSDebugPointEventRecord >> record: aDebugPointEvent [

	super record: aDebugPointEvent.
	method := aDebugPointEvent debugPoint node methodNode compiledMethod
		          name.
	node := aDebugPointEvent debugPoint node printString
]
