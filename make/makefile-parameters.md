Passing parameters to Makefile targets
=====

It is possible to pass parameters to Makefile targets:

```Makefile
# Makefile
example-with-params:  ## Test Makefile with parameters, use foo=bar
    @echo $(foo)
```

Then run with example parameter:

```bash
> make example-with-params foo=XXXX
XXXX
```
