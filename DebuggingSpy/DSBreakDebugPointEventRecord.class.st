"
I record breakpoint events information.
"
Class {
	#name : 'DSBreakDebugPointEventRecord',
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
DSBreakDebugPointEventRecord >> method [

	^ method
]

{ #category : 'converting' }
DSBreakDebugPointEventRecord >> modelClass [

	^ DSMethodDebugPointRecord
]

{ #category : 'accessing' }
DSBreakDebugPointEventRecord >> node [

	^ node
]

{ #category : 'actions api' }
DSBreakDebugPointEventRecord >> record: aDebugPointEvent [

	super record: aDebugPointEvent.
	method := aDebugPointEvent debugPoint target methodNode compiledMethod
		          name.
	node := aDebugPointEvent debugPoint target node printString
]
