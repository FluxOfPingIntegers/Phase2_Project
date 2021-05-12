The Prancing Pages




This is a web builder project using Sinatra to generate web pages relating to Tolkien’s masterpieces.  Though the LOTR movies are referenced, the ‘Hobit’ movies will be excluded from this for personal reasons.

Current build status: Under development



Getting Started

  Step 1:
You will need an API key from The One API this requires entering a valid email and registering by creating a password.  The key will be referenced in this code as:
‘’’
ENV[“KEY”]
‘’’
Therefore within your hidden .env file you that you’ve used the dotenv gem to hide, you will assign this hash key as:
‘’’
KEY=YOUR_PERSONAL_API_KEY_FROM_THE_ONE_API_HERE
‘’’



Outside Sources Referenced For Data
    • The One API (endpoint) - https://the-one-api.dev/v2/.



Installation

First
You will need developer software, I used Visual Studio Code.  Depending on your operating system you should follow these instructions:
Windows:  https://code.visualstudio.com/docs/setup/windows
macOS:  https://code.visualstudio.com/docs/setup/mac
Linux:  https://code.visualstudio.com/docs/setup/linux

Second
You will need a Ruby library on your machine.  Within terminal please follow the instructions found here:  https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/

Third
You will need to clone the repo for this software and pull it up in VS Code.  In your terminal please navigate to the folder you would like the files for this software to be and type the following:
git clone git@github.com:FluxOfPingIntegers/Phase2_Project.git
cd phase2_project
code .

Finally
you are ready to proceed to the Getting Started section of this README

Contribute
  This is a project I am building for school (and for fun) and I am not currently looking for contributors.  This may change in the future though!

Author
-  Ryan Schleck – Flatiron student

Acknowledgments

    • The very supportive slack community at Flatiron

Tech/Gems used



License
- MIT License -

Copyright 2021 Anyone
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.