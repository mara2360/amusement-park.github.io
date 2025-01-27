// script.js

// Reservation Form Validation
document.addEventListener('DOMContentLoaded', function() {
    const reservationForm = document.querySelector('.reservation-form');

    if (reservationForm) {
        reservationForm.addEventListener('submit', function(event) {
            // Prevent form submission to check validation
            event.preventDefault();

            // Get form values
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const date = document.getElementById('date').value;
            const tickets = document.getElementById('tickets').value;

            // Validate Name
            if (name === '') {
                alert('Please enter your full name.');
                return;
            }

            // Validate Email
            if (!validateEmail(email)) {
                alert('Please enter a valid email address.');
                return;
            }

            // Validate Date
            if (date === '') {
                alert('Please select a reservation date.');
                return;
            }

            // Validate Tickets
            if (tickets === '' || tickets < 1 || tickets > 10) {
                alert('Please enter a ticket quantity between 1 and 10.');
                return;
            }

            // If all validations pass, submit the form (or perform desired action)
            alert('Reservation submitted successfully!');
            reservationForm.reset();
        });

        // Email Validation Function
        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(email);
        }
    }
});
