gndk-gdb
========

Additions to the ndk-dbg.py script, to allow easier integration with applications that include native code in android library projects. The android-ndk (which is currently in version r10c) does not support launching and debugging native projects which are included in android library projects.

This python script, uses version r10c of the ndk-gdb.py script, and augments it to allow the debugof android library native project. This is achieved with the following additions:
- Filter out potential warnings in the various tools (e.g. Android NDK WARNING)
- Added the --true_package_name command line variable, which corresponds to the package name of the application that will be launched in the device
- Added the --ndk command line to specify the location of the NDK
- Added the --ignore_debuggable flag to ignore parsing the Android Manifest for looking up the corresponding flag (e.g. you may be using gradle and your project may not require a proper AndroidManifest.xml)

Usage 
=======

You can run it like this: 
./gndk-gdb.py --project=<location of android native project> --ndk=<path to ndk> --true_package_name=<name of app to launch> --launch <activity to launch>
You have to have no other IDEs trying to access your android device through the debug. Once your application has been started, you can also start your
IDE.

If you are using a non-userdebug build, then for this to work, you need to have a rooted device, running with the adbd insecure daemon from: http://forum.xda-developers.com/showthread.php?t=1687590
