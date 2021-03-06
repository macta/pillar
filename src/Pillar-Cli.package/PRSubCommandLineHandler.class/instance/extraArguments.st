accessing
extraArguments

	"We parse the options --key=value into associations"
	| pairs argumentsDictionary |
	pairs := self arguments
		select: [ :commandLineArgPair | commandLineArgPair beginsWith: '--' ]
		thenCollect: [ :commandLineArgPair | 
			self parseKeyValueArgument: commandLineArgPair ].
	
	"We filter out some arguments"
	argumentsDictionary := (pairs reject: [ :p | self class argumentsOutOfConfiguration includes: p key ]) asDictionary.
	^ argumentsDictionary