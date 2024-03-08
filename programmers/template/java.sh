#!/bin/bash

curpath=$(dirname "$(realpath $0)")
cd "$curpath"

JAVA_FILE="ProgrammersMain.java"
# JAVA_FILE="Test.java"
CLASS_NAME="${JAVA_FILE:0:${#JAVA_FILE}-5}"
rm -rf ./*.class

javac $JAVA_FILE
java $CLASS_NAME


rm -rf ./*.class
