```shell

ionic cordova plugin add ionic-plugin-deeplinks --variable URL_SCHEME=aslam --variable DEEPLINK_SCHEME=https --variable DEEPLINK_HOST=github.io

npm install --save @ionic-native/deeplinks

ionic cordova run android --livereload --consolelogs --serverlogs

adb shell am start -a android.intent.action.VIEW -d "aslam://app/user"

```