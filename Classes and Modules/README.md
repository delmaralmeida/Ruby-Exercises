# **[Ruby Essential Training Part 2: Classes and Modules](https://www.linkedin.com/learning/ruby-essential-training-part-2-classes-and-modules)**

Exercises writen in ruby language by following [Kevin Skoglund's](https://www.linkedin.com/learning/instructors/kevin-skoglund) ruby essential training courses.

## Dice Roller
**File:** `dice_roller.rb`
- This exercise focus on managing a dice rolling program
- The user can roll the dice and chose the type ex: d4 d6 d8 d10 d12 d20
- Ex: typing "d6 d8" will roll two dice, 1d6 and 1d8
- When typing a non-existing dice set the program alerts the user
- The dice set is based on dice from TTRPG games

## Radio Manager
**File:** `radio_manager.rb`
- This exercise focus on working with class and instance methods
- This class is used to create radios, managing its volume and frequency
- When running the program, it will simply call the initializer and then some methods to change its volume and frequency values

## Birthdate Analysis
**File:** `birthdate_analysis.rb`
- This exercise returns information regarding a given brithdate
- The program asks for an input of year, month and day to output some information
- For the month input, a user can use a number or text. Ex: 01, 1, January.

## Secure Radio
**File:** `secure_radio.rb`
- This exercise simulates an encoded audio stream by encoding a string sample
- A new class, ShiftCipher, manages how to encode and decode a string
- And another one, SecureRadio, inherits from Radio and 'plays' an encoded version of audio_stream
- Running this program will display 3 encoded strings from AUDIO_SAMPLES

## Custom exception
**File:** `custom_exception.rb`
- A simple exercise to try out a custom exception with the Radio class from radio_manager
- The program creates a new radio and then changes it's volume 3 times, showing 2 errors related with the new exception created for the Radio class
