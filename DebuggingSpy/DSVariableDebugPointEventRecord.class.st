"
I record variable breakpoint events information.
"
Class {
	#name : 'DSVariableDebugPointEventRecord',
	#superclass : 'DSAbstractDebugPointEventRecord',
	#instVars : [
		'targetClassOrMethod',
		'targetVariables',
		'accessStrategy'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSVariableDebugPointEventRecord >> accessStrategy [

	^ accessStrategy
]

{ #category : 'converting' }
DSVariableDebugPointEventRecord >> modelClass [

	^ DSVariableBreakpointRecord
]

{ #category : 'actions api' }
DSVariableDebugPointEventRecord >> record: aBreakpointEvent [
	super record: aBreakpointEvent.
	targetClassOrMethod := aBreakpointEvent breakpoint targetClassOrMethod name.
	targetVariables := aBreakpointEvent breakpoint targetVariableNames .
	accessStrategy := aBreakpointEvent breakpoint accessStrategy
]

{ #category : 'accessing' }
DSVariableDebugPointEventRecord >> targetClassOrMethod [

	^ targetClassOrMethod
]

{ #category : 'accessing' }
DSVariableDebugPointEventRecord >> targetVariables [

	^ targetVariables
]
