Ignoring Files Or Directories With Dropbox
====

You can specify a file or folder to be ignored by Dropbox:

```bash
attr -s com.dropbox.ignored -V 1 <path>
```

To then remove the ignored status:

```bash
attr -r com.dropbox.ignored <path>
```

Other operating systems are also support. Read the [Dropbox documentation](https://help.dropbox.com/files-folders/restore-delete/ignored-files).
