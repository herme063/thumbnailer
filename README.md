# thumbnailer
a batch script to generate thumbnails in place

## Prerequisites
Make sure to install [imagemagick](https://www.imagemagick.org/script/download.php) first with ffmpeg.

## Usage
Drop the script file in a folder containing videos, then run it. It will generate animated thumbnails.

## Known limitations
* The gif are on the lower side quality-wise: we had issue generating .png files from ffmpeg and *-layers OptimizePlus* has no effect. 
* The image size is small to reduce the file size.
* ffmpeg can be slow. The capture fps is set at *1 frame per minute.*
