# Provide AppCenter/Test upload command & path to APK.
AppCenter_Test_Command='appcenter test run appium --app "hieult7/DemoApp" --devices 32e055b3 --app-path pathToFile.apk --test-series "master" --locale "en_US" --build-dir target/upload'
app_path='../swiftnotes.apk'

# Run using the command "sh upload.sh"
Build_TestUpload_Command='mvn -DskipTests -P prepare-for-upload package'
echo $Build_TestUpload_Command
eval $Build_TestUpload_Command

AppCenter_Test_Command=${AppCenter_Test_Command/'pathToFile.apk'/$app_path}
echo $AppCenter_Test_Command
eval $AppCenter_Test_Command
