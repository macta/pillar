grammar - List
dataSubListItem
	^ super dataSubListItem
		==>
			[ :array | 
			| result |
			result := '' writeStream.
			array
				do: [ :elem | 
					elem isString
						ifTrue: [ result nextPutAll: elem ]
						ifFalse: [ result nextPutAll: elem second ] ].
			result contents ]