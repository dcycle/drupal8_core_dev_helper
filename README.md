Drupal 8 core dev helper
=====

This project is meant to help you set a local Drupal 8 environment to help develop and test core patches.

Usage
-----

Install and launch [Docker](https://store.docker.com/editions/community/docker-ce-desktop-mac), then run:

    git clone https://github.com/dcycle/drupal8_core_dev_helper.git && \
      cd drupal8_core_dev_helper && \
      ./scripts/deploy.sh`

The above will give you a login link to a fully-functional local Drupal environment, which you can open in a browser.

Your Drupal code now available at ./drupal8_core_dev_helper/drupal.

More details
-----

See the blog post [Fast-track local Drupal 8 core patch development and testing, April 7, 2018, Dcycle Blog](http://blog.dcycle.com/blog/2018-04-07/fast-local-d8-core-patch-dev-testing/).

Useful commands
-----

* `docker-compose down` powers down your Docker containers.
* `./scripts/destroy.sh` powers down and destroys your Docker containers, and deletes your local copy of Drupal at `/path/to/drupal8_core_dev_helper/drupal`.
* `./scripts/deploy.sh` powers up your Docker containers and installs Drupal if necessary.
* `./scripts/uli.sh` generates a one-time login link to your Drupal environment.
* `docker-compose exec drupal /bin/bash -c 'drush ...'` calls `drush` on the Drupal container.
