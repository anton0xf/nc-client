Simple docker networking example. Just connect from docker container to server on localhost

```sh
# start server
$ nc -l 5555

# build client
$ docker build -t nc-client .

# run client
$ docker run nc-client
```
