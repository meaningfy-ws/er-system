# Entity Resolution System

A pluggable entity resolution system for data transformation pipelines.

## Environment

This is a Python 3.9+ project. You may want to create a
local virtual environment to set up and run anything in it:

```bash
python -m venv .venv
source .venv/bin/activate
```

Run `deactivate` to exit out of this environment at any time.

Your Python programming IDE of choice should also have a way to select
this as the "interpreter runtime".

You may also use any other means to run Python programs, such as a
system-installed interpreter, the `pyenv` tool, or the `conda` tool (via a
distribution like Anaconda).

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

This will install the additional dependencies required for development, such as testing and linting tools, including LinkML for codegen (see below).

## Development

This project uses principles of model-driven development (MDD) and domain-driven design (DDD). The core model is defined in the `resources/linkml` directory, and the Python (Pydantic) models (pluralized to refer to all the classes as is the practice in the programming community) are generated using the [LinkML](https://linkml.io/) framework.

The generated Python models can be found in the `src/models` directory. You can regenerate them by running:

```bash
make generate_models
```
