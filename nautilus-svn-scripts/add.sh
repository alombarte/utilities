#!/bin/bash
# Albert Lombarte <alombarte AT harecoded DOT com>

#RESPONSE=`date "+%Y-%b-%d_add".txt`

if [ $? -eq 0 ] ; then

    (
    svn add "$@"
    echo "end."
    ) |
    zenity --text-info --title="Adding files to repository" --width=600 --height=400
    #rm -f $RESPONSE
fi