Minimal requirements for the execution of the GUI Ripping Toolset

1.       Windows XP or better (a Linux version of the GUI Ripping Toolset will be published soon);
2.       JDK v.1.7.25
3.       Android sdk v.18 or better. Intel x86 Emulator Accelerator (HAXM) is recommended.
4.       Libraries for Android 2.3.3 or better (downloadable via the Android SDK Manager included in the Android sdk)
5.       Android libraries needed to compile the application under test (if different from Android 2.3.3)
6.       Ant version 1.8.2 or better
 
In the recently released ADT Bundle installation of Android sdk some executable files has been moved, so we distinguish between two different set of settings depending on the installation of the ADT Bundle or of the traditional ADT extension of Eclipse
 
Eclipse ADT Extension

- ANDROID_HOME must be set to the sdk path of Android (e.g. C:\Android\android-sdk)
- JAVA_HOME must be set to the Java sdk path (e.g. C:\Java\jdk1.6.0_25)
- the PATH system variable must contains some speficic paths :
- bin path of ant (e.g. C:\Ant\bin)
- platform-tools path of Android (e.g. C:\Android\android-sdk\platform-tools)
- tools path of Android (e.g. C:\Android\android-sdk\tools)
- build-tools of Android (e.g. C:\Android\android-sdk\build-tools\17.0.0)

A complete example is:

ANDROID_HOME="C:\Android\android-sdk"
JAVA_HOME="C:\Java\jdk1.7.0_25"
PATH="%PATH%;C:\Android\android-sdk\platform-tools;C:\Android\android-sdk\tools;C:\Android\android-sdk\build-tools\17.0.0;C:\Ant\bin"
  
ADT Bundle

- ANDROID_HOME must be set to the sdk path of Android (e.g. D:\adt-bundle-windows-x86-20130514\sdk)
- JAVA_HOME must be set to the Java sdk path (e.g. C:\Java\jdk1.7.0_25)
- the PATH system variable must contains some speficic paths :
- bin path of ant (e.g. C:\Ant\bin)
- platform-tools path of Android (e.g. D:\adt-bundle-windows-x86-20130514\sdk\platform-tools)
- tools path of Android (e.g. D:\adt-bundle-windows-x86-20130514\sdk\tools)
- the path containing the executable aapt.exe. Since different versions of aapt.exe have been released for different Android APIs, you must search the path containing this file in the build-tools subfolders. In our tests, we used the aapt.exe files associated to the Android 4.2.2 (API 17) release, so the path is similar to D:\adt-bundle-windows-x86-20130514\sdk\build-tools\android-4.2.2
 
A complete example is:
    ANDROID_HOME="D:\adt-bundle-windows-x86-20130514\sdk"
    JAVA_HOME="C:\Java\jdk1.7.0_25"
    PATH="%PATH%;D:\adt-bundle-windows-x86-20130514\sdk\platform-tools;D:\adt-bundle-windows-x86-20130514\sdk\tools;D:\adt-bundle-windows-x86-20130514\sdk\build-tools\android-4.2.2;C:\Ant\bin"
 
Please note that the new adt bundle version of Android places the SDK Manager.exe file in a folder different to the sdk one. In this case, please make a copy of SDK Manager.exe in the sdk folder