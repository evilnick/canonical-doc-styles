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

## The Canonical Style GitHub action

This repository also includes a file, `action.yml`, which is the basis of a GitHub action to be used to automatically run Vale checks on incoming pull requests. 

### Using the Github action in a workflow

Your repository can make use of the action in a workflow. An example workflow is included in this repository and is demonstrated here. Note that the stle guide action is merely part of a functioning workflow.

```yaml
on: [pull_request]

jobs:
  vale:
    name: Style checker
    runs-on: ubuntu-22.04
    defaults:
        run:
            shell: bash
            working-directory: .
    steps:
        - name: Checkout repo to runner
          uses: actions/checkout@v3
        - name: Install styles
          uses: evilnick/test-action@v0
        - name: Run Vale tests
          uses: errata-ai/vale-action@reviewdog
          with:
            files: ./docs
            fail_on_error: true
```

In the example above, the worklow is organised as a single job. This is important as the actions rely on persistence through the run.
There are three job steps
 - The github/checkout action: this fetches the code from the repo calling the workflow
 - This style guide action: this fetches the styles and, if not present, a default config for Vale
 - The vale/reviewdog action: this runs Vale using reviewdog, to insert comments into a pull-request.

 The result

 ![Alt text](<Screenshot from 2023-11-03 19-46-45.png>)
<!-- LINKS -->
[Vale styles]: https://vale.sh/docs/topics/styles/