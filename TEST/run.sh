#!/bin/sh
set -x
../resync --updated --changed --removed --added --exclude ".git/" --exclude "*/.git/" --exclude "*.tmp" --print --confirm --preview SOURCE_FOLDER/ TARGET_FOLDER/
../resync --updated --changed --removed --added --print --confirm --create --preview SOURCE_FOLDER/ CREATED_FOLDER/
../resync --updated --changed --removed --added --print --confirm --create --preview SOURCE_FOLDER/ TARGET_FOLDER/
../resync --updated --changed --removed --added --verbose --preview --compare always SOURCE_FOLDER/ TARGET_FOLDER/
../resync --updated --removed --added --preview SOURCE_FOLDER/ TARGET_FOLDER/
../resync --moved --preview SOURCE_FOLDER/ TARGET_FOLDER/
