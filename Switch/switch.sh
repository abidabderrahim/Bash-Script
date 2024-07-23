#!/bin/bash

read -p "Enter name of car brand: " car

case $car in
  BMW | Mercedes | Audi | Rorshe)
    echo -n "${car} car factory in Germany ."
  ;;
  Toyota | Mazda | Mitsubushi | Subaru)
    echo -n "${car} car factory in Japon ."
  ;;
  *)
    echo -n "${car} I dont Now this car brand ."
  ;;
esac

echo ""

