<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description"
          content="Contact My Library Management System">

    <title>Contact | My Library</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/contact.css">
</head>

<body>

<header class="site-header">

    <nav class="navbar" aria-label="Main navigation">

        <a href="${pageContext.request.contextPath}/"
           class="brand">

            <span class="brand-icon" aria-hidden="true">
                📚
            </span>

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

            <a href="${pageContext.request.contextPath}/about">
                About
            </a>

            <a href="${pageContext.request.contextPath}/contact"
               class="active">
                Contact
            </a>

        </div>

    </nav>

</header>

<main class="page-wrapper">

    <section class="contact-header" aria-labelledby="page-title">

        <span class="eyebrow">
            Get In Touch
        </span>

        <h1 id="page-title">
            Contact Us
        </h1>

        <p>
            Have a question or feedback? We'd love to hear from you.
        </p>

    </section>

    <section class="contact-wrapper">

        <article class="contact-info">

            <div class="section-heading">

                <div class="section-icon" aria-hidden="true">
                    📞
                </div>

                <div>
                    <span class="section-label">
                        Contact Information
                    </span>

                    <h2>
                        Get In Touch
                    </h2>
                </div>

            </div>

            <div class="info-list">

				<!-- EMAIL -->

				<div class="info-box">

				    <div class="info-icon" aria-hidden="true">
				        📧
				    </div>

				    <div>

				        <h3>Email</h3>

						<a href="https://mail.google.com/mail/?view=cm&fs=1&to=abhay506882@gmail.com"
						   rel="noopener noreferrer">
						    abhay506882@gmail.com
						</a>

				    </div>

				</div>


				

				<div class="info-box">

				    <div class="info-icon" aria-hidden="true">
				        📱
				    </div>

				    <div>

				        <h3>Phone</h3>

				        <a href="tel:+916377531335">
				            +91 6377531335
				        </a>

				    </div>

				</div>


			

				<div class="info-box">

				    <div class="info-icon" aria-hidden="true">
				        📍
				    </div>

				    <div>

				        <h3>Location</h3>

				        <p>
				            India
				        </p>

				    </div>

				</div>


			

				<div class="info-box">

				    <div class="info-icon" aria-hidden="true">
				        🔗
				    </div>

				    <div>

				        <h3>Connect With Me</h3>

				        <div class="social-links">

				            <a href="https://www.linkedin.com/feed/"
				               target="_blank"
				               rel="noopener noreferrer">
				                LinkedIn
				            </a>

				            <a href="https://github.com/abhaypratap976"
				               target="_blank"
				               rel="noopener noreferrer">
				                GitHub
				            </a>

				        </div>

				    </div>

				</div>

            </div>

        </article>

        <article class="contact-form-card">

            <div class="section-heading">

                <div class="section-icon message-icon" aria-hidden="true">
                    💬
                </div>

                <div>
                    <span class="section-label">
                        Send Message
                    </span>

                    <h2>
                        Send Us a Message
                    </h2>
                </div>

            </div>

            <form
                id="contactForm"
                action="#"
                method="post"
                novalidate>

                <div class="form-group">

                    <label for="name">
                        Your Name
                    </label>

                    <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter your name"
                        autocomplete="name"
                        required>

                    <span class="error-message"
                          id="nameError"></span>

                </div>

                <div class="form-group">

                    <label for="email">
                        Email Address
                    </label>

                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your email"
                        autocomplete="email"
                        required>

                    <span class="error-message"
                          id="emailError"></span>

                </div>

                <div class="form-group">

                    <label for="subject">
                        Subject
                    </label>

                    <input
                        type="text"
                        id="subject"
                        name="subject"
                        placeholder="Enter subject"
                        required>

                    <span class="error-message"
                          id="subjectError"></span>

                </div>

                <div class="form-group">

                    <label for="message">
                        Message
                    </label>

                    <textarea
                        id="message"
                        name="message"
                        placeholder="Write your message here..."
                        maxlength="500"
                        required></textarea>

                    <div class="message-footer">

                        <span class="error-message"
                              id="messageError"></span>

                        <span class="character-count"
                              id="characterCount">
                            0 / 500
                        </span>

                    </div>

                </div>

                <button
                    type="submit"
                    class="submit-btn"
                    id="submitButton">

                    <span class="button-text">
                        Send Message
                    </span>

                    <span class="button-loader"
                          aria-hidden="true">
                        Sending...
                    </span>

                </button>

                <div
                    class="success-message"
                    id="successMessage"
                    role="status"
                    aria-live="polite">

                    ✓ Message form validated successfully.

                </div>

            </form>

        </article>

    </section>

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

<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>
<script src="${pageContext.request.contextPath}/js/contact.js"></script>

</body>
</html>