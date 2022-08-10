#!/bin/sh
echo 'client starting...'
echo test | nc -N host.docker.internal 5555
echo "client finished with status: $?"
