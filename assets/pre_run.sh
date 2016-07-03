#!/bin/bash

INIT_DATABASE_FLAG=$ASSETS_DIR/init-databse.flag

# running at the very first time
if [[ ! -f $INIT_DATABASE_FLAG ]] && [ $MYSQL_ADMIN_USERNAME ] && [[ $INIT_DATABASE_ENABLE != false ]]; then
    cat /srv/{tables.sql,user.sql} | mysql -h$MYSQL_HOST -u$MYSQL_ADMIN_USERNAME -p$MYSQL_ADMIN_PASSWORD
    touch $INIT_DATABASE_FLAG
fi
