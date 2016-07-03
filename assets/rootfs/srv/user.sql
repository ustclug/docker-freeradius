GRANT SELECT ON radius.* TO '{{MYSQL_USERNAME}}'@'%' IDENTIFIED BY '{{MYSQL_PASSWORD}}';

GRANT ALL on radius.radacct TO '{{MYSQL_USERNAME}}'@'%';
GRANT ALL on radius.radpostauth TO '{{MYSQL_USERNAME}}'@'%';
