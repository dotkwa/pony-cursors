#!/bin/sh

zero() {
    dir=$1
}

convert_source() {
    dir=$1
    if [ ! -d "win/$dir" ]; then
        echo "pony-cursors: win/$dir does not exist."
        return
    fi
    mkdir -p tmp/$dir/
    for curs in win/$dir/* ; do
        curs=$(basename $curs)
        #This is used to zero out a couple bytes in the headers of the original cursors so they would convert
        if [ "$ZERO" = "yes" ]; then
            printf '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' | dd of=win/$dir/$curs bs=1 seek=$((0x10)) conv=notrunc status=none
        fi
        win2xcur win/$dir/$curs -o tmp/$dir/
    done
    for curs in tmp/$dir/* ; do
        curs=$(basename $curs)
        mkdir -p src/$dir/$curs/
        cd src/$dir/$curs/
        xcur2png ../../../tmp/$dir/$curs > /dev/null 2>&1
        mv $curs.conf $curs.xcg
        cd ../../../
        echo "pony-cursors: $dir/$curs converted"
    done
}

rm -rf ./src

ALL=yes
ZERO=no

while [ $# -gt 0 ]; do
    key="$1"
    case $key in
        -z|--zero)
            ZERO=yes
            shift
            ;;
        *)
            ALL=no
            convert_source $key
            shift
            ;;
    esac
done

if [ "$ALL" = "yes" ]; then
    for dir in win/*/ ; do
        dir=$(basename $dir)
        convert_source $dir
    done
fi

rm -r ./tmp
