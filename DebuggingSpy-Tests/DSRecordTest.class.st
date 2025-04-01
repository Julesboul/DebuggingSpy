Class {
	#name : 'DSRecordTest',
	#superclass : 'TestCase',
	#instVars : [
		'record'
	],
	#category : 'DebuggingSpy-Tests-Tests - model',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Tests - model'
}

{ #category : 'tests' }
DSRecordTest >> testRecordPrinting [

	| str |
	str := WriteStream on: String new.
	record := DSTestRecord new.
	record printOn: str.
	self assert: str contents equals: record eventName
]
