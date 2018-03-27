# capybara_pom_with_rspec

## Task
Implementation of capybara alongside rspec for testing. This was used on the [bbc registration form](https://account.bbc.com/signin)

## Requirements
* Ruby 5.1.5
* The selenium webdriver gem
* The rspec gem
* The capybara gem

## Installation
* `git clone` the link from [here](https://github.com/MoRUddin/capybara_pom_with_rspec)
* run the command `bundle` to install the required gems
* run the command `rspec` to run the tests.

## Progress
1) fully automated tests for logging into a BBC account with 4 cases:
* valid email and password
* valid email, invalid password
* invalid email, valid password
* invalid email, invalid password

2) fully automated the BBC registration process including creating a temporary email from [10minutemail](https://www.10minutemail.com/)

3) refactored relevant methods to relevant classes 
