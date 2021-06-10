#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  make -f /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  make -f /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  make -f /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  make -f /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build/CMakeScripts/ReRunCMake.make
fi

