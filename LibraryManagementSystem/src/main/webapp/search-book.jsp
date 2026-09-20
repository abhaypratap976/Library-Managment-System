<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Search books in My Library">
    <title>Search Books | My Library</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/search-book.css">
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

            <a href="${pageContext.request.contextPath}/search-book"
               class="active">
                Search
            </a>

            <a href="${pageContext.request.contextPath}/about">
                About
            </a>

            <a href="${pageContext.request.contextPath}/contact">
                Contact
            </a>

        </div>

    </nav>

</header>

<main class="page-wrapper">

    <section class="page-header" aria-labelledby="page-title">

        <span class="eyebrow">
            Library Search
        </span>

        <h1 id="page-title">
            🔍 Search Books
        </h1>

        <p>
            Find books quickly using their title or ISBN.
        </p>

    </section>

    <section class="search-section" aria-labelledby="search-title">

        <div class="search-container">

            <article class="search-card">

                <div class="card-icon title-icon" aria-hidden="true">
                    📖
                </div>

                <div class="card-content">

                    <h2 id="search-title">
                        Search by Title
                    </h2>

                    <p>
                        Find a book using its title.
                    </p>

                    <form
                        action="${pageContext.request.contextPath}/search-book/title"
                        method="get"
                        class="search-form">

                        <label for="title" class="sr-only">
                            Book title
                        </label>

                        <div class="input-wrapper">

                            <span aria-hidden="true">🔎</span>

                            <input
                                type="text"
                                id="title"
                                name="title"
                                placeholder="Enter book title"
                                autocomplete="off"
                                required>

                        </div>

                        <button type="submit" class="search-btn">
                            <span>Search</span>
                            <span aria-hidden="true">→</span>
                        </button>

                    </form>

                </div>

            </article>

            <article class="search-card">

                <div class="card-icon isbn-icon" aria-hidden="true">
                    🔢
                </div>

                <div class="card-content">

                    <h2>
                        Search by ISBN
                    </h2>

                    <p>
                        Find a book using its ISBN number.
                    </p>

                    <form
                        action="${pageContext.request.contextPath}/search-book/isbn"
                        method="get"
                        class="search-form">

                        <label for="isbn" class="sr-only">
                            ISBN number
                        </label>

                        <div class="input-wrapper">

                            <span aria-hidden="true">🔎</span>

                            <input
                                type="text"
                                id="isbn"
                                name="isbn"
                                placeholder="Enter ISBN number"
                                autocomplete="off"
                                required>

                        </div>

                        <button type="submit" class="search-btn">
                            <span>Search</span>
                            <span aria-hidden="true">→</span>
                        </button>

                    </form>

                </div>

            </article>

        </div>

    </section>

    <c:if test="${not empty searchType}">

        <section class="result-section" aria-labelledby="results-title">

            <div class="result-card">

                <div class="result-header">

                    <div>

                        <span class="result-label">
                            Search Results
                        </span>

                        <h2 id="results-title">
                            Books Found
                        </h2>

                        <p>
                            Search by
                            <strong>${searchType}</strong>
                            for
                            <strong>"${searchValue}"</strong>
                        </p>

                    </div>

                    <div class="result-icon" aria-hidden="true">
                        📚
                    </div>

                </div>

                <c:choose>

                    <c:when test="${not empty books}">

                        <div class="table-wrapper">

                            <table>

                                <caption class="sr-only">
                                    Search results for ${searchValue}
                                </caption>

                                <thead>

                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Title</th>
                                        <th scope="col">Author</th>
                                        <th scope="col">ISBN</th>
                                        <th scope="col">Published Year</th>
                                    </tr>

                                </thead>

                                <tbody>

                                    <c:forEach
                                        var="book"
                                        items="${books}">

                                        <tr>

                                            <td data-label="ID">
                                                <span class="book-id">
                                                    #${book.id}
                                                </span>
                                            </td>

                                            <td data-label="Title">
                                                <strong class="book-title">
                                                    ${book.title}
                                                </strong>
                                            </td>

                                            <td data-label="Author">
                                                ${book.author}
                                            </td>

                                            <td data-label="ISBN">
                                                <span class="isbn">
                                                    ${book.isbn}
                                                </span>
                                            </td>

                                            <td data-label="Published Year">
                                                <span class="year">
                                                    ${book.publishedYear}
                                                </span>
                                            </td>

                                        </tr>

                                    </c:forEach>

                                </tbody>

                            </table>

                        </div>

                    </c:when>

                    <c:otherwise>

                        <div class="no-result">

                            <div class="no-result-icon" aria-hidden="true">
                                📭
                            </div>

                            <h3>
                                No Book Found
                            </h3>

                            <p>
                                We couldn't find a book matching your search.
                            </p>

                        </div>

                    </c:otherwise>

                </c:choose>

            </div>

        </section>

    </c:if>

    <div class="back-wrapper">

        <a
            href="${pageContext.request.contextPath}/"
            class="back-btn">

            <span aria-hidden="true">←</span>
            Back to Home

        </a>

    </div>

</main>

<footer class="site-footer">

    <p>
        © 2026 My Library | Library Management System
    </p>

</footer>

<script src="${pageContext.request.contextPath}/js/search-book.js"></script>

</body>
</html>