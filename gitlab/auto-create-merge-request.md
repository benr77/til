Automatically Create Merge Request
=====

Gitlab has options that can be configured when pushing code to the repo. We can use this to automatically generate a merge request from a push.

In `~/.gitconfig` add an alias `mr` which can be used to push AND create a merge request.

```
[alias]
  ...
  mr = "!git push -o merge_request.create -o merge_request.target=master -o merge_request.remove_source_branch origin $(git branch --show-current)"
```

All available options can be found in the [Gitlab documentation](https://docs.gitlab.com/ee/user/project/push_options.html).
