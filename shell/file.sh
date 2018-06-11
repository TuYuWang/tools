#!/bin/bash

#遍历文件夹下所有文件夹的内容，并输出到新txt
# echo '输入文件'
# read source


function getdir(){
    echo $1
    for file in $1/*
    do
    if test -f $file
    then
            echo $file
            arr=(${arr[*]} $file)
    else
            getdir $file
    fi
    done
}
getdir $1
echo  ${arr[@]}
cat ${arr[@]} > traget.txt