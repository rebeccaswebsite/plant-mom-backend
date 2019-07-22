# Introduction
Plant Mom is an app to help you keep track of your houseplants and prevent them from dying!

As a user, you can add which plants you own to virtual rooms (such as ‘Living Room’, ‘Kitchen’ etc.) and view the specific plant care instructions for those plants.

You can also suggest improvements to the plant care instructions, to be reviewed by an admin. 

This is the first version of this app, which has more functionality currently in the works.

If you'd like to run the code from your own machine please follow the below instructions:

# Getting Started

This project has two repositories, one for the front end and one for the backend. Both will need to be started for the project to run on your machine. 

First clone this Github repository onto your machine using the terminal command 

    git clone <url here> 

You can find the necessary url on the right hand side of the Github repository. 

To install any gems, run

    bundle install

# Create Your Server

Navigate into the plant-mom-backend folder and run 

    rails db:migrate 

To set up your database. Next run

    rails db:seed

To populate your database with the all the plants and their information. Then,

    rails s 

To run the API needed for the page to load properly.

# Start up the Frontend
To open the app on your machine, go to https://github.com/rebeccaswebsite/plant-mom-frontend

Clone that repo and run 
	
	npm install
	npm start

You’re now all set up to look after your houseplants a little bit better. 

Thank you for checking out Plant Mom!

# Author

Rebecca Huseyin



