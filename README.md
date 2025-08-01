# Entity Resolution System

A pluggable entity resolution system for data transformation pipelines.

## Installation

To get started, you need a UNIX-compatible environment (Mac/Linux/WSL2) with Make. You can then use the following command:

```bash
make
```

This will run the first and default Make target `make install`, which installs the necessary _user_ dependencies with the [uv](https://docs.astral.sh/uv/getting-started/installation/) package manager.

To install the development dependencies, you can run:

```bash
make install-dev
```

This will install the additional dependencies required for development, such as testing and linting tools.

## Development

This project uses principles of model-driven development (MDD) and domain-driven design (DDD). The core model is defined in the `resources/linkml` directory, and the Python model is generated using the [LinkML](https://linkml.io/) framework.

The generated Python model can be found in the `src/models` directory. You can regenerate the model by running:

```bash
make generate_models
```
