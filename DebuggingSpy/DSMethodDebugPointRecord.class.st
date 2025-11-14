Class {
	#name : 'DSMethodDebugPointRecord',
	#superclass : 'DSDebugPointRecord',
	#category : 'DebuggingSpy-Records-Extensions',
	#package : 'DebuggingSpy',
	#tag : 'Records-Extensions'
}

{ #category : 'instance creation' }
DSMethodDebugPointRecord class >> breakpointadded: event [

	^DSDebugPointAdd for: event
	
]

{ #category : 'instance creation' }
DSMethodDebugPointRecord class >> breakpointhit: event [

	^DSDebugPointHit for: event
	
]

{ #category : 'instance creation' }
DSMethodDebugPointRecord class >> breakpointremoved: event [

	^DSDebugPointRemoved for: event
	
]

{ #category : 'instance creation' }
DSMethodDebugPointRecord class >> for: anEvent [

	| breakpoint |
	breakpoint := self new.
	breakpoint become: anEvent.
	anEvent record: breakpoint.
	^ anEvent
]

{ #category : 'accessing' }
DSMethodDebugPointRecord >> eventName [

	^ String streamContents: [ :s |
		  s << 'Method'.
		  s << super eventName ]
]

{ #category : 'accessing' }
DSMethodDebugPointRecord >> method [
	^sourceRecord method
]

{ #category : 'accessing' }
DSMethodDebugPointRecord >> node [
	^sourceRecord node
]

{ #category : 'accessing' }
DSMethodDebugPointRecord >> submethodTargets [

	^ {self node}
]

{ #category : 'accessing' }
DSMethodDebugPointRecord >> targetClassOrMethod [

	^ self method
]
