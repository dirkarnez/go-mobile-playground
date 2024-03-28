export current_directory=$(PWD)
export USERPROFILE=$(cygpath -u $USERPROFILE)

export ANDROID_HOME=$USERPROFILE/Downloads/commandlinetools-win-9123335_latest
export GOROOT=$USERPROFILE/Downloads/go1.21.0.windows-amd64/go
export PATH=$ANDROID_HOME/cmdline-tools/bin/:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH
export PATH=$ANDROID_HOME/platform-tools/:$PATH
export PATH=$GOROOT/bin:$PATH


export ANDROID_NDK_HOME=$ANDROID_HOME/ndk-bundle
export BUILD_TOOLS=$ANDROID_HOME/build-tools/27.0.2

export JAVA_HOME=$USERPROFILE/Downloads/OpenJDK8U-jdk_x64_windows_hotspot_8u322b06/jdk8u322-b06
export PATH=$JAVA_HOME/bin/:$PATH
export GO111MODULE=on
export GOPATH=$USERPROFILE/Downloads/gopath
export GOSUMDB=sum.golang.google.cn
export GOPROXY=proxy.golang.org

# https://dl.google.com/android/repository/commandlinetools-win-9123335_latest.zip
# https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u322-b06/OpenJDK8U-jdk_x64_windows_hotspot_8u322b06.zip

# export ANDROID_NDK=$USERPROFILE/android-ndk-r25b-windows/android-ndk-r25b

# export ANDROID_CMAKE_HOME=$current_directory/android-cmake


# sdkmanager.bat --list --sdk_root=$ANDROID_HOME
sdkmanager.bat --sdk_root=$ANDROID_HOME --install "platform-tools" "platforms;android-27" "build-tools;27.0.2" "ndk-bundle"



# cd $ANDROID_CMAKE_HOME && \
# ls && \
# cd $current_directory && \
# ls && \
# ANDROID_NDK PORTABLE_ANDROID_HOME\ndk\25.1.8937393




# set(TOOLCHAIN "/home/amon/software/android/native-toolchain")
# set( "/home/amon/software/android")
# set( "/home/amon/software/android/build-tools/25.0.3")
# set( "/home/amon/software/android/ndk/ndk-r14b")
# set(JAVA_HOME $ENV{JAVA_HOME})

# $USERPROFILE/Downloads/PORTABLE_ANDROID_HOME/ndk/25.1.8937393/toolchains/llvm/prebuilt/windows-x86_64




# $USERPROFILE/Downloads\commandlinetools-win-9123335_latest\ndk\25.1.8937393\toolchains\llvm\prebuilt\windows-x86_64\bin
echo $ANDROID_NDK_HOME && \
cd $current_directory && \
(
    $USERPROFILE/Downloads/gopath/bin/gomobile init && \
    $USERPROFILE/Downloads/gopath/bin/gomobile  build -target android && \
    read -p "sdasd"
) || read -p "not ok"
