// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vorbis-swift",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_14), 
        .iOS(.v13), 
        .tvOS(.v13), 
        .watchOS(.v4), 
        .visionOS(.v1), 
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "LibVorbis",
            targets: ["LibVorbis"]),
    ],
    dependencies: [
        .package(url: "https://github.com/HealsCodes/ogg-swift", from: "1.3.5")
    ],
    targets: [
        // Vorbis native sources
        .target(
            name: "LibVorbis",
            dependencies: [
                .product(name: "LibOgg", package: "ogg-swift")
            ],
            path: "Sources/vorbis-swift",
            exclude: [],
            sources: [
                "./extra/vorbis_swift.h",
                "./native/lib/analysis.c",
                "./native/lib/backends.h",
                "./native/lib/bitrate.c",
                "./native/lib/bitrate.h",
                "./native/lib/block.c",
                "./native/lib/books/coupled/res_books_51.h",
                "./native/lib/books/coupled/res_books_stereo.h",
                "./native/lib/books/floor/floor_books.h",
                "./native/lib/books/uncoupled/res_books_uncoupled.h",
                "./native/lib/codebook.c",
                "./native/lib/codebook.h",
                "./native/lib/codec_internal.h",
                "./native/lib/envelope.c",
                "./native/lib/envelope.h",
                "./native/lib/floor0.c",
                "./native/lib/floor1.c",
                "./native/lib/highlevel.h",
                "./native/lib/info.c",
                "./native/lib/lookup.c",
                "./native/lib/lookup.h",
                "./native/lib/lookup_data.h",
                "./native/lib/lpc.c",
                "./native/lib/lpc.h",
                "./native/lib/lsp.c",
                "./native/lib/lsp.h",
                "./native/lib/mapping0.c",
                "./native/lib/masking.h",
                "./native/lib/mdct.c",
                "./native/lib/mdct.h",
                "./native/lib/misc.c",
                "./native/lib/misc.h",
                "./native/lib/modes/floor_all.h",
                "./native/lib/modes/psych_11.h",
                "./native/lib/modes/psych_16.h",
                "./native/lib/modes/psych_44.h",
                "./native/lib/modes/psych_8.h",
                "./native/lib/modes/residue_16.h",
                "./native/lib/modes/residue_44.h",
                "./native/lib/modes/residue_44p51.h",
                "./native/lib/modes/residue_44u.h",
                "./native/lib/modes/residue_8.h",
                "./native/lib/modes/setup_11.h",
                "./native/lib/modes/setup_16.h",
                "./native/lib/modes/setup_22.h",
                "./native/lib/modes/setup_32.h",
                "./native/lib/modes/setup_44.h",
                "./native/lib/modes/setup_44p51.h",
                "./native/lib/modes/setup_44u.h",
                "./native/lib/modes/setup_8.h",
                "./native/lib/modes/setup_X.h",
                "./native/lib/os.h",
                "./native/lib/psy.c",
                "./native/lib/psy.h",
                "./native/lib/registry.c",
                "./native/lib/registry.h",
                "./native/lib/res0.c",
                "./native/lib/scales.h",
                "./native/lib/smallft.c",
                "./native/lib/smallft.h",
                "./native/lib/synthesis.c",
                "./native/lib/vorbisenc.c",
                "./native/lib/vorbisfile.c",
                "./native/lib/window.c",
                "./native/lib/window.h"
            ],
            publicHeadersPath: "./native/include",
            cSettings: [
                .headerSearchPath("./native/include"),
                .headerSearchPath("./native/lib")
            ]
        )
    ]
)
