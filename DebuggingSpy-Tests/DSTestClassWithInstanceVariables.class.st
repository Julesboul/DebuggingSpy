"
I'm a class with instance variables to test variable breakpoints events.
"
Class {
	#name : 'DSTestClassWithInstanceVariables',
	#superclass : 'Object',
	#instVars : [
		'number',
		'text'
	],
	#category : 'DebuggingSpy-Tests-Utils',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Utils'
}

{ #category : 'initialization' }
DSTestClassWithInstanceVariables >> initialize [ 

	super initialize.
	number := '0'.
	text := 'hell0'
	
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
