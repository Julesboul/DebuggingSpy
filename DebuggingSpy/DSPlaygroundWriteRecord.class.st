"
I record that the developer is typing in an StPlayground.
"
Class {
	#name : 'DSPlaygroundWriteRecord',
	#superclass : 'DSPlaygroundRecord',
	#category : 'DebuggingSpy-Records',
	#package : 'DebuggingSpy',
	#tag : 'Records'
}

{ #category : 'accessing' }
DSPlaygroundWriteRecord >> context [
	^'Writing code'
]

{ #category : 'accessing' }
DSPlaygroundWriteRecord >> eventName [
	^'Playground write' 
]

{ #category : 'accessing - structure variables' }
DSPlaygroundWriteRecord >> glyph [
	^'PW'
]
