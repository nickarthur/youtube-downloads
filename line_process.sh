#!/bin/sh

#create json object from a youtube-dl output file supplied as command-line arg
#
#usage:
#youtube-dl -g http://www.youtube.com/watch?v=RfyFI-4ZsaE --get-title --get-id --get-thumbnail --get-duration > out && line_process.sh out
#--get-title --get-id --get-thumbnail --get-duration

i=0;

echo "{"

while IFS= read -r line; do

  if (($i == 0))
  then
    echo "\"title\" :  \"$line\","
  fi

  if (($i == 1))
  then
    echo "\"id\" :  \"$line\","
  fi

  if (($i == 2))
  then
    echo "\"stream_url\" :  \"$line\","
  fi

  if (($i == 3))
  then
    echo "\"thumbnail\" :  \"$line\","
  fi

  if (($i == 4))
  then
    echo "\"duration\" :  \"$line\","
  fi

  if (($i == 5))
  then
    echo "\"url\" :  \"$line\""
  fi

  ((i++))
done < "$1"

echo "}\n"

