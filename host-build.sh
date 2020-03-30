#!/bin/sh
. $(dirname $0)/path.sh

VM="madev10-amd64 madev10-i386"
for v in $VM; do
  cd $HOME/vagrant/$v
  vagrant ssh -c "sh development/ma-${PACKAGE}/setup.sh"
  vagrant ssh -c "sh development/ma-${PACKAGE}/build.sh"
done
