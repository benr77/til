Global Ignore Patterns
=====

Instead of having a lot of non-project specific files in your `.gitignore` file in each project root, you can create a global ignore file in your home directory. 

A sample global `~/.gitignore` file:

```
.idea
**/.idea
vendor/
```

To the configure Git to use this global file, run:

```
git config --global core.excludesfile ~/.gitignore
```
