Redirecting Command Output
=====

The STDOUT and STDERR streams of command output can be redirected as follows:

```bash
# Redirect stdout to file
1>filename

# Redirect and append stdout to file
1>>filename

# Redirect stderr to file
2>filename

# Redirect and append stderr to file
2>>filename

# Redirect both stdout and stderr to file
&>filename

# Redirects stderr to stdout
2>&1
```

More information can be found [here](https://tldp.org/LDP/abs/html/io-redirection.html).
