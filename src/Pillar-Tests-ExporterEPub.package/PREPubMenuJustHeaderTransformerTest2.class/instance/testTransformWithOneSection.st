tests
testTransformWithOneSection
	| input expected |
	input := PRDocument new
		add:
			(PRHeader new
				level: 1;
				add: (PRText content: 'Bar') yourself);
		add: (PRParagraph with: (PRText content: 'Foo!') yourself);
		yourself.
	expected := PRDocument new
		add:
			(PRSection new
				add:
					(PRHeader new
						level: 1;
						add: (PRText content: 'Bar') yourself);
				yourself) yourself.
	self expected: expected withInput: input