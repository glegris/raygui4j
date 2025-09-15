# raygui4j

![CI](https://github.com/glegris/raygui4j/actions/workflows/ci.yml/badge.svg)

This repository packages the Java translation of [raygui 3.5](https://github.com/raysan5/raygui/releases/tag/3.5) produced by [mir2j](https://github.com/glegris/mir2j), so you can use raygui as a regular Java library with no JNI / native bindings. The goal is to make immediate-mode GUI controls available anywhere a JVM runs.

The [current backend](https://github.com/glegris/raygui4j/blob/main/src/raygui4j/SwingBackend.java) is Swing. You can add others quickly by implementing this [small backend interface](https://github.com/glegris/raygui4j/blob/main/src/raygui4j/Backend.java).

See the [demo source](https://github.com/glegris/raygui4j/blob/main/src/raygui4j/Demo.java) for a quick start and a tour of the API.

### Features
- **Pure Java**: no native code, no platform toolchains.
- **Immediate-mode API**: mirrors raygui 3.5 entry points.
- **Pluggable backends**: bring your own renderer/toolkit by implementing Backend.
- **Portable**: runs anywhere a JVM runs

### Getting the library
#### Option A — Build from source
```
git clone https://github.com/glegris/raygui4j.git
./compile-raylib4j.sh
# produces raygui4j.jar
```
#### Option B - Download a prebuilt JAR

Grab the jar from [Releases](https://github.com/glegris/raygui4j/releases)

### Demo
Run the demo from the built (or downloaded) jar:
```
java -jar raygui4j.jar
```

![Demo screenshot](https://github.com/glegris/raygui4j/blob/4e1fa56203f0072709237e43393b27ce4c3db19c/screenshots/raygui4j-demo.png)


#### License & Credits
- raygui is © Ramon Santamaria, licensed under the zlib/libpng license.
- The generated Java artifacts retain the original license terms.
- raygui4j is licensed under the MIT license



