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
		do: [ spec
				baseline: 'Teapot'
					with: [ spec
									repository: 'github://zeroflag/Teapot:master/source';
									loads: #('Deployment') ];
				import: 'Teapot'.
				
				spec 
					baseline: 'MongoTalk'
					with: [ spec
									repository: 'github://pharo-nosql/mongotalk/mc';
									loads: #('Client')
							];
					import: 'MongoTalk.'.
					
				
				spec 
					baseline: 'SimpleRedisClient'
					with: [ spec
									repository: 'github://svenvc/SimpleRedisClient'
							];
					import: 'SimpleRedisClient.'.
					
				
			spec
				package: 'PolyglotricBaselineTest2'
				with: [ spec requires: #('Teapot' 'MongoTalk' 'SimpleRedisClient') ].
				
						
	 ]
]

{ #category : #accessing }
BaselineOfPolyglotricBaselineTest2 >> projectClass [
	^ MetacelloCypressBaselineProject
]
