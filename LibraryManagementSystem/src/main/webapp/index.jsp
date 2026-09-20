<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="My Library Management System">
    <title>My Library | Dashboard</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<header class="site-header">
    <nav class="navbar" aria-label="Main navigation">
        <a href="${pageContext.request.contextPath}/" class="brand">
            <span class="brand-icon" aria-hidden="true">📚</span>
            <span>My Library</span>
        </a>

        <button class="menu-toggle"
                type="button"
                aria-label="Toggle navigation"
                aria-expanded="false"
                aria-controls="main-navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <div class="nav-links" id="main-navigation">
            <a href="${pageContext.request.contextPath}/" class="active">Home</a>
            <a href="${pageContext.request.contextPath}/add-book">Add Book</a>
            <a href="${pageContext.request.contextPath}/viewbooks">All Books</a>
            <a href="${pageContext.request.contextPath}/search-book">Search</a>
            <a href="${pageContext.request.contextPath}/about">About</a>
            <a href="${pageContext.request.contextPath}/contact">Contact</a>
        </div>
    </nav>
</header>

<main>
    <section class="hero">
        <div class="hero-content">
            <span class="eyebrow">Library Dashboard</span>

            <h1>
                Manage Your Library
                <span>With Ease</span>
            </h1>

            <p>
                Add, search, view, and manage your books
                from one simple and modern dashboard.
            </p>

            <a href="${pageContext.request.contextPath}/add-book" class="hero-button">
                Add Your First Book
                <span aria-hidden="true">→</span>
            </a>
        </div>

        <div class="hero-visual" aria-hidden="true">
            <div class="book-stack">
                <div class="book book-one"></div>
                <div class="book book-two"></div>
                <div class="book book-three"></div>
            </div>
        </div>
    </section>

    <section class="dashboard" aria-labelledby="dashboard-title">
        <div class="section-heading">
            <div>
                <span class="section-label">Quick Actions</span>
                <h2 id="dashboard-title">Library Management</h2>
            </div>

            <p>Everything you need to manage your books.</p>
        </div>

        <div class="cards">

            <article class="card">
                <div class="card-icon" aria-hidden="true">➕</div>

                <div class="card-content">
                    <h3>Add Book</h3>
                    <p>
                        Add a new book to your library database
                        by entering its details.
                    </p>

                    <a href="${pageContext.request.contextPath}/add-book" class="card-link">
                        Add Book
                        <span aria-hidden="true">→</span>
                    </a>
                </div>
            </article>

            <article class="card">
                <div class="card-icon" aria-hidden="true">📚</div>

                <div class="card-content">
                    <h3>All Books</h3>
                    <p>
                        Browse and view all books currently
                        stored in your library database.
                    </p>

                    <a href="${pageContext.request.contextPath}/viewbooks" class="card-link">
                        View Books
                        <span aria-hidden="true">→</span>
                    </a>
                </div>
            </article>

            <article class="card">
                <div class="card-icon" aria-hidden="true">🔍</div>

                <div class="card-content">
                    <h3>Search Book</h3>
                    <p>
                        Quickly find a book by searching
                        for its title.
                    </p>

                    <a href="${pageContext.request.contextPath}/search-book" class="card-link">
                        Search Book
                        <span aria-hidden="true">→</span>
                    </a>
                </div>
            </article>

            <article class="card">
                <div class="card-icon" aria-hidden="true">⚙️</div>

                <div class="card-content">
                    <h3>Manage Books</h3>
                    <p>
                        View your books and manage existing
                        records using their unique IDs.
                    </p>

                    <a href="${pageContext.request.contextPath}/viewbooks" class="card-link">
                        Manage Books
                        <span aria-hidden="true">→</span>
                    </a>
                </div>
            </article>

        </div>
    </section>
</main>

<footer class="site-footer">
    <p>
        © 2026 My Library. All rights reserved.
    </p>
</footer>

<script src="${pageContext.request.contextPath}/js/script.js"></script>

</body>
</html>