#!/usr/bin/env bash
# This script assumes that ImageMagick is installed and the convert command is accessible via the $PATH variable

# Ensure that one argument has been passed in.
if [ ! "$#" -eq 1 ]
then
	echo -e "This script requires one argument.\\ne.g. iOS_icon_maker.sh app_icon.png"
	exit 1
fi

# Assign the argument to the path variable so it is easier to follow throughout the script.
path=$1

# Ensure that the path points to a valid file.
if [ ! -f "$path" ]
then
	echo "Path must point to a valid file."
	exit 1
fi

# This function takes in the dimension of the icon (it assumes the icon is a square) and the name of the file to save the icon to.
function createIconImage()
{
	iconDimension=$1
	iconName=$2

	convert "$path" -resize ${iconDimension}x${iconDimension}^ -gravity center -extent ${iconDimension}x${iconDimension} $iconName
}

# Create all the suggested icons for both the iPhone and iPad platforms to ensure the best appearance.
createIconImage 57 icon_iphone.png
createIconImage 114 icon_iphone@2x.png
createIconImage 29 icon_iphone_spotlight.png
createIconImage 58 icon_iphone_spotlight@2x.png
createIconImage 72 icon_ipad.png
createIconImage 144 icon_ipad@2x.png
createIconImage 50 icon_ipad_spotlight.png
createIconImage 100 icon_ipad_spotlight@2x.png
createIconImage 512 iTunesArtwork
createIconImage 1024 iTunesArtwork@2x
