Overview
========
Since I cannot use Photoshop to save my life I've always had difficultly creating app icons for my personal projects. After discovering [ImageMagick][ImageMagick] while solving a problem at work I realized that I could use it to take any image and generate all the necessary app icons via a script.

Installation
============
This script assumes that [ImageMagick][ImageMagick] is installed and is accessible via the $PATH variable. If you are not comfortable compiling ImageMagick from scratch you can use a package manager (i.e. [MacPorts][MacPorts]).

Once you've got ImageMagick installed you simply run the script and provide the name of the image as the first parameter: i.e. iOS\_icon\_maker app_icon.png

For best results I'd recommend you use an image that is 1024x1024 or 512x512 but any size image will work.

Currently the cropping region of the image is centred around the dead centre of the image. I've toyed with the idea of allowing you to pass in the cropping region but haven't found an ideal way to implement it yet.

[ImageMagick]: http://www.imagemagick.org/
[MacPorts]: http://www.macports.org/
