Class {
	#name : 'DSSpyBrowserTest',
	#superclass : 'TestCase',
	#category : 'DebuggingSpy-Tests-Tests - Scenarios',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Tests - Scenarios'
}

{ #category : 'running' }
DSSpyBrowserTest >> setUp [
	super setUp.

	
]

{ #category : 'tests - browser' }
DSSpyBrowserTest >> testBrowserRUN1 [
	|log history openedPlaygrounds playgroundsAction openedBrowser browserEntering|
	log := DSTestingScenariosFileLocator browserScenario001.
	history := DSRecordHistory fromSTON: log.
	openedPlaygrounds := history allRecordsOfKind: DSPlaygroundOpenedRecord.
	playgroundsAction := history allRecordsOfKind: DSPlaygroundWriteRecord.
	openedBrowser := history allRecordsOfKind: DSFullBrowseRecord.
	browserEntering := history allRecordsOfKind: DSWindowActivatedRecord.
	
	self assert: openedPlaygrounds size equals: 1.
	self flag: 'use the history for fine event detection'
	
]
