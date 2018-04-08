#!/bin/bash
#
# Destroy the whole environment.
#
set -e

echo ' => Running docker-compose down -v'
docker-compose down -v
echo " => Deleting $(pwd)/drupal/core"
rm -rf ./drupal/core
echo " => Deleting $(pwd)/drupal/.git"
rm -rf ./drupal/.git
echo " => Environment should be completely destroyed now"
