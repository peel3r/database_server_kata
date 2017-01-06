## Database Server Tech Test

#Task
You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

#Outline
Techs used: Sinatra app, Ruby, Rspec

TDD approach taken writing a failing test then looking to write the code to pass that test. Started initilly with running a server at localhost:4000 then looked to save and finally return data

#How to use
  - Clone this repo and change into the directory created
  - Run bundle install in your command line
  - Run ruby 'app.rb' in your command line
  - In a browser of your choice go to http://localhost:4000


#Using the app
To save to the database
  - Visit http://localhost:4000
  - Fill in the top form with you key and value pair
  - Click 'Submit'
  - You will see a page displaying the key and its value
  - Press 'Back' on your brower to return to http://localhost:4000

To retrieve info back from the database
  - Visit http://localhost:4000
  - On the lower form type in the key you want to know the value for
  - Click 'Find value'
  - You will see a message displaying what the value of the key is
  - Press 'Back' on your brower to return to http://localhost:4000 and enter in further key/values or search more keys.
