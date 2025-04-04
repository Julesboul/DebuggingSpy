Class {
	#name : 'DSCompositeEventRecord',
	#superclass : 'DSAbstractEventRecord',
	#instVars : [
		'subEvents'
	],
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'adding' }
DSCompositeEventRecord >> addSubEvent: aDSEvent [

	self subEvents add: aDSEvent
]

{ #category : 'API' }
DSCompositeEventRecord >> canOpenDebuggers [

	^ self subEvents first canOpenDebuggers
]

{ #category : 'accessing' }
DSCompositeEventRecord >> dateTime [

	^ self subEvents first dateTime
]

{ #category : 'API' }
DSCompositeEventRecord >> duration [

	^ subEvents last dateTime - subEvents first dateTime
]

{ #category : 'accessing' }
DSCompositeEventRecord >> eventName [
	^subEvents first eventName
]

{ #category : 'accessing' }
DSCompositeEventRecord >> subEvents [

	^ subEvents ifNil: [ subEvents := OrderedCollection new ]
]

{ #category : 'accessing' }
DSCompositeEventRecord >> subEvents: anObject [

	subEvents := anObject
]

{ #category : 'API' }
DSCompositeEventRecord >> windowId [

	^ self subEvents first windowId
]

{ #category : 'API' }
DSCompositeEventRecord >> windowType [

	^ self subEvents first windowType
]
