#!/bin/sh
sleep 1

if [ ! -d /backup ];then
    rm -rf /volume/* /volume/..?* /volume/.[!.]*
    tar -C /volume/ -zxvf /backup
else
    tar -zcvf /tmp.tar.gz -C /volume ./
    mv /tmp.tar.gz /backup/`sha1sum /tmp.tar.gz|awk '{print $1}'`.tar.gz
fi
