Class {
	#name : #FmxMBConfigurationTest,
	#superclass : #FmxMBTestCase,
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #tests }
FmxMBConfigurationTest >> testConfiguration [
	| config |
	config := builder configuration.

	self assert: config isNotNil.

	self assert: config basicSuperclassName equals: config defaultBasicSuperclassName.
	config basicSuperclassName: #TestValue1.
	self assert: config basicSuperclassName equals: #TestValue1.

	self assert: config basicTraitName equals: config defaultBasicTraitName.
	config basicTraitName: #TestValue2.
	self assert: config basicTraitName equals: #TestValue2.

	self assert: config classTag equals: config defaultClassTag.
	config classTag: #TestValue3.
	self assert: config classTag equals: #TestValue3.

	self assert: config navigationForContainers.
	config navigationForContainers: false.
	self deny: config navigationForContainers.

	self deny: config navigationForNonContainers.
	config navigationForNonContainers: true.
	self assert: config navigationForNonContainers.

	self deny: config wantsToGenerateImportingContext.
	config wantsToGenerateImportingContext: true.
	self assert: config wantsToGenerateImportingContext
]

{ #category : #'as yet unclassified' }
FmxMBConfigurationTest >> testConfiguration_amp [

	"SmallAmp has derived this test from `FmxMBConfigurationTest>>#testConfiguration` by regenerating its assertions.
	This test can cover these parts:
	*	In `FmxMBConfiguration>> #packageName` from 14 to 86:
		Operation: RemoveCaretOperator
		Code snippet: `^ packageName ifNil: [ 
	  packageName := #'FamixMetamodelBulder-Generated' ]`
		Dynamic state: {#packageName->'Tst'}
		Mutant id: RemoveCaretOperator#FmxMBConfiguration#packageName#14#86
	*	In `FmxMBConfiguration>> #packageNameForAnnotations` from 28 to 82:
		Operation: RemoveCaretOperator
		Code snippet: `^ packageNameForAnnotations ifNil: [ self packageName ]`
		Dynamic state: {#packageNameForAnnotations->nil}
		Mutant id: RemoveCaretOperator#FmxMBConfiguration#packageNameForAnnotations#28#82
"

	<madeBySmallAmp>
	| config |
	config := builder configuration.
	self assert: config packageNameForAnnotations equals: 'Tst'.
	config
		basicSuperclassName: #TestValue1;
		basicTraitName: #TestValue2;
		classTag: #TestValue3;
		navigationForContainers: false;
		navigationForNonContainers: true;
		wantsToGenerateImportingContext: true
]

{ #category : #'as yet unclassified' }
FmxMBConfigurationTest >> testConfiguration_amp_A1 [

	"SmallAmp has derived this test from `FmxMBConfigurationTest>>#testConfiguration` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `FmxMBConfiguration>> #defaultModelTag` from 19 to 26:
		Operation: RemoveCaretOperator
		Code snippet: `^ #Model`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#FmxMBConfiguration#defaultModelTag#19#26
	*	In `FmxMBConfiguration>> #modelTag` from 12 to 65:
		Operation: RemoveCaretOperator
		Code snippet: `^ modelTag ifNil: [ modelTag := self defaultModelTag ]`
		Dynamic state: {#modelTag->nil}
		Mutant id: RemoveCaretOperator#FmxMBConfiguration#modelTag#12#65
"

	<madeBySmallAmp>
	| config aString |
	config := builder configuration.
	aString := config
		           basicSuperclassName: #TestValue1;
		           modelTag.
	self assert: aString equals: #Model.
	config
		basicTraitName: #TestValue2;
		classTag: #TestValue3;
		navigationForContainers: false;
		navigationForNonContainers: true;
		wantsToGenerateImportingContext: true
]

{ #category : #'as yet unclassified' }
FmxMBConfigurationTest >> testConfiguration_amp_A102 [

	"SmallAmp has derived this test from `FmxMBConfigurationTest>>#testConfiguration` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `FmxMBConfiguration>> #defaultClassTag` from 19 to 29:
		Operation: RemoveCaretOperator
		Code snippet: `^ #Entities`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#FmxMBConfiguration#defaultClassTag#19#29
"

	<madeBySmallAmp>
	| config aString |
	config := builder configuration.
	aString := config
		           basicSuperclassName: #TestValue1;
		           basicTraitName: #TestValue2;
		           classTag: #TestValue3;
		           navigationForContainers: false;
		           defaultClassTag.
	self assert: aString equals: #Entities.
	config
		navigationForNonContainers: true;
		wantsToGenerateImportingContext: true
]
