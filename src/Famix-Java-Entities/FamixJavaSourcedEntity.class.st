Class {
	#name : #FamixJavaSourcedEntity,
	#superclass : #FamixJavaEntity,
	#traits : 'FamixTSourceEntity + FamixTWithFiles',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithFiles classTrait',
	#category : #'Famix-Java-Entities-Entities'
}

{ #category : #meta }
FamixJavaSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixJavaEntity>
	<package: #'Famix-Java-Entities'>
	<generated>
	^self
]

{ #category : #'Famix-SourceAnchor' }
FamixJavaSourcedEntity >> fileAnchorPath: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FamixJavaIndexedFileAnchor
				fileName: aString
				startLine: anInteger
				startColumn: anInteger2
				endLine: anInteger3
				endColumn: anInteger4
				model: self mooseModel)
]

{ #category : #'Famix-SourceAnchor' }
FamixJavaSourcedEntity >> fileAnchorPath: aString startPos: anInteger endPos: anotherInteger [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FamixJavaIndexedFileAnchor
				fileName: aString
				startPos: anInteger
				endPos: anotherInteger
				model: self mooseModel)
]

{ #category : #'Famix-Extensions' }
FamixJavaSourcedEntity >> numberOfJavaNullChecks [
	<FMProperty: #numberOfJavaNullChecks type: #Number> <derived>
	^self
		lookUpPropertyNamed: #numberOfJavaNullChecks
		computedAs: [
			| nullCheckTextPatterns |
			nullCheckTextPatterns := #('== null' '!= null' 'null ==' 'null !=').
			(self sourceText allRegexMatches: ( '|' join: nullCheckTextPatterns)) size ]
]

{ #category : #'Famix-Extensions' }
FamixJavaSourcedEntity >> structuralChildren [ 
	^ #()
]
