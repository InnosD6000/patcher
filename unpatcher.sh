#!/bin/sh

ROM_TREE=$PWD

# Clean up
cd $ROM_TREE/build
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/LockClock
git clean -f -d && git reset --hard
cd $ROM_TREE/system/core
git clean -f -d && git reset --hard
cd $ROM_TREE
