# Oystercard Challenge
### Makers Academy Week No. 2

[![Build Status](https://travis-ci.org/KatHicks/oystercard.svg?branch=master)](https://travis-ci.org/KatHicks/oystercard) [![Coverage Status](https://coveralls.io/repos/github/KatHicks/oystercard/badge.svg?branch=master)](https://coveralls.io/github/KatHicks/oystercard?branch=master) [![Code Climate](https://codeclimate.com/github/KatHicks/oystercard/badges/gpa.svg)](https://codeclimate.com/github/KatHicks/oystercard)

### Instructions

We worked through the challenges throughout the week in rotating pairs. Below are the user stories that this project was intended to satisfy:

```
In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money
As a customer
I don't want to put too much money on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```

### Objectives

* Are you having fun?
* Are you a better developer than you were yesterday?
* **Can you use object-oriented design principles to write better code?**

### Using my application

* Download the source code using `$ git clone`
* Within the command line, type the following commands to interact with the programme:

```
2.3.0 :001 > require './lib/station.rb'
 => true
2.3.0 :002 > require './lib/journey.rb'
 => true
2.3.0 :003 > require './lib/journeylog.rb'
 => true
2.3.0 :004 > require './lib/oystercard.rb'
 => true
2.3.0 :005 > my_card = Oystercard.new
 => #<Oystercard:0x007ff8da12f8d8 @balance=0, @journey_log=#<JourneyLog:0x007ff8da12f8b0 @journey_history=[], @current_journey=nil>>
2.3.0 :006 > my_card.balance
 => 0
2.3.0 :007 > my_card.top_up(30)
 => 30
2.3.0 :008 > my_card.balance
 => 30
```

### Running the tests

* Within the root of the directory, run `$ rspec` to run the tests and see the formatted documentation in the command line

### Dependencies

* Application written in **Ruby 2.3.0**
* Tests written in **RSpec**

### Approach

* Tried to extend my OOD approaches this week - particularly around dependency injection

### Reflections



### Ideas for extension



### Collaborators

Shereen Finney, Ben Kielty, Sam Mckay, Mitchell Bayer-Goldman, Edyta Wrobel
