# Appium with Robot Framework
I'll do example for Android in MacOS 
## Setting
 - Before you can setting it you need download: 
   1. Node: https://nodejs.org/en/download/
   2. Java SDK: https://www.oracle.com/java/technologies/downloads/
   3. Python: https://www.python.org/downloads/
 - After you download and setup successfully. Next step
 ### Setup Robot Framework
  - Open terminal and write: 
    ``` 
        cd
        pip3 install robotframework
    ```    
    If you download python2 replace **'pip3'** to **'pip'**
    You can access to the following path: https://robotframework.org/?tab=1#getting-started 
 ### Setup IDE
  You can choose Pypi or any IDE, Now I choose Atom: 
  - Download here: https://atom.io/
  - After download, open ternminal and write: 
    ```
        apm install language-robot-framework
        apm install autocomplete-robot-framework
        apm install hyperclick
        apm install hyperclick-robot-framework
    ```
    
 ### Setup Appium
 1. Setup Appium 
    ```
        npm install -g appium
        npm install -g appium-doctor
        appium-doctor
    ```
    With Android, you must setup for ANDROID_HOME, ANDROID_SDK_ROOT and JAVA_HOME enviroments. If you done, next step 2.
    ```
        nano ~/.zshrc 
    ```
    Write these line in file `.zshrc`: 
    ```
        export ANDROID_HOME=/Users/xxx/Library/Android/sdk
        export PATH=$PATH:$ANDROID_HOME/platform-tools  
        export ANDROID_SDK_ROOT=/Users/xxx/Library/Android/sdk
        export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-19.jdk/Contents/Home
    ```
    If you don't find your JAVA_HOME link, run: `/usr/libexec/java_home`
    Next, run it to save file:
    ```
        source ~/.zshrc
    ```
 2. Setup Appium Inspector
    Access to the path: https://github.com/appium/appium-inspector/releases
    Choose file `.dmg` to download and setup it
    You can setup Capabilities for it, then open your application and run 
    Capabilities:
    ```
        {
            "appium:automationName": "UiAutomator2",
            "platformName": "Android",
            "appium:deviceName": "Realme",
            "appium:platformVersion": 10
        }
    ```
    You will see information(`App Source` and `Selected Elemen`) of your app in right collum to copy `resource-id` or `class` for testcase
### How to run automation test
1. Start appium server
    ```
        appium
    ```
2. Direct to `demoTest` 
    ```
        robot demoAutomation.robot
    ```
    
### Note
1. If you have a error as: `AttributeError: 'WebDriver' object has no attribute 'find_elements_by_id'` or something like that
Open terminal and write: 
    ```
        pip3 install robotframework-seleniumlibrary==4.2.0
    ```
2. You can read more here: 
 - https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
 - https://www.youtube.com/c/RobotFrameworkTutorials
 
### Thank you!
