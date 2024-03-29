#!/usr/bin/env bash

# fail if anything goes wrong

set -euo pipefail

# This script is used to write custom configuration to the configuration file
# of wine-tkg-git.

WINE_TKG_CUSTOMIZATION_CFG_PATH=./wine-tkg-git/wine-tkg-git/customization.cfg
# tag = first argument
BUILD_TAG=$1


# _LOCAL_PRESET="" -> _LOCAL_PRESET="none"
sed -i 's/_LOCAL_PRESET=""/_LOCAL_PRESET="none"/' $WINE_TKG_CUSTOMIZATION_CFG_PATH
# _staging_version="" -> _staging_version="$BUILD_TAG"
sed -i "s/_staging_version=\"\"/_staging_version=\"$BUILD_TAG\"/" $WINE_TKG_CUSTOMIZATION_CFG_PATH
# _wayland_driver="false" -> _wayland_driver="true"
sed -i 's/_wayland_driver="false"/_wayland_driver="true"/' $WINE_TKG_CUSTOMIZATION_CFG_PATH
# _proton_fs_hack="false" -> _proton_fs_hack="true"
sed -i 's/_proton_fs_hack="false"/_proton_fs_hack="true"/' $WINE_TKG_CUSTOMIZATION_CFG_PATH
# _win10_default="false" -> _win10_default="true"
sed -i 's/_win10_default="false"/_win10_default="true"/' $WINE_TKG_CUSTOMIZATION_CFG_PATH
# _protonify="false" -> _protonify="true"
sed -i 's/_protonify="false"/_protonify="true"/' $WINE_TKG_CUSTOMIZATION_CFG_PATH
