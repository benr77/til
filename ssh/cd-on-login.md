Change directory when logging in via SSH
=====

To automatically change to a particular directory when logging in to a machine via SSH, there are various options, 
including editing `.ssh/Config` or adding paramters to the SSH command.

However, the simplest option is simply to add the `cd` command to the `.bashrc` or `.profile` file of the remote 
account you are logging in to.

```bash
echo 'cd /var/www/html' >> ~/.bashrc
```

Then the next time you login you will automatically be changed in to the new location.
