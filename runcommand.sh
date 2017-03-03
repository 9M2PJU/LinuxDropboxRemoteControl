#!/bin/bash
pushd $HOME/Dropbox/Scripts
while true; do
    for i in *.sh; do
        # run scripts that don't end in ".done"
        if [[ -e $i && ! -e ${i}.done ]]; then
            # run the files inside Scripts
            source $i
            # rename the script when it's done so we don't run it again
            touch ${i}.done
        fi
    done
    sleep 10
done
popd

