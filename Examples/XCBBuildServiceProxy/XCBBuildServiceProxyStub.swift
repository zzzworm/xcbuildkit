/*
Copyright (c) 2022, XCBuildKit contributors
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those
of the authors and should not be interpreted as representing official policies,
either expressed or implied, of the IDEXCBProgress project.
*/

import Foundation
import BKBuildService

// TODO:
// - decompose the "Bazel" example to work end to end with Xcode
// - hardcode DeriveData /private/var/tmp/xcbuildkit/example-dd or read
// - read workspace from xcbuild / remove jmarino
// - for this example - have another program generate the index and verify it
//   works
let clangXMLT: String = """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<array>
        <dict>
                <key>LanguageDialect</key>
                <string>objective-c</string>
                <key>clangASTBuiltProductsDir</key>
                <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Products/Debug</string>
                <key>clangASTCommandArguments</key>
                <array>
                        <string>-x</string>
                        <string>objective-c</string>
                        <string>-target</string>
                        <string>x86_64-apple-macos10.14</string>
                        <string>-fmessage-length=0</string>
                        <string>-fdiagnostics-show-note-include-stack</string>
                        <string>-fmacro-backtrace-limit=0</string>
                        <string>-std=gnu11</string>
                        <string>-fobjc-arc</string>
                        <string>-fobjc-weak</string>
                        <string>-fmodules</string>
                        <string>-fmodules-cache-path=/Users/jmarino/Library/Developer/Xcode/DerivedData/ModuleCache.noindex</string>
                        <string>-fmodules-prune-interval=86400</string>
                        <string>-fmodules-prune-after=345600</string>
                        <string>-Wnon-modular-include-in-framework-module</string>
                        <string>-Werror=non-modular-include-in-framework-module</string>
                        <string>-Wno-trigraphs</string>
                        <string>-fpascal-strings</string>
                        <string>-O0</string>
                        <string>-fno-common</string>
                        <string>-Wno-missing-field-initializers</string>
                        <string>-Wno-missing-prototypes</string>
                        <string>-Werror=return-type</string>
                        <string>-Wdocumentation</string>
                        <string>-Wunreachable-code</string>
                        <string>-Wno-implicit-atomic-properties</string>
                        <string>-Werror=deprecated-objc-isa-usage</string>
                        <string>-Wno-objc-interface-ivars</string>
                        <string>-Werror=objc-root-class</string>
                        <string>-Wno-arc-repeated-use-of-weak</string>
                        <string>-Wimplicit-retain-self</string>
                        <string>-Wduplicate-method-match</string>
                        <string>-Wno-missing-braces</string>
                        <string>-Wparentheses</string>
                        <string>-Wswitch</string>
                        <string>-Wunused-function</string>
                        <string>-Wno-unused-label</string>
                        <string>-Wno-unused-parameter</string>
                        <string>-Wunused-variable</string>
                        <string>-Wunused-value</string>
                        <string>-Wempty-body</string>
                        <string>-Wuninitialized</string>
                        <string>-Wconditional-uninitialized</string>
                        <string>-Wno-unknown-pragmas</string>
                        <string>-Wno-shadow</string>
                        <string>-Wno-four-char-constants</string>
                        <string>-Wno-conversion</string>
                        <string>-Wconstant-conversion</string>
                        <string>-Wint-conversion</string>
                        <string>-Wbool-conversion</string>
                        <string>-Wenum-conversion</string>
                        <string>-Wno-float-conversion</string>
                        <string>-Wnon-literal-null-conversion</string>
                        <string>-Wobjc-literal-conversion</string>
                        <string>-Wshorten-64-to-32</string>
                        <string>-Wpointer-sign</string>
                        <string>-Wno-newline-eof</string>
                        <string>-Wno-selector</string>
                        <string>-Wno-strict-selector-match</string>
                        <string>-Wundeclared-selector</string>
                        <string>-Wdeprecated-implementations</string>
                        <string>-DDEBUG=1</string>
                        <string>-DDEMOSQUARE=1</string>
                        <string>-DOBJC_OLD_DISPATCH_PROTOTYPES=0</string>
                        <string>-isysroot</string>
                        <string>/Applications/Xcode-13.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.3.sdk</string>
                        <string>-fasm-blocks</string>
                        <string>-fstrict-aliasing</string>
                        <string>-Wprotocol</string>
                        <string>-Wdeprecated-declarations</string>
                        <string>-g</string>
                        <string>-Wno-sign-conversion</string>
                        <string>-Winfinite-recursion</string>
                        <string>-Wcomma</string>
                        <string>-Wblock-capture-autoreleasing</string>
                        <string>-Wstrict-prototypes</string>
                        <string>-Wno-semicolon-before-method-body</string>
                        <string>-Wunguarded-availability</string>
                        <string>-index-store-path</string>
                        <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/DataStore</string>
                        <string>-iquote</string>
                        <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/CLI-generated-files.hmap</string>
                        <string>-I/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/CLI-own-target-headers.hmap</string>
                        <string>-I/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/CLI-all-target-headers.hmap</string>
                        <string>-iquote</string>
                        <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/CLI-project-headers.hmap</string>
                        <string>-I/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Products/Debug/include</string>
                        <string>-I/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/DerivedSources-normal/x86_64</string>
                        <string>-I/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/DerivedSources/x86_64</string>
                        <string>-I/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/DerivedSources</string>
                        <string>-F/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Products/Debug</string>
                        <string>-fsyntax-only</string>
                        <string>/Users/jmarino/Development/xcbuildkit/iOSApp/CLI/main.m</string>
                        <string>-o</string>
                        <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/Objects-normal/x86_64/main.o</string>
                        <string>-Xclang</string>
                        <string>-fallow-pcm-with-compiler-errors</string>
                        <string>-ivfsoverlay</string>
                        <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/regular-to-index-overlay.yaml</string>
                        <string>-ivfsoverlay</string>
                        <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/index-to-regular-overlay.yaml</string>
                        <string>-fretain-comments-from-system-headers</string>
                        <string>-ferror-limit=10</string>
                        <string>-working-directory=/Users/jmarino/Development/xcbuildkit/iOSApp</string>
                        <string>-Xclang</string>
                        <string>-detailed-preprocessing-record</string>
                        <string>-DZZ=1</string>
                </array>
                <key>outputFilePath</key>
                <string>/Users/jmarino/Library/Developer/Xcode/DerivedData/iOSApp-fwoljlvejnobrkfexfutlxhtoaow/Index/Build/Intermediates.noindex/iOSApp.build/Debug/CLI.build/Objects-normal/x86_64/main.o</string>
                <key>sourceFilePath</key>
                <string>/Users/jmarino/Development/xcbuildkit/iOSApp/CLI/main.m</string>
                <key>toolchains</key>
                <array>
                        <string>com.apple.dt.toolchain.XcodeDefault</string>
                </array>
        </dict>
</array>
</plist>
"""

public enum XCBBuildServiceProxyStub {
   public static func getASTArgs(targetID: String, outputFilePath: String) -> Data {
       let clangXML = clangXMLT.replacingOccurrences(of:"__SOURCE_FILE__", with: outputFilePath)
       return BPlistConverter(xml: clangXML)?.convertToBinary() ?? Data()
   }
}

