instance creation
newReferenceFor: aReference
	(aReference reference includesSubstring: 'file://')
		ifTrue: [ ^ aReference reference copyReplaceAll: 'file://' with: 'file://', self path , '/' ].

	^ self path
		ifEmpty: [ aReference reference ]	
		ifNotEmpty: [ self path , '/' , aReference reference]