#!/bin/bash

PATH=$PATH:../node_modules/mocha/bin

# compile files to js
pwd
coffee --compile ./linked_list/
coffee --compile ./linked_list/test/

# run tests
echo "Running Tests"
mocha linked_list/test --reporter=spec