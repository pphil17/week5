#!/bin/bash

#Recording length of word provided on command line

myWordLength=$@

for myWordLength in cakes cookies desserts ice\cream
do
       if [ $myWordLength = cookies ]
       then
            echo $myWordLength "is the same length as cookies."
       else
            echo $myWordLength "is a different length than cookies."
       fi
done
