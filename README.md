# liveMedia for Android
This is a port of live555's liveMedia library for Android. The original library is available [here][1]. Tested on Mac OS X 10.7 with Android NDK r6.

## Instructions
To build the library for Android, follow the following steps:

1. Edit your `.bashrc` or `.bash_profile` file and insert the following line: `export NDK_ROOT='/path/to/android-ndk-r6/'`
2. `cd` into the `live` directory
3. Execute `./android.sh`
4. Retrieve your shared/static libraries from `BasicUsageEnvironment`, `groupsock`, `liveMedia`, and `UsageEnvironment`
5. Use the libraries as prebuilt libraries in the jni folder of your Android project. Instructions on how to do that are available at [my blog][2].

To clean the directory, issue the following commands:

```shell
$ make clean
```

## Feedback

Please direct all questions, bug reports, and feedback about the porting process to jim@*NO-SPAM*jh-lim.com; likewise, please direct all questions regarding the liveMedia library to [live555][3].

## What I did

* Wrote `android.sh`
* Wrote `config.android`
* Edited `RTSPServerSupportingHTTPStreaming.cpp` and added casts from `unsigned int` to `time_t`
* Edited `Locale.cpp` and added `#include <cstring>`
* Edited `GroupsockHelper.cpp` and removed `s_addr` from inet structs

   [1]: http://www.live555.com/liveMedia/
   [2]: http://blog.jh-lim.com/2011/06/compiling-open-source-libraries-for-android-part-1/
   [3]: http://www.live555.com/liveMedia/
