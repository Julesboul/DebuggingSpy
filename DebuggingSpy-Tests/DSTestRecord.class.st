"
I am an event record class to test ds records mechanics.
"
Class {
	#name : 'DSTestRecord',
	#superclass : 'DSAbstractEventRecord',
	#category : 'DebuggingSpy-Tests-Utils',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Utils'
}

{ #category : 'accessing' }
DSTestRecord >> eventName [
	^'test'
]
