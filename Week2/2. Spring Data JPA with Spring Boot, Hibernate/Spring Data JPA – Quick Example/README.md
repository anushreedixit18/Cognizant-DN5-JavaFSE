# Spring Data JPA – Quick Example

## Objective

Create a simple Spring Boot application using Spring Data JPA, Hibernate and MySQL to retrieve country records from a database.

## Features

- Spring Boot application
- MySQL database connection
- JPA entity mapping
- Repository using JpaRepository
- Service layer using Spring Service
- Transaction management
- Retrieve all countries from the database

## Technologies Used

- Java 17
- Spring Boot
- Spring Data JPA
- Hibernate
- MySQL
- Maven

## Project Structure

```text
1.spring-data-jpa-handson
├── README.md
├── pom.xml
├── application.properties
├── OrmLearnApplication.java
├── Country.java
├── CountryRepository.java
├── CountryService.java
└── database.sql
```

## Database

Database name:

```text
ormlearn
```

Table name:

```text
country
```

## Sample Data

```text
IN - India
US - United States of America
```

## Learning Outcome

- Understand Spring Data JPA
- Map a Java class to a database table
- Create a JpaRepository
- Implement a service layer
- Retrieve records using the findAll() method
