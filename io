#!/bin/bash

if [ $1 == "plugin" ]; then
    ionic cordova plugin add ionic-plugin-deeplinks --variable URL_SCHEME=aslam --variable DEEPLINK_SCHEME=https --variable DEEPLINK_HOST=github.io
fi

if [ $1 == "install" ]; then
    npm install --save @ionic-native/deeplinks
fi

if [ $1 == "run" ]; then
    ionic cordova run android --livereload --consolelogs --serverlogs
fi

if [ $1 == "aslam" ]; then
    adb shell am start -a android.intent.action.VIEW -d "aslam://app/user/1"
fi