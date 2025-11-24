Feature: ERE/ERS interaction upon rebuild requests
  When a rebuild request is pushed to the ERE, the ERE resets its internal state, so that all
	subsequent entity resolution requests are processed as though the corresponding entities have
	never been seen before, ie, new canonical entities and cluster associations are (re) created
	as old entities are sent in again for resolution, as well as for completely new entities.

Scenario
  A rebuild request is pushed to the ERE. The ERE asynchronously replies with a response that
	indicates the request has been received and the internal state has been reset. 
When 
	The ERS pushes a rebuild request into the requests channel
Then
	The ERE asynchronously pushes a rebuild response to the rebuild responses channel that contains:

  requestId: the ID of the rebuild request
  type: "RebuildResponse" # JSON object type, matches the LinkML class in the service schema 

Scenario
	After a rebuild request, an entity E that previously was resolved to a canonical entity C
	is now resolved as a new entity
Given
	An entity C has previously been resolved by the ERE
When 
	The ERS pushes a rebuild request into the ERE rebuild requests channel
And
	The ERE has responded with a rebuild response 
And 
	The ERS pushes a resolution request for the entity E into the requests channel
Then
	The ERE asynchronously pushes an entity resolution object to the responses channel that contains:
	
	sourceEntityId: the ID of the entity E
	canonicalEntity: an RDF representation of E
	confidenceLevel: 1.0 (since E itself is a new canonical entity)
	type: "EntityResolution" # JSON object type, matches the LinkML class in the service schema

Scenario
  After a rebuild request, a completely new entity E is resolved as a new canonical entity
Given
	The ERE has never received the entity E for resolution prior to the current use case,
	not even before a rebuild operation
When
	The ERS pushes a rebuild request into the requests channel
And
	The ERE has responded with a rebuild response
And
	The ERS pushes a resolution request for the entity E into the requests channel
Then
	The ERE asynchronously pushes an entity resolution object to the responses channel that contains:
	
	sourceEntityId: the ID of the entity E
	canonicalEntity: an RDF representation of E
	confidenceLevel: 1.0 (since E itself is a new canonical entity)
	type: "EntityResolution"
