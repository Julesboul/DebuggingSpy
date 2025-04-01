"
I locate scenario files for testing in the DebuggingSpy local folders.
"
Class {
	#name : 'DSTestingScenariosFileLocator',
	#superclass : 'Object',
	#category : 'DebuggingSpy-Tests-Utils',
	#package : 'DebuggingSpy-Tests',
	#tag : 'Utils'
}

{ #category : 'accessing - scenario directories' }
DSTestingScenariosFileLocator class >> browserScenario001 [
	^(self browserScenarios / '001_run1') contents
]

{ #category : 'accessing - scenario directories' }
DSTestingScenariosFileLocator class >> browserScenarios [
	^self scenariosDirectory / '001'
]

{ #category : 'accessing - scenario directories' }
DSTestingScenariosFileLocator class >> scenariosDirectory [

	^ (IceRepository repositories detect: [ :r | r name = 'DebuggingSpy' ])
		  workingCopy properties repository location / 'ScenarioTesting'
	  / 'ScenarioResult'
]
