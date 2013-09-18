#!/bin/bash

WORKSPACE='/Volumes/workspace' # this is where your code and template project live
cp -R "$WORKSPACE/templateProject" "$WORKSPACE/templateProject2" # clone directory
mv "$WORKSPACE/templateProject2" "$WORKSPACE/$1/.idea" # rename to .idea and move inside new project dir
mv "$WORKSPACE/$1/.idea/templateProject.iml" "$WORKSPACE/$1/.idea/$1.iml" # rename IML file
perl -e "s/templateProject/$1/g" -pi $(find $WORKSPACE/$1/.idea/ -type f) # replace strings in files w/new project name
