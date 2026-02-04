# Migrated

The contents of this repo has been migrated to various [OP-TED repos](https://github.com/OP-TED).

[This is the closest match](https://github.com/OP-TED/entity-resolution-service) to this one.

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

Once you are happy, you can also regenerate the documentation by running:

```bash
make generate_docs
```


## Test data

### Deduplicated notices

This repository contains manual deduplication for organizations and procedures from RDF tender notices. 
The duplication was done using fuzzy string matching with manual checking of the results.

#### Structure with entity title

```
test
└── test_data
    └── notices
        ├── deduplicated_organizations
        │   ├── group1/  # Комисия за защита на конкуренцията
        │   ├── group2/  # Tribunal administratif de Paris
        │   ├── group3/  # Tribunal Administrativo Central de Recursos Contractuales
        │   ├── group4/  # UAB "Labochema LT"
        │   └── group5/  # Consiliul National de Solutionare a Contestatiilor
        │
        └── deduplicated_procedures
            ├── group1/  # Servicii de exploatare forestieră
            ├── group2/  # Zadavateli není známo, zda se jedná o malý či střední podnik
            ├── group3/  # S21, PA 1.7; Bahntechnik Oberbau Los A, (19FEI37404) 20FEI44393
            └── group4/  # Prestação de cuidados de enfermagem...
```

#### Sample data deduplication notes

- Organization matching normalizes company suffixes (Ltd, Corp, etc.)
- Procedure matching normalizes whitespace and removes common words like "procedure"
- Similarity threshold was set to 90%
- The title of entities in each group may differ