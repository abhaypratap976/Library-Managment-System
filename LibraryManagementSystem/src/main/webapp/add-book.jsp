<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta name="description" content="Add a new book to My Library">
			<title>Add Book | My Library</title>

			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-book.css">
		</head>

		<body>

			<header class="site-header">
				<nav class="navbar" aria-label="Main navigation">

					<a href="${pageContext.request.contextPath}/" class="brand">
						<span class="brand-icon" aria-hidden="true">📚</span>
						<span>My Library</span>
					</a>

					<button class="menu-toggle" type="button" aria-label="Open navigation menu" aria-expanded="false"
						aria-controls="main-navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>

					<div class="nav-links" id="main-navigation">
						<a href="${pageContext.request.contextPath}/">Home</a>
						<a href="${pageContext.request.contextPath}/add-book" class="active">Add Book</a>
						<a href="${pageContext.request.contextPath}/viewbooks">All Books</a>
						<a href="${pageContext.request.contextPath}/search-book">Search</a>
						<a href="${pageContext.request.contextPath}/about">About</a>
						<a href="${pageContext.request.contextPath}/contact">Contact</a>
					</div>

				</nav>
			</header>

			<main class="page-wrapper">

				<section class="page-header" aria-labelledby="page-title">
					<span class="eyebrow">Library Management</span>

					<h1 id="page-title">

						<c:choose>

							<c:when test="${not empty book}">
								Update Book
							</c:when>

							<c:otherwise>
								Add a New Book
							</c:otherwise>

						</c:choose>

					</h1>

					<p>

						<c:choose>

							<c:when test="${not empty book}">
								Update the book details below and save your changes.
							</c:when>

							<c:otherwise>
								Enter the book details below to add it to your library.
							</c:otherwise>

						</c:choose>

					</p>
				</section>

				<section class="form-card" aria-labelledby="form-title">

					<div class="form-card-header">
						<div class="form-icon" aria-hidden="true">
							📖
						</div>

						<div>
							<h2 id="form-title">Book Information</h2>
							<p>Provide accurate details for the new book.</p>
						</div>
					</div>

					<form id="book-form"
						action="${pageContext.request.contextPath}${empty book ? '/addBook' : '/updateBook'}"
						method="post">

						<c:if test="${not empty book}">
							<input type="hidden" name="id" value="${book.id}">
						</c:if>

						<c:if test="${not empty error}">

							<div class="error-message">

								${error}

							</div>

						</c:if>

						<div class="form-group">
							<label for="title">
								Book Title
								<span aria-hidden="true">*</span>
							</label>

							<input type="text" id="title" name="title" placeholder="Enter book title"
								value="${book.title}" autocomplete="off" required>

							<small class="field-message" id="title-message"></small>
						</div>

						<div class="form-group">
							<label for="author">
								Author
								<span aria-hidden="true">*</span>
							</label>

							<input type="text" id="author" name="author" placeholder="Enter author name"
								value="${book.author}" autocomplete="name" required>

							<small class="field-message" id="author-message"></small>
						</div>

						<div class="form-group">
							<label for="isbn">
								ISBN
								<span aria-hidden="true">*</span>
							</label>

							<input type="text" id="isbn" name="isbn" placeholder="Enter ISBN number"
								value="${book.isbn}" inputmode="numeric" autocomplete="off" required>

							<small class="field-message" id="isbn-message"></small>
						</div>

						<div class="form-group">
							<label for="publishedYear">
								Published Year
								<span aria-hidden="true">*</span>
							</label>

							<input type="number" id="publishedYear" name="publishedYear"
								placeholder="Enter published year" value="${book.publishedYear}" min="1000" max="2100"
								required>

							<small class="field-message" id="year-message"></small>
						</div>

						<div class="form-actions">
							<a href="${pageContext.request.contextPath}/viewbooks" class="cancel-btn">

								<span aria-hidden="true">←</span>
								Cancel

							</a>

							<button type="submit" class="submit-btn" id="submit-button">
								<span class="button-text">

									<c:choose>

										<c:when test="${not empty book}">
											✏ Update Book
										</c:when>

										<c:otherwise>
											💾 Save Book
										</c:otherwise>

									</c:choose>

								</span>

								<span class="button-loader" aria-hidden="true"></span>
							</button>
						</div>

					</form>
				</section>

			</main>

			<footer class="site-footer">
				<p>© 2026 My Library. All rights reserved.</p>
			</footer>

			<script src="${pageContext.request.contextPath}/js/add-book.js"></script>

		</body>

		</html>
		```