"
I'm a class with instance variables to test variable breakpoints events.
"
Class {
	#name : 'DSTestClassWithInstanceVariables',
	#superclass : 'Object',
	#instVars : [
		'number',
		'text',
		'bool'
	],
	#category : 'DebuggingSpy-Tests-Utils',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Utils'
}

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> bool [

	^ bool
]

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> bool: aBoolean [

	bool := aBoolean 
]

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> initialize [ 

	super initialize.
	number := '0'.
	text := 'hell0'.
	bool := true
	
]

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> number [

	^ number
]

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> number: aNumber [

	number := aNumber 
]

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> text [

	^ text
]

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> text: aString [

	text := aString 
]
