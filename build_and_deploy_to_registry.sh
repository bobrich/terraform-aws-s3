#!/bin/bash

# Get the module version from the latest Git tag or commit hash
MODULE_VERSION=$(git describe --tags --always)

# Replace the placeholder in locals.tf.tpl and output locals.tf
sed "s/\${MODULE_VERSION}/$MODULE_VERSION/g" locals.tf.tpl > locals.tf

git add locals.tf
git commit -m "Updated locals.tf with new module version"
git push -u origin main --tags 
