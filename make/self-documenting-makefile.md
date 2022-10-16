Self-Documenting Makefile
=====

Instead of writing a Makefile target that outputs a help block line by line, you can set up a Makefile to automatically create the help text based on the comments associated with each target.

```make
.PHONY: help
.DEFAULT_GOAL := help

# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@echo -e "\nMakefile is used to run various utilities related to this project\n"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

```

Then, document each target with a double '#' character, to include the comment as part of the help text:

```make
test-unit: ## Run the unit test suite
	@vendor/bin/phpunit tests/unit
  
test-functional: ## Run the unit test suite
	@vendor/bin/phpunit tests/functional  
```

Now when you run `make` with no arguments, or with `make help` you will see the following output, which is automatically generated.

```bash
$ make

Makefile is used to run various utilities related to this project

test-unit            Run the unit testing suite
test-functional      Run the functional testing suite
```
