#!/bin/sh

if ! command -v xcursorgen > /dev/null 2>&1; then
    echo "pony-cursors: xcursorgen is required to build cursors"
    exit 1
fi

convert_cursor() {
    dir=$1
    if [ ! -d "src/$dir" ]; then
        echo "pony-cursors: src/$dir does not exist."
        return
    fi
    mkdir -p out/MLPFiM-$dir/cursors/
    printf "[Icon Theme]\nName=mlpfim-$dir\nComment=A my-little-pony cursor theme created by Damien Allen" > out/MLPFiM-$dir/index.theme
    cd out/MLPFiM-$dir/cursors/
    for curs in ../../../src/$dir/*/ ; do
        curs=$(basename $curs)
        case $curs in
            "normal-select")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              default
                ln -s -r default arrow
                ln -s -r default left_ptr
                ln -s -r default top_left_arrow
                ;;
            "text-select")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              xterm
                ln -s -r xterm text
                ln -s -r xterm ibeam
                ;;
            "link-select")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              pointer
                ln -s -r pointer hand1
                ln -s -r pointer hand2
                ln -s -r pointer pointing_hand
                ln -s -r pointer alias
                ln -s -r pointer dnd-link
                ln -s -r pointer 9d800788f1b08800ae810202380a0822
                ln -s -r pointer e29285e634086352946a0e7090d73106
                ln -s -r pointer 3085a0e285430894940527032f8b26df
                ln -s -r pointer 640fb0e74195791501fd1ed57b41487f
                ln -s -r pointer a2a266d0498c3104214a47bd64ab0fc8
                ;;
            "alternate-select")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              right_ptr
                ln -s -r right_ptr draft_large
                ln -s -r right_ptr draft_small
                ln -s -r right_ptr copy
                ln -s -r right_ptr dnd-copy
                ln -s -r right_ptr 1081e37283d90000800003c07f3ef6bf
                ln -s -r right_ptr 6407b0e94181790501fd1e167b474872
                ln -s -r right_ptr b66166c04f8c3109214a4fbd64a50fc8
                ;;
            "precision-select")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              crosshair
                ln -s -r crosshair cross
                ln -s -r crosshair cross_reverse
                ln -s -r crosshair diamond_cross
                ln -s -r crosshair tcross
                ln -s -r crosshair color-picker
                ln -s -r crosshair dotbox
                ln -s -r crosshair dot_box_mask
                ln -s -r crosshair draped_box
                ln -s -r crosshair icon
                ln -s -r crosshair target
                ln -s -r crosshair plus
                ln -s -r crosshair cell
                ;;
            "help-select")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              question_arrow
                ln -s -r question_arrow help
                ln -s -r question_arrow left_ptr_help
                ln -s -r question_arrow whats_this
                ln -s -r question_arrow dnd-ask
                ln -s -r question_arrow context-menu
                ln -s -r question_arrow 5c6cd98b3f3ebcb1f9c7f1c204630408
                ln -s -r question_arrow d9ce0ab605698f320427677b458ad60b
                ;;
            "handwriting")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              pencil
                ln -s -r pencil draft
                ;;
            "move")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              move
                ln -s -r move grab
                ln -s -r move openhand
                ln -s -r move grabbing
                ln -s -r move pointer_move
                ln -s -r move dnd-move
                ln -s -r move closedhand
                ln -s -r move dnd-none
                ln -s -r move size_all
                ln -s -r move all-scroll
                ln -s -r move fleur
                ;;
            "working-in-background")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              left_ptr_watch
                ln -s -r left_ptr_watch progress
                ln -s -r left_ptr_watch 00000000000000020006000e7e9ffc3f
                ln -s -r left_ptr_watch 08e8e1c95fe2fc01f976f1e063a24ccd
                ln -s -r left_ptr_watch 3ecb610c1bf2410f44200f48c40d3599
                ;;
            "busy")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              wait
                ln -s -r wait watch
                ;;
            "unavailable")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              forbidden
                ln -s -r forbidden circle
                ln -s -r forbidden crossed_circle
                ln -s -r forbidden not-allowed
                ln -s -r forbidden no-drop
                ln -s -r forbidden dnd_no_drop
                ln -s -r forbidden X_cursor
                ln -s -r forbidden x-cursor
                ln -s -r forbidden 03b6e0fcb3499374a867c041f52298f0
                ;;
            "horizontal-resize")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              sb_h_double_arrow
                ln -s -r sb_h_double_arrow e-resize
                ln -s -r sb_h_double_arrow w-resize
                ln -s -r sb_h_double_arrow ew-resize
                ln -s -r sb_h_double_arrow col-resize
                ln -s -r sb_h_double_arrow h_double_arrow
                ln -s -r sb_h_double_arrow size-hor
                ln -s -r sb_h_double_arrow size_hor
                ln -s -r sb_h_double_arrow split_h
                ln -s -r sb_h_double_arrow left_side
                ln -s -r sb_h_double_arrow right_side
                ln -s -r sb_h_double_arrow 028006030e0e7ebffc7f7070c0600140
                ln -s -r sb_h_double_arrow 14fef782d02440884392942c1120523
                ;;
            "vertical-resize")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              sb_v_double_arrow
                ln -s -r sb_v_double_arrow n-resize
                ln -s -r sb_v_double_arrow s-resize
                ln -s -r sb_v_double_arrow ns-resize
                ln -s -r sb_v_double_arrow row-resize
                ln -s -r sb_v_double_arrow v_double_arrow
                ln -s -r sb_v_double_arrow size-ver
                ln -s -r sb_v_double_arrow size_ver
                ln -s -r sb_v_double_arrow split_v
                ln -s -r sb_v_double_arrow double_arrow
                ln -s -r sb_v_double_arrow top_side
                ln -s -r sb_v_double_arrow bottom_side
                ln -s -r sb_v_double_arrow bottom_tee
                ln -s -r sb_v_double_arrow 00008160000006810000408080010102
                ln -s -r sb_v_double_arrow 2870a09082c103050810ffdffffe0204
                ;;
            "diagonal-resize-1")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              bottom_right_corner
                ln -s -r bottom_right_corner top_left_corner
                ln -s -r bottom_right_corner nw-resize
                ln -s -r bottom_right_corner se-resize
                ln -s -r bottom_right_corner nwse-resize
                ln -s -r bottom_right_corner size_fdiag
                ln -s -r bottom_right_corner bd_double_arrow
                ln -s -r bottom_right_corner ul_angle
                ln -s -r bottom_right_corner lr_angle
                ln -s -r bottom_right_corner c7088f0f3e6c8088236ef8e1e3e70000
                ;;
            "diagonal-resize-2")
                xcursorgen -p ../../../src/$dir/$curs/ \
                              ../../../src/$dir/$curs/$curs.xcg \
                              bottom_left_corner
                ln -s -r bottom_right_corner top_right_corner
                ln -s -r bottom_right_corner ne-resize
                ln -s -r bottom_right_corner sw-resize
                ln -s -r bottom_right_corner nesw-resize
                ln -s -r bottom_right_corner size_bdiag
                ln -s -r bottom_right_corner fd_double_arrow
                ln -s -r bottom_right_corner ur_angle
                ln -s -r bottom_right_corner ll_angle
                ln -s -r bottom_right_corner fcf1c3c7cd4491d801f1e1c78f100000
                ;;
            *)
                echo "pony-cursors: $dir/$curs is not a recognized cursor"
                ;;
        esac
    done
    echo "pony-cursors: $dir generated"
    cd ../../../
}

rm -rf ./out

ALL=yes
COMPRESS=no

while [ $# -gt 0 ]; do
    key="$1"
    case $key in
        -c|--compress)
            COMPRESS=yes
            shift
            ;;
        *)
            ALL=no
            convert_cursor $key
            shift
            ;;
    esac
done

if [ "$ALL" = "yes" ]; then
    for dir in src/*/ ; do
        dir=$(basename $dir)
        convert_cursor $dir
    done
fi

if [ "$COMPRESS" = "yes" ]; then
    if [ "$ALL" = "yes" ]; then
        cd out/
        tar -cJf MLPFiM-all.tar.xz *
        cd ../
    fi

    for dir in out/*/ ; do
        dir=$(basename $dir)
        tar -C out -cJf out/$dir.tar.xz $dir/
        echo "pony-cursors: $dir compressed"
    done
fi
