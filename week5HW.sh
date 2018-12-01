#!/bin/bash

#Guessing  which dessert is my favorite

for Dessert in cakes cookies cupcakes cinnamon\buns
do
     if [ $Dessert = cupcakes ]
     then
          echo "Congratulations!" $Dessert "are my favorite dessert."
     else
          echo $Dessert "are not my favorite dessert."
     fi
done
