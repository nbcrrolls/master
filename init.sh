#!/bin/bash
#
# clone all the subrepo
#



SubModule=`cat .gitignore`

remote=`git remote -v|awk '{print $2}'|head -n 1`
baseRemote=`dirname $remote`

for module in $SubModule;
do 
    echo "  Cloning $baseRemote/$module.git repository" 
    git clone $baseRemote/$module.git $modName
done


