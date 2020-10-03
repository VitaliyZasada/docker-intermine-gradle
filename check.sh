#!/bin/bash

ok=$(wget --server-response http://localhost:9999 2>&1 | awk '/^  HTTP/{print $2}')

if [[ "$ok" != "200" ]]; then
                echo Something wrong with your server, please check logs
                        exit 1
        else
            	echo Return code from the server is $ok ! Server is running
                #docker stop nginx_server 1> /dev/null
                #docker rm nginx_server 1> /dev/null
fi
