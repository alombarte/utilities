#!/bin/bash
# Albert Lombarte <alombarte AT harecoded DOT com>

#RESPONSE=`date "+%Y-%b-%d_commit".txt`
MESSAGE=`zenity --entry --title="Commiting svn changes" --text="Specify log message:" --width=500 2>&1`

if [ $? -eq 0 ] ; then

    (
    echo "Commiting files:$@"
    svn commit -m "$MESSAGE" "$@"
    echo "end."
    ) |
    zenity --text-info --title="SVN commit $1" --width=600 --height=400
    #rm -f $RESPONSE
fi