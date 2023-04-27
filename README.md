## MOVERS APP

 This is a Ruby on Rails application for movers that uses Geocoder for location-based services, SendGrid for email notifications, and JWT for authentication and authorization.

 ## Prerequisites

-Ruby 2.7.2 or higher

-Rails 6.1.4 or higher

-PostgreSQL 9.5 or higher


## Features

-Users can sign up and log 

-Users can create, update, and delete their own moving jobs

-Users can view a list of all moving jobs, as well as filter and sort the list by various criteria

-Users can view the details of a specific moving job, including the address, estimated cost, and start/end time

-Only authenticated users can create, update, and delete moving jobs

-Only the user who created a moving job can edit or delete it

## Database design
![DatabaseDesign](/images/Dabase_design.png)


## Installation


Clone this repository

Run 
```bash
bundle install
```
 to install dependencies
Setup the database by running 

```bash
rails db:create 
 rails db:migrate
 ```

Rename the .env.example file to .env and fill in the necessary values for the environment variable
    
## Run Locally

Clone the project

```bash
  git clone https://github.com/spectr-e/movers-api
```

Go to the project directory

```bash
  cd movers-api
```

Install dependencies

```bash
  bundle install
  rails db:migrate
  rails db:seed
```

Start the server

```bash
  rails s
```

## Acknowledgements

 - [Geocoder](https://github.com/alexreisner/geocoder)
 - [SendGrid](https://sendgrid.com/)
 - [JWT](https://jwt.io/)


## Configuration

Geocoder:

This app uses Geocoder to get the latitude and longitude coordinates for a given address. You will need to set up an account with a Geocoding provider such as Google Maps or Mapbox, and then add the API key to the GEOCODER_API_KEY environment variable.

SendGrid:

This app uses SendGrid to send email notifications to users. You will need to create a SendGrid account and add the API key to the SENDGRID_API_KEY environment variable.

JWT:

This app uses JWT for authentication and authorization. You will need to generate a secret key and add it to the JWT_SECRET_KEY environment variable.


## Authors
This API is was authored through the collective effor of: 

- [Sophia Ndalo](https://github.com/sophie-ndalo)
- [David Ngacha](https://github.com/ngachadavid)
- [Charlotte Karimi](http://github.com/charlotte283)


## Badges

Add badges from somewhere like: [shields.io](https://shields.io/)

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

## Color Reference

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Example Color | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) #0a192f |
| Example Color | ![#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) #f8f8f8 |
| Example Color | ![#00b48a](https://via.placeholder.com/10/00b48a?text=+) #00b48a |
| Example Color | ![#00d1a0](https://via.placeholder.com/10/00b48a?text=+) #00d1a0 |


## Acknowledgements

 - [Geocoder](https://github.com/alexreisner/geocoder)
 - [SendGrid](https://sendgrid.com/)
 - [JWT](https://jwt.io/)


## Deployment

This api has been hosted and deployes to render and can be accessed via the link below.

- [Movers app](rails-lszl.onrender.com)


## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.









