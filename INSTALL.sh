#!/bin/bash
perl_bin=${PERLBREW_PATH##*:}
if [ -d $perl_bin ] ; then
    perl_root=${perl_bin%/*}
    version=${perl_root##*-}
    [ -d SoftLayer ] && tar cf - SoftLayer | tar -xf - -C $perl_root/lib/site_perl/$version
else
    echo "PERLBREW directory not found: $PERLBREW_PATH"
    exit 1
fi
