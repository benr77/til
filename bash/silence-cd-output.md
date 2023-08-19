Silencing the output of "cd -"
=====

The tilde character stops "cd -" from outputting the path of the new directory

```bash
user@host> cd - 
/home/user/foo

user@host> cd ~-
# nothing printed here
```
