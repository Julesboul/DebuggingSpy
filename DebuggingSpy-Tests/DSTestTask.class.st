"
I simulate a task that can be managed through DSSpy.
"
Class {
	#name : 'DSTestTask',
	#superclass : 'Object',
	#instVars : [
		'answer'
	],
	#category : 'DebuggingSpy-Tests-Utils',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Utils'
}

{ #category : 'accessing' }
DSTestTask class >> dsTaskDescription [

	^ 'DS test task'
]

{ #category : 'accessing' }
DSTestTask >> answer [ 	
	^answer
]

{ #category : 'accessing' }
DSTestTask >> answer: anObject [

	answer := anObject
]

{ #category : 'accessing' }
DSTestTask >> description [ 	
	^self class dsTaskDescription
]

{ #category : 'initialization' }
DSTestTask >> initialize [

	super initialize.
	answer := self class dsTaskDescription
]

{ #category : 'accessing' }
DSTestTask >> title [ 	
	^self class dsTaskDescription
]
