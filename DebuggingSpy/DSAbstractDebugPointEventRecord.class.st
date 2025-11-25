"
I record breakpoint events information, whatever the type of breakpoint.
My subclasses have to handle the real recording, depending on the breakpoint.
"
Class {
	#name : 'DSAbstractDebugPointEventRecord',
	#superclass : 'DSAbstractEventRecord',
	#instVars : [
		'name',
		'target',
		'properties',
		'behaviors',
		'arguments',
		'link',
		'enabled',
		'eventName',
		'debugPointHash'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'converting' }
DSAbstractDebugPointEventRecord >> asBreakpointRecord [

	^ self modelClass
		  perform: eventName asLowercase asSymbol asMutator
		  with: self
]

{ #category : 'testing' }
DSAbstractDebugPointEventRecord >> canOpenDebuggers [
	^eventName = 'BreakpointHit'
]

{ #category : 'accessing' }
DSAbstractDebugPointEventRecord >> debugPointHash [
	^debugPointHash 
]

{ #category : 'accessing' }
DSAbstractDebugPointEventRecord >> eventName [
	^eventName
]

{ #category : 'converting' }
DSAbstractDebugPointEventRecord >> modelClass [

	^ self subclassResponsibility
]

{ #category : 'printing' }
DSAbstractDebugPointEventRecord >> printTargetInstance: anObject [

	| str |
	str := WriteStream on: String new.
	str << '['.
	str << anObject identityHash printString.
	str << '] instance of '.
	str space.
	str << anObject class name.
	^ str contents
]

{ #category : 'actions api' }
DSAbstractDebugPointEventRecord >> record: aDebugPointEvent [

	eventName := aDebugPointEvent class name.
	debugPointHash := aDebugPointEvent debugPoint hash
]

{ #category : 'accessing' }
DSAbstractDebugPointEventRecord >> target [

	^ target
]
