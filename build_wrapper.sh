#!/bin/bash

PATH="$(cygpath -u "$JAVA8_HOME\\bin"):$PATH"
cp ./ckeditor/dev/builder/build-config.js ./presets/custom-build-config.js
cp ./ckeditor/config.js ./presets/custom-ckeditor-config.js
rm -rf ./ckeditor/plugins/html5video
rm -rf ./ckeditor/skins/bootstrapck
ln -s --relative ./ckeditor/plugins/html5video-repo/html5video ./ckeditor/plugins/html5video
ln -s --relative ./ckeditor/skins/bootstrapck-repo/skins/bootstrapck ./ckeditor/skins/bootstrapck
./build.sh custom
