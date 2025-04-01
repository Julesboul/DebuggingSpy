"
I simulate a survey that can be managed through DSSpy.
"
Class {
	#name : 'DSTestSurvey',
	#superclass : 'Object',
	#instVars : [
		'answer',
		'uuid'
	],
	#category : 'DebuggingSpy-Tests-Utils',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Utils'
}

{ #category : 'accessing' }
DSTestSurvey class >> dsSurveyDescription [

	^ 'DS test survey'
]

{ #category : 'accessing' }
DSTestSurvey >> answer [ 	
	^answer
]

{ #category : 'accessing' }
DSTestSurvey >> answer: anObject [

	answer := anObject
]

{ #category : 'accessing' }
DSTestSurvey >> description [ 	
	^self class dsSurveyDescription
]

{ #category : 'initialization' }
DSTestSurvey >> initialize [

	super initialize.
	answer := self class dsSurveyDescription
]

{ #category : 'accessing' }
DSTestSurvey >> title [
	^self description 
]

{ #category : 'accessing' }
DSTestSurvey >> uuid [

	^ uuid ifNil: [ uuid := UUID new ]
]
