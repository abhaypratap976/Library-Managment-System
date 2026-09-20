emailjs.init({
    publicKey: "aWOQvAA6BDlhtu_5E"
});

const contactForm = document.getElementById("contactForm");

const nameInput = document.getElementById("name");
const emailInput = document.getElementById("email");
const subjectInput = document.getElementById("subject");
const messageInput = document.getElementById("message");

const nameError = document.getElementById("nameError");
const emailError = document.getElementById("emailError");
const subjectError = document.getElementById("subjectError");
const messageError = document.getElementById("messageError");

const characterCount = document.getElementById("characterCount");

const submitButton = document.getElementById("submitButton");
const buttonText = submitButton.querySelector(".button-text");
const buttonLoader = submitButton.querySelector(".button-loader");

const successMessage = document.getElementById("successMessage");

messageInput.addEventListener("input", function () {
    const currentLength = messageInput.value.length;
    characterCount.textContent = `${currentLength} / 500`;
});

function clearErrors() {
    nameError.textContent = "";
    emailError.textContent = "";
    subjectError.textContent = "";
    messageError.textContent = "";

    nameInput.classList.remove("input-error");
    emailInput.classList.remove("input-error");
    subjectInput.classList.remove("input-error");
    messageInput.classList.remove("input-error");
}

function showError(input, errorElement, message) {
    errorElement.textContent = message;
    input.classList.add("input-error");
}

function isValidEmail(email) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
}

contactForm.addEventListener("submit", function (event) {
    event.preventDefault();

    clearErrors();

    successMessage.style.display = "none";

    const name = nameInput.value.trim();
    const email = emailInput.value.trim();
    const subject = subjectInput.value.trim();
    const message = messageInput.value.trim();

    let isValid = true;

    if (name === "") {
        showError(
            nameInput,
            nameError,
            "Please enter your name."
        );
        isValid = false;
    } else if (name.length < 2) {
        showError(
            nameInput,
            nameError,
            "Name must contain at least 2 characters."
        );
        isValid = false;
    }

    if (email === "") {
        showError(
            emailInput,
            emailError,
            "Please enter your email address."
        );
        isValid = false;
    } else if (!isValidEmail(email)) {
        showError(
            emailInput,
            emailError,
            "Please enter a valid email address."
        );
        isValid = false;
    }

    if (subject === "") {
        showError(
            subjectInput,
            subjectError,
            "Please enter a subject."
        );
        isValid = false;
    } else if (subject.length < 3) {
        showError(
            subjectInput,
            subjectError,
            "Subject must contain at least 3 characters."
        );
        isValid = false;
    }

    if (message === "") {
        showError(
            messageInput,
            messageError,
            "Please enter your message."
        );
        isValid = false;
    } else if (message.length < 10) {
        showError(
            messageInput,
            messageError,
            "Message must contain at least 10 characters."
        );
        isValid = false;
    }

    if (!isValid) {
        return;
    }

    submitButton.disabled = true;
    buttonText.style.display = "none";
    buttonLoader.style.display = "inline";

    emailjs.sendForm(
        "service_lh3iyfr",
        "template_cx201tl",
        contactForm
    )
    .then(function () {
        successMessage.textContent =
            "✓ Your message has been sent successfully!";
        successMessage.style.display = "block";

        contactForm.reset();
        characterCount.textContent = "0 / 500";
        clearErrors();
    })
    .catch(function (error) {
        console.error("EmailJS Error Object:", error);
        console.error("Status:", error.status);
        console.error("Text:", error.text);

        successMessage.textContent =
            "✕ Email could not be sent.";
        successMessage.style.display = "block";
    })
    .finally(function () {
        submitButton.disabled = false;
        buttonText.style.display = "inline";
        buttonLoader.style.display = "none";
    });
});