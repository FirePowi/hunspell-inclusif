#!/bin/sh

SRC="$(pwd)"
VERSION="0.3"

mkdir -p builds
mkdir -p builds/firefox

#Firefox
ZIPNAME=$SRC/builds/firefox/fr-inclusif-$VERSION.zip

cp $SRC/firefox/install.rdf $SRC/builds/firefox/install.rdf
sed -i "s/{{BUILD.VERSION}}/$VERSION/g" $SRC/builds/firefox/install.rdf

cd $SRC/builds/firefox/
zip $ZIPNAME install.rdf

cd $SRC
zip -r $ZIPNAME dictionaries

rm $SRC/builds/firefox/install.rdf
