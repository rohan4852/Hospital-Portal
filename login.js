document.addEventListener('DOMContentLoaded', (event) => {
    const loginForm = document.querySelector('form');
    loginForm.addEventListener('submit', (event) => {
        event.preventDefault(); // Prevent the default form submission
        
        const username = document.querySelector('input[name="username"]').value;
        const password = document.querySelector('input[name="password"]').value;
        const role = document.querySelector('input[name="role"]').value;

        if (username === '' || password === '' || role === '') {
            alert('All fields are required!');
            return;
        }
        
        // Create the payload to send to the server
        const payload = {
            username: username,
            password: password,
            role: role
        };

        fetch('/login', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(payload)
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                window.location.href = '/dashboard';
            } else {
                alert('Invalid Credentials, try again.');
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('An error occurred. Please try again.');
        });
    });
});
