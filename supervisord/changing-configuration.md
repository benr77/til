When making a change to the `supervisord` configuration, you need to instruct it to re-read the configuration before restarting the service.

This can be done using the `supervisorctl` utility command:

```bash
sudo supervisorctl reread

sudo supervisorctl update

sudo supervisorctl start messenger-consume:*
```

