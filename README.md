# vorbis-swift
This package was created to provide an easy-to-maintain binding for [libvorbis](https://www.xiph.org/vorbis/doc/libogg/index.html).

# Version
The current release supports libvorbis v1.3.7

# Usage
This package is supposed to be used with SwiftPM or added as a Package dependency from XCode.

For Swift Package Manager add the following lines your Package.swift under `dependencies`:

```swift
  .package(
    name: "vorbis-swift",
    url: "https://github.com/HealsCodes/vorbis-swift.git",
    from: "1.3.7"
  )
```

To use the package in your swift code simply import it:

```swift
import LibVorbis
```

# Licensing
This project is under MIT license. 

libogg sources are pulled from [https://gitlab.xiph.org/vorbis](https://gitlab.xiph.org/xiph/vorbis/). 

Vorbis is licensed under the [New BSD License](https://wiki.xiph.org/XiphWiki:Copyrights). 
