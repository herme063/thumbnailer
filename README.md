# thumbnailer
a batch script to generate thumbnails in place

## Prerequisites
Make sure to [imagemagick](https://www.imagemagick.org/script/download.php) first with ffmpeg.

## Known limitations
* The gif are on the lower side quality-wise: we had issue generating .png files from ffmpeg and *-layers OptimizePlus* has no effect. 
* The image size is small to reduce the file size.
