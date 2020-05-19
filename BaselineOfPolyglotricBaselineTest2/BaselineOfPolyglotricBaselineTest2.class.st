Class {
	#name : #BaselineOfPolyglotricBaselineTest2,
	#superclass : #BaselineOf,
	#category : #BaselineOfPolyglotricBaselineTest2
}

{ #category : #baselines }
BaselineOfPolyglotricBaselineTest2 >> baseline: spec [
	<baseline>
	
	spec 
		for: #common
		do: [  ]
]

{ #category : #accessing }
BaselineOfPolyglotricBaselineTest2 >> projectClass [
	^ MetacelloCypressBaselineProject
]

{ #category : #baselines }
BaselineOfPolyglotricBaselineTest2 >> setUpDependencies: spec [

	spec
		baseline: 'Teapot'
			with: [ spec
				repository: 'github://zeroflag/Teapot:master/source';
				loads: #('Deployment') ];
		import: 'Teapot'.
]
