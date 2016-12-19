#!/bin/sh
#echo $#   arguments...
#
#make an array of objects
echo "["

# instead of looping over command-line args let read input args from a file
# for arg
while IFS= read -r arg;
do
  #youtube-dl -g http://www.youtube.com/watch?v=${arg} --get-title --get-id --get-thumbnail --get-duration > out_file && line_process.sh out_file
  youtube-dl -g ${arg} --get-title --get-id --get-thumbnail --get-duration --no-warnings --quiet --simulate > out_file
  echo $arg >> out_file
  line_process.sh out_file


# put comma after each object but will need to manually remove last comma
# had trouble with shell script redirecting and it lead to this sloppy solution

    echo ","

done

echo "]"
