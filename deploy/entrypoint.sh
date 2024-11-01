#!/bin/bash

sudo chown -R $USER:www-data storage
sudo chown -R $USER:www-data bootstrap/cache
sudo chown -R $USER:www-data /var/log

sudo chmod -R 775 storage
sudo chmod -R 775 bootstrap/cache
sudo chmod -R 775 /var/log

# Execute the original command
exec "$@"
