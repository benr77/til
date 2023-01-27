Purge Project Artifacts
=====

Your project may come up against storage quotas. Looking at the `Settings -> Usage Quotas` report you'll see the vast majority of your storage is used up by project artifacts which can be deleted.

I could not find a way to purge the project artifacts via the web interface, but this can be done via the API as follows:

```bash
curl -X DELETE -H "PRIVATE-TOKEN: <GITLAB-TOKEN>" https://gitlab.com/api/v4/projects/<PROJECT-ID>/artifacts
```

If successful, you should see `{"message":"202 Accepted"}` in the output.
