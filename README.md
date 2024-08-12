# My Little Pony:Friendship is Magic X Cursors

This is port of a set of MLPFiM cursors made for windows to X cursor format, [originally created by Damien Allen.](https://www.deviantart.com/sullindir)

The cursors that are included:

- [Applejack](https://www.deviantart.com/sullindir/art/Applejack-Cursor-Set-278956284)
- [Derpy Hooves](https://www.deviantart.com/sullindir/art/Ditzy-Doo-Cursor-Set-268731618)
- [Discord](https://www.deviantart.com/sullindir/art/Discord-Cursor-Set-330885490)
- [Fluttershy](https://www.deviantart.com/sullindir/art/Fluttershy-Cursor-Set-267274999)
- [Future Twilight Sparkle](https://www.deviantart.com/sullindir/art/Future-Twilight-Cursor-291054631) (never completed)
- [Octavia](https://www.deviantart.com/sullindir/art/Octavia-Cursor-Set-319260648)
- [Pinkie Pie](https://www.deviantart.com/sullindir/art/Pinkie-Pie-Cursor-Set-263252229)
- [Princess Celestia](https://www.deviantart.com/sullindir/art/Princess-Celestia-Cursor-Normal-Select-275519944) (never completed)
- [Princess Luna](https://www.deviantart.com/sullindir/art/Princess-Luna-Cursor-Set-321959433)
- [Queen Chrysalis](https://www.deviantart.com/sullindir/art/Queen-Chrysalis-Cursor-Set-328648816)
- [Rainbow Dash](https://www.deviantart.com/sullindir/art/Rainbow-Dash-Cursor-Set-Standard-Orientation-287789499)
- [Rainbow Dash (Mirrored)](https://www.deviantart.com/sullindir/art/Rainbow-Dash-Cursor-Set-276556370)
- [Rarity](https://www.deviantart.com/sullindir/art/Rarity-Cursor-Set-272432611)
- [Twilight Sparkle](https://www.deviantart.com/sullindir/art/Twilight-Sparkle-Cursor-Set-269952089)
- [Vinyl Scratch](https://www.deviantart.com/sullindir/art/Vinyl-Scratch-Cursor-Set-304965988)

## Building Cursors

#### Prerequesites

- xcursorgen

Install the prerequisites, then open a terminal in this directory and run `./build.sh`.

You can specify which cursors you want to build, and adding `-c` will compress each cursor:

```bash
./build.sh -c Fluttershy Applejack Pinkie-Pie
```

Omitting cursor names will build all cursors by default.

### Rebuilding source files

#### Prerequesites

- win2xcur
- xcur2png

If you ever need to rebuild the src files, run `./build-src.sh`

## Disclaimer

My Little Pony:Friendship is Magic is the property of Hasbro.
