#!/bin/bash

choco install nuget.commandline
nuget install WiX.Toolset
# choco install wixtoolset

# Bundler EXE Installer skipped because of a configuration problem:
# java.lang.RuntimeException: Error: Failed to compare version null with 5.0..
# choco install innosetup

7z x -bd $JPACKAGE_ARCHIVE_NAME

choco install adoptopenjdk --version 11.0.2.9

echo 'export JAVA_HOME="/c/Program Files/AdoptOpenJDK/jdk-11.0.2+9"' >> ~/.profile
echo 'export PATH="/c/Program Files/AdoptOpenJDK/jdk-11.0.2+9/bin":$PATH' >> ~/.profile

