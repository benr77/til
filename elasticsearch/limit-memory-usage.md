Limiting Memory Usage
=====

When installing Elasticsearch, the default memory usage settings are quite high if you are only using it for small applications.

To quickly set the maximum permitted memory usage, edit `/etc/elasticsearch/jvm.options` and change the following values:

```
# Xms represents the initial size of total heap space
# Xmx represents the maximum size of total heap space
#-Xms1g # Previous default of 1G
#-Xmx1g # Previous default of 1G
-Xms350m # New value of 350M
-Xmx350m # New value of 350M
```
