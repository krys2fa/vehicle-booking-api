# Vehicle Booking API

> This is a Ruby on Rails API built to be consumed by any front-end application for the purposes of booking vehicles.


## Built With

- Ruby v2.7.0
- Ruby on Rails 6.0.3.4

## API Documentation
This is version one (V1) for this API. The base URL for all the endpoints is `https://vehicle-booking-api.herokuapp.com/v1/`
### Login
This API endpoint is used for logging in a user into the system.
#### Endpoint
`https://vehicle-booking-api.herokuapp.com/v1/login`
#### Sample Request
````
curl -X POST \
  https://vehicle-booking-api.herokuapp.com/v1/login \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'postman-token: e329987e-2991-892f-e6dc-0af1957f4679' \
  -d 'username=admin&password=password'
````
#### Sample Response
````
{
    "user": {
        "id": 1,
        "username": "admin",
        "password_digest": "$2a$12$pljN0EuO4Ui/FoKdVfgBhuXkrOEZSTSAHx/KKN8kOUk35IqGm7lwq",
        "created_at": "2020-11-01T12:48:45.667Z",
        "updated_at": "2020-11-01T12:48:45.667Z"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.oT7kSePnYs7eVIsRIzIi0UEC7XBclsrO3qrnXwic8Zg"
}
````

### Register
This API endpoint is used for registering new users to the system.
#### Endpoint
`https://vehicle-booking-api.herokuapp.com/v1/users`
#### Sample Request
````
curl -X POST \
  https://vehicle-booking-api.herokuapp.com/v1/users \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'postman-token: 50b3bb3c-2265-9661-694c-9b4ad44e4751' \
  -d 'username=administrator&password=password'
````
#### Sample Response
````
{
    "user": {
        "id": 35,
        "username": "administrator",
        "password_digest": "$2a$12$N.nStVsShl06Y4ClZrazduac91SIp1GMPTwD1/CXLO31RdMtuX1ZK",
        "created_at": "2020-11-06T20:06:34.492Z",
        "updated_at": "2020-11-06T20:06:34.492Z"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNX0.nLY4f5bGd_E9dJcpp-p1YdDcbaKasVj9hrP3zlfCkdE"
}
````
### Vehicles
This is the API endpoint related to vehicles in the system.
#### Endpoint
`https://vehicle-booking-api.herokuapp.com/v1/vehicles`
#### Sample Request
````
curl -X GET \
  https://vehicle-booking-api.herokuapp.com/v1/vehicles \
  -H 'authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.oT7kSePnYs7eVIsRIzIi0UEC7XBclsrO3qrnXwic8Zg' \
  -H 'cache-control: no-cache' \
  -H 'postman-token: 84b6ae2f-3a03-dcfd-8872-b76e9556c863'
````
#### Sample Response
````
[
    {
        "id": 1,
        "name": "Toyota Rav 4",
        "model": "2018",
        "transmission": "Manual",
        "fee": "4500",
        "created_at": "2020-11-01T12:51:04.679Z",
        "updated_at": "2020-11-01T12:51:04.679Z"
    },
    {
        "id": 2,
        "name": "Nissan Sentra",
        "model": "2016",
        "transmission": "Automatic",
        "fee": "5000",
        "created_at": "2020-11-04T07:52:20.658Z",
        "updated_at": "2020-11-04T07:52:20.658Z"
    }
]
````
### Appointments
This is the API endpoint related to appointments (bookings) in the system.
#### Endpoint
`https://vehicle-booking-api.herokuapp.com/v1/appointments`
#### Sample Request
````
curl -X GET \
  https://vehicle-booking-api.herokuapp.com/v1/appointments \
  -H 'authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.oT7kSePnYs7eVIsRIzIi0UEC7XBclsrO3qrnXwic8Zg' \
  -H 'cache-control: no-cache' \
  -H 'postman-token: e84d3dbb-1582-ff27-4afa-8699cb4d5600'
````
#### Sample Response
````
[
    {
        "id": 1,
        "date": "2020-12-22",
        "city": "Accra",
        "vehicle": "Toyota Rav4",
        "model": "2018",
        "user_id": 1,
        "created_at": "2020-11-01T12:51:04.821Z",
        "updated_at": "2020-11-01T12:51:04.821Z"
    },
    {
        "id": 2,
        "date": "2020-11-05",
        "city": "Adenta, Accra",
        "vehicle": null,
        "model": "2018",
        "user_id": 1,
        "created_at": "2020-11-05T17:45:58.384Z",
        "updated_at": "2020-11-05T17:45:58.384Z"
    }
]
````
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.7.0
Rails: 6.0.3.4
Postgres: >=9.5

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

Populate database with:

```
   rails db:seed
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests
Type the following in your terminal/command line to run tests for the API:
```
    rpsec
```

### Deployment

This API has been deployed on [heroku.](https://www.heroku.com) It is acccessible at `https://vehicle-booking-api.herokuapp.com/v1/`.

## Author

👤 **Christopher Amanor**

- Github: [@krys2fa](https://github.com/krys2fa)
- Twitter: [@krys2fa](https://twitter.com/krys2fa)
- Linkedin: [Christopher Amanor](https://www.linkedin.com/in/christopher-amanor/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Kindly give this repository a ⭐️ if you like this project!

## Acknowledgments

- Project specifications by [Microverse](https://www.microverse.org).

- Images downloaded from [U.S. News](https://cars.usnews.com/).

## 📝 License

This project is licensed under the MIT License.
