#!/usr/bin/env bash

echo "hello"

OUTPUT=index.html
LINK_PREFIX=https://github.com/mnezerka/blue-tabs/blob/master/
#LINK_PREFIX=https://github.com/mnezerka/blue-tabs/raw/master/

function song_dir() {
    song=$(echo $1 | cut -d "/" -f 2 | sed 's/_/ /g')

    echo "<li>${song^}" >> $OUTPUT
    echo "<ul>" >> $OUTPUT
    for f in $1/*; do
        if [ -d "$f" ]; then
            echo "WARN: dir inside song dir $f"
            return
        fi

        file=$(echo $f | cut -d "/" -f 3)

        echo "<li><a href=\"${LINK_PREFIX}${f}\">$file</a></li>" >> $OUTPUT
    done
    echo "</ul>" >> $OUTPUT
    echo "</li>" >> $OUTPUT
}


function category_dir() {
    echo "processing category dir $1"


    # uppercase first letter
    category=${1^}

    echo "<li>$category" >> $OUTPUT
    echo "<ul>" >> $OUTPUT
    for d in $1/*; do
        if [ -d "$d" ]; then
            song_dir "$d"
        fi
    done
    echo "</ul>" >> $OUTPUT
    echo "</li>" >> $OUTPUT
}

echo "list" > $OUTPUT

cat >$OUTPUT << EOL
<html>
  <head>
    <title>BlueTabs</title>
    <style>
        body {
            font-family: Arial;
        }

        ul {
            list-style-type: none
        }
    </style>
  </head>
<body>
<h1>Blue Tabs</h1>
<ul>
EOL

for d in *; do
    if [ -d $d ]; then
        category_dir "$d"
    fi
done

cat >>$OUTPUT << EOL
</ul>
</body>
</html>
EOL

