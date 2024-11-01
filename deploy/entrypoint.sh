#!/bin/bash

# Ensure the storage and cache directories are writable
sudo chown -R $USER:www-data storage
sudo chown -R $USER:www-data bootstrap/cache
sudo chmod -R 775 storage
sudo chmod -R 775 bootstrap/cache

# Execute the original command
exec "$@"