# The Prancing Pages

This is a web builder project using Sinatra to generate web pages relating to Tolkien’s masterpieces.  Though the LOTR movies are referenced, the ‘Hobit’ movies will be excluded from this for personal reasons.

Current build status: Under development



## Getting Started

* Step 1:
You will need an API key from [The One API](https://the-one-api.dev/) this requires entering a valid email and registering by creating a password.  The key will be referenced in this code as:
```
ENV[“KEY”]
```
Therefore within your hidden .env file that you’ve used the dotenv gem to hide as per [these](https://www.rubydoc.info/gems/dotenv/2.0.0) instructions, you will assign this hash key as:
```
KEY=YOUR_PERSONAL_API_KEY_FROM_THE_ONE_API_HERE
```

* Step 2:
You will also need to set a password for the sessions hash within you .env file.  This password for your sessions hash is referenced in this code as:
```
ENV["SESSION_SECRET"]
```
Therefore, within your hidden .env file you need to assign the hash key as:
```
SESSION_SECRET=YOUR_SESSION_SECRET_PASSWORD
```

* Step 3:
You will need to populate your database with information contained in this repos seed file.  Within terminal inside VS code enter
```bash
rake db:seed
```
then you will need to start the Sinatra server, inside terminal within VS code enter
```bash
shotgun
```
The default url for this site is localhost:9393, so within a web browser inside the url bar type the following and press enter
```
http://localhost:9393
```
enjoy!

Outside Sources Referenced For Data
* [The One API (endpoint)](https://the-one-api.dev/v2/)



## Installation

* First
You will need developer software, I used Visual Studio Code.  Depending on your operating system you should follow these instructions:
[Windows](https://code.visualstudio.com/docs/setup/windows)
[macOS](https://code.visualstudio.com/docs/setup/mac)
[Linux](https://code.visualstudio.com/docs/setup/linux)

* Second
You will need a Ruby library on your machine.  Within terminal please follow the instructions found [here](https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/)

* Third
You will need to clone the repo for this software and pull it up in VS Code.  In your terminal please navigate to the folder you would like the files for this software to be and type the following:
```bash
git clone git@github.com:FluxOfPingIntegers/Phase2_Project.git
```
you will then need to switch to the project folder you just cloned.  In your terminal please enter:
```bash
cd phase2_project
```
Now it is time to fire up VS code.  Please enter the following within terminal:
```bash
code .
```
Finally
you are ready to proceed to the Getting Started section of this README

## Contribute
  This is a project I am building for school (and for fun) and I am not currently looking for contributors.  This may change in the future though!

## Author
-  Ryan Schleck – Flatiron student

## Acknowledgments

* The very supportive slack community at Flatiron

## Tech/Gems used
* Ruby
* All Ruby gems can be found in the Gemfile


## License
[MIT](https://choosealicense.com/licenses/mit/)