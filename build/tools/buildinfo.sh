#!/bin/bash

echo ""
echo "# begin octavi build properties"
echo "# autogenerated by buildinfo.sh (octavi)"

GET_VERSION="vendor/octavi/build/tools/getversion.py"
echo "ro.build.project=octavi"
echo "ro.octavi.branding.version=$($GET_VERSION buildtype)"
echo "ro.octavi.buildtype=$($GET_VERSION buildtype)"
echo "ro.octavi.status=$($GET_VERSION status)"
echo "ro.octavi.version=$($GET_VERSION version)"
echo "ro.build.datetime=`$DATE +%s`"

echo "# end octavi build properties"