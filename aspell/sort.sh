#!/bin/sh
cd $(dirname $0)
src=aspell.en.pws

tmp=$(mktemp /tmp/XXX)
trap "rm -f ${tmp}" 0 1 2 15

head -n1 $src > $tmp
sed 1d $src | sort >> $tmp
cat $tmp > $src
