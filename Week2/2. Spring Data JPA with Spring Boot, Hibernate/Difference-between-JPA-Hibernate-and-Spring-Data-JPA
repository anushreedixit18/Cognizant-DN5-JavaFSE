# Difference Between JPA, Hibernate and Spring Data JPA

## Objective

Understand the difference between JPA, Hibernate and Spring Data JPA and compare database operations using Hibernate and Spring Data JPA.

## JPA

JPA stands for Java Persistence API.

- It is a Java specification for persisting, reading and managing data.
- It provides interfaces and annotations.
- It does not provide a concrete implementation.
- Hibernate is one of the implementations of JPA.

## Hibernate

Hibernate is an Object Relational Mapping framework.

- It implements the JPA specification.
- It maps Java objects to database tables.
- It requires manual session and transaction management when used directly.
- It provides methods such as `save()`, `update()` and `delete()`.

## Spring Data JPA

Spring Data JPA is an abstraction layer built on top of JPA.

- It reduces boilerplate code.
- It uses repository interfaces.
- It provides ready-made CRUD operations.
- It manages transactions using the `@Transactional` annotation.
- Hibernate is commonly used as the underlying JPA implementation.

## Comparison

| Feature | JPA | Hibernate | Spring Data JPA |
|---|---|---|---|
| Type | Specification | ORM framework | Abstraction layer |
| Implementation | No | Yes | Uses JPA implementation |
| Boilerplate Code | Depends on implementation | More | Less |
| Repository Support | No | No | Yes |
| Transaction Management | Manual or container-managed | Usually manual | Annotation-based |
| CRUD Operations | Defined through APIs | Session methods | JpaRepository methods |

## Hibernate Example

Hibernate requires creating a session, beginning a transaction, saving the object, committing the transaction and closing the session.

## Spring Data JPA Example

Spring Data JPA only requires a repository interface and calling the `save()` method.

## Learning Outcome

- Understand JPA as a specification
- Understand Hibernate as a JPA implementation
- Understand Spring Data JPA as an abstraction layer
- Compare direct Hibernate code with Spring Data JPA code
