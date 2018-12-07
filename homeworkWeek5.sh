#!/bin/bash

#Recording length of word provided on command line

myWordLength=$@

for myWordLength in cakes cookies desserts ice\cream
do
       if [ $myWordLength = cookies ]
       then
            echo $myWordLength "is the same as cookies."
       else
            echo $myWordLength "is different than cookies."
       fi
done

# DB: Good! But you're not actually using the command-line arguments at all. They're
#     overwritten by the words you're looping over in your for loop. Also, you're testing
#     whether the words are identical, but not actually their lengths.