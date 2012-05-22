#!/bin/bash

EXEC_PATH=$(pwd)
ROOT_PATH=$(cd "$(dirname "$0")"; pwd)

cd $ROOT_PATH
PRJ_PATH_ISIS=isis-project
PRJ_REPO_ISIS="WebKit isis-project isis-browser isis-test db8"
GIT_HTTP_ISIS=https://github.com/isis-project

# Create project path of isis-project
if [ ! -d $PRJ_PATH_ISIS ]
then
    mkdir $PRJ_PATH_ISIS
fi

# Git clone projects of isis-project
cd $PRJ_PATH_ISIS
for ITEM in $PRJ_REPO_ISIS 
do
    git clone $GIT_HTTP_ISIS/$ITEM.git $ITEM
done

cd $EXEC_PATH
