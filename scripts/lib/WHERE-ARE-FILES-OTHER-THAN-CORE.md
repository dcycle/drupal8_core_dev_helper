Where are the files other than core?

This git repo contains only core; that is normal, as that is the only directory shared between the host and the container. We cannot share the entire drupal root because that would entail sharing ./sites/default, which would in turn result in a number of permissions issues.

See ./README.md for details.
