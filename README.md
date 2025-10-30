# Lecture 8 | GDE

> Name: Sidharth Suresh

> This project was built using Godot since Unity was giving me a hard time. That doesn't mean there isn't a build. I used `Godot 4.5.1`

# Road Fighter

A game where the player drives in the top down mode. This includes fuel meter, score and speed.

# Explanations

## Observer patterns

The health bar will be listening for the signal from `Car` class to see the fuel.

## Event patters

The car stops once the fuel is empty.