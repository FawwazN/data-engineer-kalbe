#!/bin/bash
path=/hdfs/data/data1
name_of_directory=data1
dir=$path/$name_of_directory
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market
if [ -d $dir ]; then
    echo "Direktori ${name_of_directory} ada!"
     cp $source_dir/$filename_excel $path
     echo "File berhasil dipindah!"
else
    echo "Direktori ${name_of_directory} tidak ada!"
    mkdir $dir
    exit 1
fi