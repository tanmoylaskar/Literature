#!/bin/sh
cp $1 $1.backup
cat $1 | sed 's/\(\@ARTICLE{\)\([0-9]*\)\(GCNR\)\([.]*\)\([0-9]*\)\([.]*[0-9]*[a-z]*[A-Z]*\)/\1gcnr\5/g' > temp.txt
mv temp.txt $1
cp $1 $1.backup
cat $1 | sed 's/\(\@ARTICLE{\)\([0-9]*\)\(GCN\)\([.]*\)\([0-9]*\)\([.]*[0-9]*[a-z]*[A-Z]*\)/\1gcn\5/g' > temp.txt
mv temp.txt $1
