# ersServiceDataSchema

A LinkML schema for the ERS Services.

URI: https://data.europa.eu/ers/schema

Name: ersServiceDataSchema



## Classes

| Class | Description |
| --- | --- |
| [Entity](Entity.md) | An entity is a representation of a real-world entity, as provided by the ERS |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[CanonicalEntity](CanonicalEntity.md) | A canonical entity is an entity that the ERE has created during the resolutio... |
| [EntityResolution](EntityResolution.md) | An entity resolution response sent by the ERE |
| [EntityResolutionRequest](EntityResolutionRequest.md) | An entity resolution request sent by to the ERE, containing the entity to be ... |



## Slots

| Slot | Description |
| --- | --- |
| [canonicalEntityUri](canonicalEntityUri.md) |  |
| [confidenceLevel](confidenceLevel.md) | A 0-1 value of how confident the ERE is about associating the original entity |
| [entityData](entityData.md) | A code string representing the entity details (eg, RDF description) |
| [entityDataFormat](entityDataFormat.md) | A string about the MIME format of `entityData` (e |
| [id](id.md) | A string containing the entity ID or URI (set by the ERS or, for canonical en... |
| [metadata](metadata.md) | An arbitrary dictionary of further request metadata |
| [originator](originator.md) | The ID or URI of the request originator |
| [requestId](requestId.md) | A string representing the unique ID of this request |
| [sourceEntityId](sourceEntityId.md) | The ID or URI of the source entity as provided in the `EntityResolutionReques... |
| [type](type.md) | A string representing the entity type URI (based on CET) |


## Enumerations

| Enumeration | Description |
| --- | --- |


## Types

| Type | Description |
| --- | --- |
| [Boolean](Boolean.md) | A binary (true or false) value |
| [Curie](Curie.md) | a compact URI |
| [Date](Date.md) | a date (year, month and day) in an idealized calendar |
| [DateOrDatetime](DateOrDatetime.md) | Either a date or a datetime |
| [Datetime](Datetime.md) | The combination of a date and time |
| [Decimal](Decimal.md) | A real number with arbitrary precision that conforms to the xsd:decimal speci... |
| [Double](Double.md) | A real number that conforms to the xsd:double specification |
| [Float](Float.md) | A real number that conforms to the xsd:float specification |
| [Integer](Integer.md) | An integer |
| [Jsonpath](Jsonpath.md) | A string encoding a JSON Path |
| [Jsonpointer](Jsonpointer.md) | A string encoding a JSON Pointer |
| [Ncname](Ncname.md) | Prefix part of CURIE |
| [Nodeidentifier](Nodeidentifier.md) | A URI, CURIE or BNODE that represents a node in a model |
| [Objectidentifier](Objectidentifier.md) | A URI or CURIE that represents an object in the model |
| [Sparqlpath](Sparqlpath.md) | A string encoding a SPARQL Property Path |
| [String](String.md) | A character string |
| [Time](Time.md) | A time object represents a (local) time of day, independent of any particular... |
| [Uri](Uri.md) | a complete URI |
| [Uriorcurie](Uriorcurie.md) | a URI or a CURIE |


## Subsets

| Subset | Description |
| --- | --- |
