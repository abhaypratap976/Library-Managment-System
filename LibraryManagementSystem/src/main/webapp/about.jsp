<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta
        name="description"
        content="Library Management System developed by Abhay Pratap Singh using Java, Spring Boot, JSP, JPA, Hibernate and MySQL.">

    <title>About | My Library</title>

    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/css/about.css">

</head>

<body>

<header class="site-header">

    <nav class="navbar" aria-label="Main navigation">

        <a href="${pageContext.request.contextPath}/" class="brand">

            <span class="brand-icon" aria-hidden="true">📚</span>

            <span>My Library</span>

        </a>


        <button
            type="button"
            class="menu-toggle"
            aria-label="Open navigation menu"
            aria-expanded="false"
            aria-controls="main-navigation">

            <span></span>
            <span></span>
            <span></span>

        </button>


        <div class="nav-links" id="main-navigation">

            <a href="${pageContext.request.contextPath}/">
                Home
            </a>

            <a href="${pageContext.request.contextPath}/add-book">
                Add Book
            </a>

            <a href="${pageContext.request.contextPath}/viewbooks">
                All Books
            </a>

            <a href="${pageContext.request.contextPath}/search-book">
                Search
            </a>

            <a
                href="${pageContext.request.contextPath}/about"
                class="active">
                About
            </a>

            <a href="${pageContext.request.contextPath}/contact">
                Contact
            </a>

        </div>

    </nav>

</header>


<main class="page-wrapper">

    <section
        class="hero-section"
        aria-labelledby="page-title">

        <span class="eyebrow">
            Library Management
        </span>

        <h1 id="page-title">
            About My Library
        </h1>

        <p>
            A modern Java-based web application designed to make
            library management simple, organized and efficient.
        </p>

    </section>


    <section class="content-card project-card">

        <div class="section-heading">

            <div
                class="section-icon"
                aria-hidden="true">
                📚
            </div>

            <div>

                <span class="section-label">
                    About the Project
                </span>

                <h2>
                    Library Management System
                </h2>

            </div>

        </div>


        <div class="content-text">

            <p>
                The <strong>Library Management System</strong> is a
                Java-based web application developed by
                <strong>Abhay Pratap Singh</strong> to manage library
                records through a simple and user-friendly interface.
                It provides complete CRUD functionality for efficiently
                managing book information.
            </p>

            <p>
                The application connects a JSP-based frontend with a
                Spring Boot backend and MySQL database, demonstrating
                practical implementation of MVC architecture, JPA,
                Hibernate and database-driven web development.
            </p>

        </div>

    </section>


    <section class="content-card">

        <div class="section-heading">

            <div
                class="section-icon feature-main-icon"
                aria-hidden="true">
                🚀
            </div>

            <div>

                <span class="section-label">
                    What You Can Do
                </span>

                <h2>
                    Main Features
                </h2>

            </div>

        </div>


        <div class="features">

            <article class="feature-card">

                <div
                    class="feature-icon"
                    aria-hidden="true">
                    ➕
                </div>

                <div>

                    <h3>
                        Add Books
                    </h3>

                    <p>
                        Add new books with their title, author,
                        ISBN and published year.
                    </p>

                </div>

            </article>


            <article class="feature-card">

                <div
                    class="feature-icon"
                    aria-hidden="true">
                    📖
                </div>

                <div>

                    <h3>
                        View Books
                    </h3>

                    <p>
                        View and manage all books stored in the
                        library database in an organized format.
                    </p>

                </div>

            </article>


            <article class="feature-card">

                <div
                    class="feature-icon"
                    aria-hidden="true">
                    🔍
                </div>

                <div>

                    <h3>
                        Search Books
                    </h3>

                    <p>
                        Quickly find books using their title
                        or ISBN information.
                    </p>

                </div>

            </article>


            <article class="feature-card">

                <div
                    class="feature-icon"
                    aria-hidden="true">
                    ✏️
                </div>

                <div>

                    <h3>
                        Update Books
                    </h3>

                    <p>
                        Edit existing book information and update
                        records directly in the database.
                    </p>

                </div>

            </article>


            <article class="feature-card">

                <div
                    class="feature-icon"
                    aria-hidden="true">
                    🗑️
                </div>

                <div>

                    <h3>
                        Delete Books
                    </h3>

                    <p>
                        Remove unwanted book records safely
                        from the library database.
                    </p>

                </div>

            </article>

        </div>

    </section>


    <section class="content-card">

        <div class="section-heading">

            <div
                class="section-icon tech-main-icon"
                aria-hidden="true">
                💻
            </div>

            <div>

                <span class="section-label">
                    Development Stack
                </span>

                <h2>
                    Technologies Used
                </h2>

            </div>

        </div>


        <p class="tech-description">
            Built using frontend, backend and database technologies
            to create a complete Java-based web application.
        </p>


        <div class="technologies">

            <span class="tech">HTML</span>

            <span class="tech">CSS</span>

            <span class="tech">Java</span>

            <span class="tech">Spring Boot</span>

            <span class="tech">Spring MVC</span>

            <span class="tech">JPA</span>

            <span class="tech">Hibernate</span>

            <span class="tech">MySQL</span>

            <span class="tech">JSP</span>

        </div>

    </section>


    <section class="content-card developer-card">

        <div
            class="developer-icon"
            aria-hidden="true">
            👨‍💻
        </div>


        <span class="section-label">
            Crafted by Abhay Pratap Singh
        </span>


        <h2>
            About the Developer
        </h2>


        <p>
            I'm <strong>Abhay Pratap Singh</strong>, and I developed
            this Library Management System to strengthen my practical
            skills in Java backend and full-stack web development.
        </p>


        <p>
            This project demonstrates my hands-on experience with
            <strong>Java, Spring Boot, Spring MVC, MySQL, JPA,
            Hibernate and JSP</strong>, along with implementing
            CRUD operations, database integration and MVC architecture
            in a complete web application.
        </p>


        <a
            href="${pageContext.request.contextPath}/"
            class="back-btn">

            <span aria-hidden="true">←</span>

            Back to Home

        </a>

    </section>

</main>


<footer class="site-footer">

    <p>
        © 2026 Abhay Pratap Singh | Library Management System
    </p>

</footer>


<script
    src="${pageContext.request.contextPath}/js/about.js">
</script>

</body>

</html>