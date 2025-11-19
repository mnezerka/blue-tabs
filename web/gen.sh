#!/usr/bin/env bash

function song_dir() {

    local song_dir=$1
    local song=$(basename $song_dir)
    local song_webdir="$2/$song"
    local song_webdir_files="$song_webdir/files"

    echo "songdir=$song_dir song=$song songwebdir=$song_webdir swebdirfiles=$song_webdir_files"

    mkdir -p "$song_webdir_files"

    local index_path=$song_webdir/index.md

    cat >$index_path<<EOL
---
title: $song
---
EOL

    for f in $song_dir/*; do
        echo $f
        if [ -d "$f" ]; then
            echo "WARN: dir inside song dir $f"
            return
        fi
        cp "$f" "$song_webdir_files"
    done
}


function category_dir() {
    local category_dir=$1

    echo "processing category dir $category_dir"

    local category=$(echo $1 | cut -d "/" -f 2 | sed 's/_/ /g')

    # skip some categories
    if [[ "$category" =~ ^(web|own)$ ]]; then return; fi

    local category_webdir="content/${category}"
    mkdir -p $category_webdir

    # generate index from title and optional content in README
    local index_path=$category_webdir/_index.md
    cat >$index_path<<EOL
---
title: $category
---
EOL

    if [ -f "$category_dir/README.md" ]; then
      cat $category_dir/README.md >> "$index_path"
    fi

    for d in $category_dir/*; do
        if [ -d "$d" ]; then
            song_dir "$d" "$category_webdir"
        fi
    done
}

############################### main

for d in ../*; do
    if [ -d $d ]; then
        category_dir "$d"
    fi
done

