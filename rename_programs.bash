#!/bin/bash
cd programs
for filename in *;
do 
    basename $filename .py > test1 #redirects the output to test1
    input="/home/vishnu/mars_task_01/programs/test1"
    while IFS= read -r line #this while loops throught the contents of the file line by line
    do
        mv $filename $line.c 
    done < "$input"
done
rm  -r test1 #delete the file which was created
cd mars_task_01