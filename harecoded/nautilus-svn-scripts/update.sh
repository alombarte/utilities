#!/bin/bash
# Albert Lombarte <alombarte AT harecoded DOT com>

#RESPONSE=`date "+%Y-%b-%d_update".txt`
if [ $? -eq 0 ] ; then

    (
    echo "Updating $@"
    svn update "$@"
    echo "end."
    ) |
    zenity --text-info --title="Updating resource to latest revision" --width=600 --height=400
    #rm -f $RESPONSE
fi