#!/bin/sh

rm -r ./src
mkdir -p src/

for dir in win/*/ ; do
    dir=$(basename $dir)
    mkdir -p tmp/$dir/
    for curs in win/$dir/* ; do
        curs=$(basename $curs)
        #This was used to zero out a couple bytes in the headers of the original cursors so they would convert
        #printf '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' | dd of=win/$dir/$curs bs=1 seek=$((0x10)) conv=notrunc status=none
        win2xcur win/$dir/$curs -o tmp/$dir/
    done
    for curs in tmp/$dir/* ; do
        curs=$(basename $curs)
        mkdir -p tmp/$dir/$curs-src/
        cd tmp/$dir/$curs-src/
        xcur2png ../$curs > /dev/null 2>&1
        mv $curs.conf $curs.xcg
        rm ../$curs
        cd ../../..
        mv tmp/$dir/$curs-src/ tmp/$dir/$curs/
        echo "$dir/$curs converted"
    done
    mv tmp/$dir/ src/$dir/
done

rm -r ./tmp
