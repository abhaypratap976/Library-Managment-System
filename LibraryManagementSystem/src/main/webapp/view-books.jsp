<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="View and manage all books in My Library">
    <title>All Books | My Library</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/view-books.css">
</head>

<body>

<header class="site-header">
    <nav class="navbar" aria-label="Main navigation">

        <a href="${pageContext.request.contextPath}/" class="brand">
            <span class="brand-icon" aria-hidden="true">📚</span>
            <span>My Library</span>
        </a>

        <button
            class="menu-toggle"
            type="button"
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

            <a href="${pageContext.request.contextPath}/viewbooks"
               class="active">
                All Books
            </a>

            <a href="${pageContext.request.contextPath}/search-book">
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
            Library Collection
        </span>

        <h1 id="page-title">
            📚 All Books
        </h1>

        <p>
            Browse and manage all books available in your library.
        </p>

    </section>

    <section class="books-section" aria-labelledby="books-title">

        <div class="section-header">

            <div>
                <h2 id="books-title">
                    Book Collection
                </h2>

                <p>
                    View book details and manage your library records.
                </p>
            </div>

            <a
                href="${pageContext.request.contextPath}/add-book"
                class="add-btn">

                <span aria-hidden="true">＋</span>
                Add New Book

            </a>

        </div>

        <div class="table-card">

            <c:choose>

                <c:when test="${not empty books}">

                    <div class="table-wrapper">

                        <table>

                            <caption class="sr-only">
                                List of books available in the library
                            </caption>

                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Author</th>
                                    <th scope="col">ISBN</th>
                                    <th scope="col">Published Year</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>

                            <tbody>

                                <c:forEach var="book" items="${books}">

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
                                            ${book.publishedYear}
                                        </td>

										<td data-label="Action">

										    <div class="action-buttons">

										        <a
										            href="${pageContext.request.contextPath}/editBook/${book.id}"
										            class="update-btn">

										            <span aria-hidden="true">✏</span>
										            Update

										        </a>

										        <a
										            href="${pageContext.request.contextPath}/deleteBook/${book.id}"
										            class="delete-btn"
										            data-book-title="${book.title}">

										            <span aria-hidden="true">🗑</span>
										            Delete

										        </a>

										    </div>

										</td>

                                    </tr>

                                </c:forEach>

                            </tbody>

                        </table>

                    </div>

                </c:when>

                <c:otherwise>

                    <div class="empty-state">

                        <div class="empty-icon" aria-hidden="true">
                            📭
                        </div>

                        <h2>
                            No Books Found
                        </h2>

                        <p>
                            Your library is currently empty.
                            Add your first book to get started.
                        </p>

                        <a
                            href="${pageContext.request.contextPath}/add-book"
                            class="empty-action">

                            Add Your First Book
                            <span aria-hidden="true">→</span>

                        </a>

                    </div>

                </c:otherwise>

            </c:choose>

        </div>

    </section>

</main>

<footer class="site-footer">
    <p>
        © 2026 My Library | Library Management System
    </p>
</footer>

</body>
</html>