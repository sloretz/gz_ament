#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

PARENT_DIR="$(cd $DIR/.. && pwd)"
PKG_XML_DIR="$(cd $DIR/../package.xml && pwd)"
echo "Package xml dir", $PKG_XML_DIR

# Find all ament workspaces
WS_LIST="$(find $PARENT_DIR -name 'ws_*')"
echo "Found workspaces:" $WS_LIST

# Find all package xmls that could be sym-linked
PKG_XML_LIST="$(find $PKG_XML_DIR -name '*.xml' -not -name 'package.xml')"
PKG_LIST="$(for PKG_XML in $PKG_XML_LIST; do echo $(basename $PKG_XML | sed s/.xml//); done)"
echo "Found packages:" $PKG_LIST

function make_symlinks_in_ws {
  WS_ABS_PATH=$1
  echo "Making symlinks in workspace" $(basename $WS_ABS_PATH)
  pushd $WS_ABS_PATH >& /dev/null

  for PKG in $PKG_LIST ; do
    package_path=$WS_ABS_PATH/src/$PKG
    if [ -d $package_path ]
    then
      if [[ ! -e $package_path/package.xml ]]
      then
        # Make a directory for package xml and copy it into the workspace
        #  1. This means I only have to mount the workspace as a docker volume
        #  2. It allows customizing the package xml per workspace
        mkdir -p _package.xml
        cp $PKG_XML_DIR/$PKG.xml _package.xml/$PKG.xml

        # Make a symlink to the package xml
        pushd "$package_path" >& /dev/null
        relative_xml_path=$(realpath --relative-to="$(pwd)" "$WS_ABS_PATH/_package.xml/$PKG.xml")
        echo "    " $PKG "->" $relative_xml_path
        ln -fTs $relative_xml_path package.xml || true
        popd >& /dev/null
      fi
    fi
  done

  popd >& /dev/null
}

for ws in $WS_LIST; do
  make_symlinks_in_ws $ws
done
