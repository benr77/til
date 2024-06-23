Monitoring Supervisord
====

Installing `superlance` provides a [collection of utilities](https://superlance.readthedocs.io/) for managing Supervisord.

```bash
sudo pip install superlance
```

Then, configure email alerts when Supervisord either gives up or is repeatedly spawning processes.

```
# /etc/supervisor/conf.d/crashmail.conf

; https://superlance.readthedocs.io/en/latest/crashmail.html
[eventlistener:crashmail]
command=crashmail -a -m your@email.com
events=PROCESS_STATE_EXITED

; https://superlance.readthedocs.io/en/latest/fatalmailbatch.html
[eventlistener:fatalmailbatch]
command=fatalmailbatch --toEmail="your@email.com" --fromEmail="root@your-server.com"
events=PROCESS_STATE,TICK_60
```

Then reload Supervisord to pick up the new configuration.

```bash
sudo service supervisor restart
```
