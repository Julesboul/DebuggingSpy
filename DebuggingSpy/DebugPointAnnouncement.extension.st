Extension { #name : 'DebugPointAnnouncement' }

{ #category : '*DebuggingSpy' }
DebugPointAnnouncement >> recordDebugpoint [
	^self debugPoint debugPointRecordFor: self
]
