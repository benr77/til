GitLab Runner Configuration
=====

## GitLab

In GitLab, navigate to the GitLab group you want to configure the runner for.

In `Settings -> CI -> Runners`, get the GitLab URL and Registration Token. These are used when registering the runner on the remote host.

Then, un-check _Enable shared runners for this project_ so that GitLab always uses the dedicated runner we are configuring.

## Runner Host

Install Docker on a cloud server. Then, run the GitLab Runner Docker image:

Register a runner:

```bash
docker run --rm -it -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner register
```

Verify the current runners:
```bash
docker run --rm -it -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner verify
```

Restart the container:
```bash
docker run --rm -it -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner restart
```

Multiple runners can be configured on a single host by repeating this command. One runner per GitLab "group".
