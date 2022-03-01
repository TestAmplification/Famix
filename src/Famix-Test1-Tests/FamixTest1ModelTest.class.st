"
A FamixTest1ModelTest is a test class for testing the behavior of FamixTest1Model
"
Class {
	#name : #FamixTest1ModelTest,
	#superclass : #TestCase,
	#category : #'Famix-Test1-Tests'
}

{ #category : #tests }
FamixTest1ModelTest >> testModelCanBeGenerated [
	self assert: (self class environment classNamed: 'FamixTest1Model') isNotNil
]

{ #category : #tests }
FamixTest1ModelTest >> testModelCanHaveComment [
	self assert: (self class environment classNamed: 'FamixTest1Model') comment isNotEmpty
]

{ #category : #tests }
FamixTest1ModelTest >> testModelCanHaveProperties [
	self assert: ((self class environment classNamed: 'FamixTest1Model') new modelHasProperties: 3) isNotNil
]

{ #category : #'as yet unclassified' }
FamixTest1ModelTest >> testModelCanHaveProperties_amp [

	"SmallAmp has derived this test from `FamixTest1ModelTest>>#testModelCanHaveProperties` by regenerating its assertions.
	This test can cover this part:
	*	In `FamixTest1Model>> #modelHasProperties` from 84 to 103:
		Operation: RemoveCaretOperator
		Code snippet: `^ modelHasProperties`
		Dynamic state: {#modelHasProperties->nil}
		Mutant id: RemoveCaretOperator#FamixTest1Model#modelHasProperties#84#103
"

	<madeBySmallAmp>
	| aFamixTest1Model |
	aFamixTest1Model := (self class environment classNamed:
		                     'FamixTest1Model') new.
	self assert: aFamixTest1Model modelHasProperties isNil.
	(aFamixTest1Model modelHasProperties: 3) isNotNil
]
