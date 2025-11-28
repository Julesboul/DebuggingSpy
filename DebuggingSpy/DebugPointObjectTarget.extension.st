Extension { #name : 'DebugPointObjectTarget' }

{ #category : '*DebuggingSpy' }
DebugPointObjectTarget >> debugPointTargetRecord [

	^ DSDebugPointObjectTargetRecord for: self
]
