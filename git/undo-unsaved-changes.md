Reverting Unsaved Changes
=====

This will unstage all files you might have staged with git add:

```bash
git reset
```

This will revert all local uncommitted changes (should be executed in repo root):

```bash
git checkout .
```

You can also revert uncommitted changes only to particular file or directory:

```bash
git checkout [some_dir|file.txt]
```

Yet another way to revert all uncommitted changes (longer to type, but works from any subdirectory):

```bash
git reset --hard HEAD
```
