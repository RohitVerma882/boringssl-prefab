# BoringSSL Prefab
[![](https://img.shields.io/badge/Minimum%20Sdk-21-2196F3)](https://github.com/RohitVerma882/libcxx-prefab)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](./LICENSE)

Prefab package for https://github.com/RohitVerma882/boringssl

## Integration

This is a [Prefab](https://google.github.io/prefab/) library, so you will need to enable it in your project (requires Android Gradle Plugin 4.1+):

```gradle
android {
    ...
    buildFeatures {
        ...
        prefab true
    }
}
```

Add dependency:

```gradle
repositories {
    mavenCentral()
}

dependencies {
    implementation 'com.rv882.ndk.thirdparty:boringssl:1.0.0'
}
```

## Usage

### ndk-build

```makefile
LOCAL_STATIC_LIBRARIES := crypto

# You can remove this block if you are using NDK r21+.
ifneq ($(call ndk-major-at-least,21),true)
    $(call import-add-path,$(NDK_GRADLE_INJECTED_IMPORT_PATH))
endif

$(call import-module,prefab/crypto)
```

### CMake

```cmake
find_package(boringssl REQUIRED CONFIG)
target_link_libraries(<your lib> boringssl::crypto)
```