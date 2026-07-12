# Exercise 5 – JWT Handson

## Objective

Create an authentication service that validates user credentials and returns a JSON Web Token (JWT). The generated JWT can be used to access secured REST APIs.

## Features

- Spring Boot REST Application
- HTTP Basic Authentication
- JWT Token Generation
- Authentication Controller
- Spring Security Configuration
- REST API Endpoint for Authentication

## Technologies Used

- Java 17
- Spring Boot
- Spring Security
- JWT (JSON Web Token)
- Maven
- REST API

## Project Structure

```
5.JWT-handson
│
├── pom.xml
├── README.md
└── src
    └── main
        ├── java
        └── resources
```

## API Endpoint

```
POST /authenticate
```

Example:

```bash
curl -s -u user:pwd http://localhost:8090/authenticate
```

Response

```json
{
  "token":"<generated-jwt-token>"
}
```

## Learning Outcome

- Understand JWT Authentication
- Generate JWT Tokens
- Configure Spring Security
- Secure REST APIs
