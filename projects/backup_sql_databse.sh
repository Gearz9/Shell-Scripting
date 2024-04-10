#!/bin/bash

# Define MySQL credentials
DB_USER="username"
DB_PASS="password"
DB_NAME="database_name"

# Define backup directory
BACKUP_DIR="/path/to/backup/directory"

# Backup MySQL database
mysqldump -u$DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/backup_$(date +"%Y%m%d").sql
