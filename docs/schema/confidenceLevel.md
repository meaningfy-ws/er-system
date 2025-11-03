

# Slot: confidenceLevel 


_A 0-1 value of how confident the ERE is about associating the original entity_

_with the canonical entity's cluster._

__





URI: [ers:confidenceLevel](https://data.europa.eu/ers/schema/confidenceLevel)
Alias: confidenceLevel

<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EntityResolution](EntityResolution.md) | An entity resolution response sent by the ERE |  no  |






## Properties

* Range: [Float](Float.md)




## Identifier and Mapping Information






### Schema Source


* from schema: https://data.europa.eu/ers/schema




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | ers:confidenceLevel |
| native | ers:confidenceLevel |




## LinkML Source

<details>
```yaml
name: confidenceLevel
description: 'A 0-1 value of how confident the ERE is about associating the original
  entity

  with the canonical entity''s cluster.

  '
from_schema: https://data.europa.eu/ers/schema
rank: 1000
alias: confidenceLevel
owner: EntityResolution
domain_of:
- EntityResolution
range: float

```
</details>