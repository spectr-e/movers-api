# MOVERS APP API

 This is a Ruby on Rails application for movers that uses Geocoder for location-based services, SendGrid for email notifications, and JWT for authentication and authorization.

## Deployment

This API has been hosted and deployed to render and can be accessed via the link below.

https://rails-lszl.onrender.com


 ## Prerequisites

-Ruby 2.7.2 or higher

-Rails 6.1.4 or higher

-PostgreSQL 9.5 or higher


## Features

- Users can sign up and log 

- Users can create, update, and delete their own moving jobs

- Users can view a list of all moving jobs, as well as filter and sort the list by various criteria

- Users can view the details of a specific moving job, including the address, estimated cost, and start/end time

- Only authenticated users can create, update, and delete moving jobs

- Only the user who created a moving job can edit or delete it

## Database Design (ERD)
![DatabaseDesign](https://res.cloudinary.com/dtyavz3qy/image/upload/v1682578245/Dabase_design_otdx5q.png)


## Installation

### Clone the project

```bash
  git clone https://github.com/spectr-e/movers-api
```

### Go to the project directory

```bash
  cd movers-api
```

### Install dependencies

```bash
  bundle install
  rails db:migrate
  rails db:seed
```

### Start the server

```bash
  rails s
```

## Acknowledgements

 - [Geocoder](https://github.com/alexreisner/geocoder)
 - [SendGrid](https://sendgrid.com/)
 - [JWT](https://jwt.io/)


## Configuration

### Geocoder:

This app uses Geocoder to get the latitude and longitude coordinates for a given address. You will need to set up an account with a Geocoding provider such as Google Maps or Mapbox, and then add the API key to the GEOCODER_API_KEY environment variable.

### Gmail:

This app uses SendGrid to send email notifications to users. You will need to create a Gmail account and add the access key to the GMAIL_APP_PASSWORD environment variable.

### JWT:

This app uses JWT for authentication and authorization. You will need to generate a secret key and add it to the JWT_SECRET_KEY environment variable.


## Authors
This API is was authored through the collective effort of: 

- [Josiah Nganga](https://github.com/spectr-e)
- [Sophia Ndalo](https://github.com/sophie-ndalo)
- [David Ngacha](https://github.com/ngachadavid)
- [Charlotte Karimi](http://github.com/charlotte283)


## Contributing

Contributions are always welcome!
