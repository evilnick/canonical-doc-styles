# Canonical Style Guide (https://docs.ubuntu.com/en/styleguide)

This repository contains the following

- Vale rules which embody the Canonical Style guide for documentation
- A GitHub Action which will run these Vale rules in a workflow
- A local install script for disconnected/local processing of documentation

## The Vale rules

The Vale linter operates from a series of rules. These are defined in individual YAML files, grouped into 'Styles'.
This repository contains the Canonical set of rules, or the Canonical Style. 

### Adding to the rules

Anyone is welcome to submit a PR to add additional rules. However, no additions will be considered unless they are part of the Canonical Style Guide as found at the website above.

For information on how to create rules, see the Vale [documentation on Styles][Vale styles].

### Using the rules

The Vale rules are published here so that they can be used in any workflow anywhere. You can run Vale locally, as part of CI or in a GitHub workflow - all you need is Vale, a configuration file (which you can also copy from this repository) and the Canonical Styles. Two common scenarios are also catered for more directly here, as detailed below.

## The Canonical Style gitHub action

This repository also includes a file, `action.yml`, which is the basis of a GitHub action to be used to automatically run Vale checks on incoming pull requests. 

### Using the Github action in a workflow



<!-- LINKS -->
[Vale styles]: https://vale.sh/docs/topics/styles/