import abc


class AbstractRepository(abc.ABC):

    @abc.abstractmethod
    def add(self, entity):
        """Add an entity to the repository."""

    @abc.abstractmethod
    def get(self, entity_id):
        """Get a single entity by its ID from the repository."""

    @abc.abstractmethod
    def list(self):
        """List all entities in the repository."""

    @abc.abstractmethod
    def remove(self, entity_id):
        """Remove an entity by its ID from the repository."""

    @abc.abstractmethod
    def update(self, entity):
        """Update the entity’s information in the repository."""
