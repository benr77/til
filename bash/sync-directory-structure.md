Synchronise Directory Structure
=====

To synchronise a directory structure between two locations, without copying files, you can utilise `rsync` as follows:

```bash
rsync -a --include='*/' --exclude='*' source/ dest/
```

The command essentially includes everything, and then excludes all files, leaving only the directories to be synced.
