#!/bin/bash

WORKSPACE='/Volumes/workspace'
cp -R "$WORKSPACE/templateProject" "$WORKSPACE/templateProject2"
mv "$WORKSPACE/templateProject2" "$WORKSPACE/$1/.idea"
mv "$WORKSPACE/$1/.idea/sb132.iml" "$WORKSPACE/$1/.idea/$1.iml"
perl -e "s/sb132/$1/g" -pi $(find $WORKSPACE/$1/.idea/ -type f)
