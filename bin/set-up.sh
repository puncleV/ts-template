#!/bin/bash

rm -rf ./bin

if [[ $1 == '-c' ]]
  then
  npm remove casual
  sed -i 's/import \*.*//' ./test/greeter.test.ts
  sed -i 's/casual.name/"world"/' ./test/greeter.test.ts
  git commit -am 'remove'
fi

rm -rf ./.git

git init
