#!/bin/bash

docker run --rm -ti -v $(pwd):/src/ node bash -c "
cd /src &&
npm install -g --silent gulp-cli &&
npm install -g --silent xvfb-maybe@0.1.3 &&
npm i &&
gulp install &&
gulp build &&
npm install -g vsce &&
vsce package"
open https://marketplace.visualstudio.com/manage/publishers/neokil