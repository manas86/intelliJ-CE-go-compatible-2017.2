#!/usr/bin/env bash

# Makes un-compatible Go plugin compatible for intellij 2017.2 version.
# https://plugins.jetbrains.com/plugin/5047-go-language-golang-org-support-plugin
#
# Run ./go_compatible.sh path/to/downloaded/Go/plugin.zip version_of_intellij(e.g. 172, 173, etc.)
# For instance
# ./go_compatible.sh /home/user/downloads/Go-0.13.1947.zip 173
# New  zip file will be created in the same directory as initial archive.

TMP_DIR="`dirname $1`/tmp_go_compiler"
mkdir "$TMP_DIR"
cd "$TMP_DIR"
unzip $1

BUILD_DIR="tmp_build_dir"
mkdir "$BUILD_DIR"
cd "$BUILD_DIR"

INTELIJ_GO_FILE=`find "../Go/lib" -type f -name "intellij-go-*.jar"`
unzip "$INTELIJ_GO_FILE"

VERSION_LINE="<idea-version since-build=\"163.7743\" until-build=\"$2.*\"\/>"
sed -i '2s/.*/ '"$VERSION_LINE"' /' META-INF/plugin.xml

# Removing old jar file with version
rm "$INTELIJ_GO_FILE"
zip -r $INTELIJ_GO_FILE .
cd ../
zip -r Go.zip Go
mv Go.zip ../
rm  -rfv "$TMP_DIR"
