#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  echo Build\ all\ projects
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  echo Build\ all\ projects
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  echo Build\ all\ projects
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/tianteng/Desktop/CmakeTest/CmakeTest/CmakeTest/build
  echo Build\ all\ projects
fi

