// scripts.js

document.addEventListener("DOMContentLoaded", function() {
    const links = document.querySelectorAll('a');
    
    links.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const confirmation = confirm(`Are you sure you want to ${this.textContent}?`);
            if (confirmation) {
                window.location.href = this.href;
            }
        });
    });
});
