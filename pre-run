#!/bin/bash

# running at the very first time
if [ $MYSQL_ADMIN_USERNAME ] && [[ $INIT_DATABASE_ENABLE != false ]]; then
    cat /srv/{tables.sql,user.sql} | mysql -h$MYSQL_HOST -u$MYSQL_ADMIN_USERNAME -p$MYSQL_ADMIN_PASSWORD
fi
