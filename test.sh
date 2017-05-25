#!/bin/sh

rm node_modules -r
yarn install --pure-lockfile

first=$(find ./node_modules/yarn-test-package/ -type d)

# Remove an unrelated package and run install again
rm node_modules/promisify -r
yarn install --pure-lockfile
ls ./node_modules/yarn-test-package/ | grep /
second=$(find ./node_modules/yarn-test-package/ -type d)


echo After initial install, these artifact folders exist:
echo $first
echo After second install, these artifact folders exist:
echo $second