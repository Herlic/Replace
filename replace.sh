#!/bin/bash
echo '当前工作目录:' $1
echo '开始工作'
cd $1
for path in $(ls -R $1 | grep ":" );do
echo '当前修改目录:' ${path%%:*}
path_z=${path%%:*}
for file in $(ls $path_z);do
echo "perl -p -i -e \"s/$2/$3/g\"" $path_z/$file
perl -p -i -e "s/$2/$3/g" $path_z/$file
done
done
echo '结束工作'
