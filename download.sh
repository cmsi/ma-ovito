#!/bin/sh
. $(dirname $0)/path.sh

if [ -f ovito_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://gitlab.com/stuko/ovito/-/archive/v$VERSION_BASE/ovito-v$VERSION_BASE.tar.gz
tar zxvf ovito-v$VERSION_BASE.tar.gz
mv -f ovito-v$VERSION_BASE ovito_$VERSION_BASE
tar zcvf ovito_$VERSION_BASE.orig.tar.gz ovito_$VERSION_BASE
rm -rf ovito_$VERSION_BASE ovito-v$VERSION_BASE.tar.gz
