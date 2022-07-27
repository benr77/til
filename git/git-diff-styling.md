Git Diff Output Styling
=====

You can style the output of the `git diff` command.

To use plain colours for lines that have only had whitespace/indentation changes

```bash
git config --global diff.colormoved "plain"
git config --global diff.colormovedws "allow-indentation-change"
```

An interesting package that makes more comprehensive changes is https://github.com/dandavison/delta.
