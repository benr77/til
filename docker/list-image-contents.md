List Contents Of Docker Image
====

In some cases you cannot log into a shell inside a running container, for example when the image is built using `FROM scratch` and there is no OS or shell to execute.

Instead, you can list files as follows:

```
docker create --name="tmp_$$" <image-name> ls && \
    docker export tmp_$$ | tar t && \
    docker rm tmp_$$
```

To save the output to a file instead:

```
docker create --name="tmp_$$" <image-name> ls && \
    docker export tmp_$$ | tar t > outfile.txt && \
    docker rm tmp_$$
```
