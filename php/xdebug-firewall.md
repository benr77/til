Configure UFW Firewall for XDebug
=====

When using XDebug with PHP inside a Docker container, you need to open a port on the firewall to unblock access between the container and the client host machine.

```bash
sudo ufw allow in from 172.20.0.0/16 to any port 9003 comment xdebug
```

You may need to adjust the IP address of your Docker network gateway, and the XDebug port.
