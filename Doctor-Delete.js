Document.addEventListener('DOMContentLoaded', (event) => {
    const deleteButtons = document.querySelectorAll('.delete-button');
    deleteButtons.forEach(button => {
        button.addEventListener('click', e => {
            if (!confirm('Are you sure you want to delete this doctor?')); {
                e.preventDefault();
            }
        });
    });
});

