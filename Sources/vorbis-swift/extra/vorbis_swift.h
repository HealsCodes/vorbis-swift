#include <TargetConditionals.h>

#if TARGET_OS_IPHONE
    // should cover for iOS, tvOS, watchOS, visionOS and catalyst
    @import UIKit;
#elif TARGET_OS_MAC
    @import AppKit;
#endif

#include "vorbis/codec.h"
