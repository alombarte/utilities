#!/bin/bash
# Albert Lombarte <alombarte AT harecoded DOT com>

#RESPONSE=`date "+%Y-%b-%d".txt`

if [ $? -eq 0 ] ; then

    (
    svn status "$@"
    echo "end."
    ) |
    zenity --text-info --title="Checking status..." --width=600 --height=400
    #rm -f $RESPONSE
fi