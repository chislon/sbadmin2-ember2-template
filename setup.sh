#!/bin/bash
# FIXME: this setup script is untested

cd $(dirname $0)

npm install -g ember-cli
npm install -g bower

ember new client

if [ $? -eq 0 ]
then
  echo "Successfully generated new Ember app"
else
  echo "Could not create new Ember app, exiting" >&2
  exit 1
fi

# copy prebuilt files

cd ./client
cp ../client-prebuilts/vendor/com.chislonchow.sbadmin2-ember2-template/package.json.sample package.json
cp ../client-prebuilts/vendor/com.chislonchow.sbadmin2-ember2-template/ember-cli-build.js.sample ember-cli-build.js
cp ../client-prebuilts/vendor/com.chislonchow.sbadmin2-ember2-template/tables.html.sample app/index.html

npm install
bower install

cd ./vendor
mkdir -p sb2admin
cd sb2admin
bower install startbootstrap-sb-admin-2

cd ../..

# Required for ember-cli-less
touch app/styles/app.less

# Make the distribution and start the web server on the default port
ember server

exit 0
