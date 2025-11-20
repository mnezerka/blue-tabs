#!/usr/bin/env bash

GH_PRFIX="https://github.com/mnezerka/blue-tabs/blob/master/"

function header() {
cat <<EOF
<html>
    <head>
        <title>BlueTabs</title>
        <link rel=stylesheet href=global.css>
    </head>
    <body>
        <h1>BlueTabs</h1>

        <p>
            This is my personal collection of tablatures and sheet music, which I make freely
            available for anyone to use. Please note that I cannot guarantee their accuracy
            or completeness. Some of the pieces are unfinished for various reasons, such as
            lack of motivation, knowledge, or skills. Feedback is always welcome at
            michal.nezerka@gmail.com .
        </p>

        <table>
            <tbody>
EOF
}

function footer() {
cat <<EOF
            </tbody>
        </table>
    </body>
</html>
EOF
}

############################### main

header

cat_last=""
song_last=""

for cat_dir in *; do

    # skip non-directories
    if [ ! -d $cat_dir ]; then continue; fi

    echo "processing category dir $cat_dir" >&2

    cat=$(echo $cat_dir | cut -d "/" -f 2 | sed 's/_/ /g')

    # skip some categories
    if [[ "$cat" =~ ^(web|own)$ ]]; then continue; fi

    # loop through all songs
    for song_dir in $cat_dir/*; do
        if [ ! -d "$song_dir" ]; then continue; fi

        song=$(basename $song_dir)

        # loop through song files

        for song_file_path in $song_dir/*; do

            if [ -d "$f" ]; then
                echo "WARN: dir inside song dir $f" >&2
                continue
            fi

            if [ "$cat" != "$cat_last" ]; then
                echo "<tr class=\"category\">"
                echo "  <td colspan=\"3\">$cat</td>"
                echo "</tr>"
            fi

            html_song=$( [ "$song" = "$song_last" ] && echo "" || echo $song )
            html_song="${html_song//_/ }"
            html_file=$( basename $song_file_path )
            html_url="${GH_PRFIX}/${song_file_path}?raw=true"
            echo "<tr>"
            echo "  <td class=\"song-name\">$html_song</td>"
            echo "  <td class=\"song-file\">$html_file</td>"
            echo "  <td class=\"song-download\"><a href="$html_url">download</a></td>"
            echo "</tr>"

            song_last=$song
            cat_last=$cat

        done
    done
done

footer
