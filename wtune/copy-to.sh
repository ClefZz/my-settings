#! /bin/bash

app=$1

scp ./${app}/${app}.schema.sql ./${app}/*.lua zhouz@10.0.0.103:~/wtune/${app}
