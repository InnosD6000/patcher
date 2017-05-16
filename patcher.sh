#!/bin/sh

# Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher
CUSTOM=$PATCHER_PATH/quarrion


# Clean up first
cd $ROM_TREE/build
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/LockClock
git clean -f -d && git reset --hard

cd $ROM_TREE

### Custom patches
patch -d build					-p1 -s -N --no-backup-if-mismatch < $CUSTOM/build-tag.patch
patch -d packages/apps/LockClock		-p1 -s -N --no-backup-if-mismatch < $CUSTOM/lockclock-wakelock.patch
