#!/bin/bash

# Modify this
default_template_location='/home/alex/.default_cpp/'
new_project_location='/home/alex/Desktop/'

if [ -z $1 ]; then
	echo 'No name for project'
	exit 0
fi

if [ ! -d $default_template_location ]; then
  echo "Default directory doesn't exist. Check settings in script."
  return
fi

name=$1
old_dir=$default_template_location
new_dir=$new_project_location$name

# echo $old_dir
# echo $new_dir

cp -r $old_dir $new_dir
cd $new_dir

rename 's/default/'$name'/g' *
sed -i 's/default/'$name'/g' *

codeblocks $name.cbp >/dev/null 2>&1 &
