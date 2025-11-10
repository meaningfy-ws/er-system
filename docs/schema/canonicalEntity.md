

# Slot: canonicalEntity 


_The canonical entity that the ERE has associated to the original entity._

_TODO: the canonical entity URI is available from the this attribute, should we_

_have it at the parent level too?_

__





URI: [ers:canonicalEntity](https://data.europa.eu/ers/schema/canonicalEntity)
Alias: canonicalEntity

<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EntityResolution](EntityResolution.md) | An entity resolution response sent by the ERE |  no  |






## Properties

* Range: [CanonicalEntity](CanonicalEntity.md)




## Identifier and Mapping Information






### Schema Source


* from schema: https://data.europa.eu/ers/schema




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | ers:canonicalEntity |
| native | ers:canonicalEntity |




## LinkML Source

<details>
```yaml
name: canonicalEntity
description: 'The canonical entity that the ERE has associated to the original entity.

  TODO: the canonical entity URI is available from the this attribute, should we

  have it at the parent level too?

  '
from_schema: https://data.europa.eu/ers/schema
rank: 1000
alias: canonicalEntity
owner: EntityResolution
domain_of:
- EntityResolution
range: CanonicalEntity

```
</details>