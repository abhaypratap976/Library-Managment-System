# 📚 Library Management System

A simple **Library Management System** built using **Java Spring Boot** that allows users to manage books through a web-based interface.

The project demonstrates **CRUD operations, database integration, REST concepts, JSP-based UI, Hibernate/JPA, and MySQL**.

## 🚀 Features

- ➕ Add new books
- 📖 View all books
- 🔍 Search books
- 🗑️ Delete books
- ✏️ Update book information
- 💾 Store book data in MySQL
- 🔄 CRUD operations using Spring Boot
- 🌐 JSP-based web interface
- 📱 Accessible through a deployed web application

## 🛠️ Technologies Used

### Backend
- Java
- Spring Boot
- Spring MVC
- Spring Data JPA
- Hibernate

### Frontend
- JSP
- HTML
- CSS
- JavaScript

### Database
- MySQL

### Tools
- IntelliJ IDEA / Spring Tool Suite
- Git & GitHub
- Maven

### Deployment
- Railway
- Cloud MySQL database

## 🏗️ Project Structure

```text
Library-Management-System
│
├── src
│   └── main
│       ├── java
│       │   └── ... 
│       │       ├── Controller
│       │       ├── Service
│       │       ├── Repository
│       │       └── Entity
│       │
│       ├── resources
│       │   └── application.properties
│       │
│       └── webapp
│           └── WEB-INF
│               └── views
│                   ├── index.jsp
│                   ├── Add-Book.jsp
│                   ├── View-Book.jsp
│                   ├── About.jsp
│                   └── Contact.jsp
│
├── pom.xml
└── README.md
```

## 🔄 Application Flow

```text
User
  ↓
JSP / Web Interface
  ↓
Spring MVC Controller
  ↓
Service Layer
  ↓
Repository Layer
  ↓
Hibernate / JPA
  ↓
MySQL Database
```

## 📚 Book Entity

The main `Book` entity contains information such as:

- Book ID
- Book Title
- Author
- ISBN
- Published Year

Example:

```text
Book
├── id
├── title
├── author
├── isbn
└── publishedYear
```

## 🔌 Main Operations

The application supports the basic CRUD operations:

| Operation | Purpose |
|---|---|
| POST | Add a new book |
| GET | View/search books |
| PUT | Update book information |
| DELETE | Delete a book |

## 🗄️ Database

The application uses **MySQL** to store book information.

Spring Data JPA and Hibernate are used to communicate between the Java application and the database.

```text
Spring Boot
     ↓
Spring Data JPA
     ↓
Hibernate
     ↓
MySQL
```

## ⚙️ How to Run Locally

### 1. Clone the repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### 2. Open the project

Open the project in:

- IntelliJ IDEA
- Spring Tool Suite
- Eclipse

### 3. Configure MySQL

Create a MySQL database and update your database configuration in:

```text
src/main/resources/application.properties
```

Example:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/library_db
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

> Never upload real database passwords or other secrets to GitHub.

### 4. Run the application

Run the main Spring Boot application class.

The application will normally start on:

```text
http://localhost:8080
```

## 🌐 Deployment

The application was prepared for cloud deployment using **Railway** with a cloud-hosted MySQL database.

The application uses the deployment-provided port through the Spring Boot configuration so that it can run in a cloud environment.

## 🎯 Learning Objectives

This project was created to practice:

- Core Java
- Object-Oriented Programming
- Spring Boot
- Spring MVC
- CRUD Operations
- REST API concepts
- Spring Data JPA
- Hibernate
- MySQL
- JSP
- HTML/CSS
- Git & GitHub
- Cloud Deployment

## 🔮 Future Improvements

Some features that can be added in the future:

- 👤 User authentication and authorization
- 🔐 Spring Security
- 📚 Book categories
- 👨‍🎓 Student/member management
- 📅 Book issue and return system
- ⏰ Due-date and fine calculation
- 🔎 Advanced search and filtering
- 📊 Admin dashboard
- 📧 Email notifications

## 👨‍💻 Author

**Abhay Pratap Singh**

Aspiring Software Developer | Java | Spring Boot | Full Stack Development

---

⭐ If you found this project useful, consider giving the repository a star!
