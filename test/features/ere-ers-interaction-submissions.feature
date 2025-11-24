Feature: ERE/ERS interaction for entity resolutions

Scenario
  A resolution request is pushed to the ERE with an entity that is equivalent to an existing
  canonical entity. The canonical entity is returned asynchronously.

  Detailed examples: see ere-test-cases.md, examples 1, 2, 4, 5
	(https://github.com/meaningfy-ws/er-system/blob/feature/ERS1-49/ere-gherkin-tests/test/test_data/analysis/ere-test-cases.md)
  TODO: fix the link after merging into develop
Given 
  An entity C has previously been resolved by the ERE (and not reset by the last rebuild request)
When 
  The ERS pushes an entity E into the ERE requests channel
And
  The entity E is equivalent to entity C with a sufficient confidence score
Then
  The ERE asynchronously pushes an entity resolution object to the responses channel that contains:
  
  sourceEntityId: the ID of the entity C
  canonicalEntity: an RDF representation of C
  confidenceLevel: a value above the min configured threshold (eg, 0.98)
	type: "EntityResolution" # JSON object type, matches the LinkML class in the service schema 


Scenario
  A resolution request is pushed to the ERE with a new entity, which has no equivalents already
	resolved by the ERE
Given 
  The ERE has never received the entity E for resolution prior to the current use case
	(after the last rebuild request)
When 
  The ERS pushes the entity E into the requests channel
Then
  The ERE asynchronously pushes an entity resolution object to the responses channel that contains:
  
  sourceEntityId: the ID of the entity E
  canonicalEntity: an RDF representation of E
	confidenceLevel: 1.0 (since the new canonical entity is E itself)
	type: "EntityResolution"


Scenario
  A resolution request is pushed to the ERE with an entity that is deemed similar to another
	previously resolved entity, but below the confidence threshold.

	Detailed examples: see ere-test-cases.md, examples 3, 6 
	(https://github.com/meaningfy-ws/er-system/blob/feature/ERS1-49/ere-gherkin-tests/test/test_data/analysis/ere-test-cases.md)
Given 
  The ERE has previously resolved an entity C
When
  The ERS pushes the entity E into the requests channel
And
  The entity E is computed to be similar to entity C, but below the minimum confidence threshold
Then
  The ERE asynchronously pushes an entity resolution object to the responses channel that contains:
  
  sourceEntityId: the ID of the entity E
  canonicalEntity: an RDF representation of E
	confidenceLevel: 1.0 (since the new canonical entity is E itself)
	type: "EntityResolution"
