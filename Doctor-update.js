document.addEventListener('DOMContentLoaded', (event) => {
    const updateForm = document.querySelector('form');
    updateForm.addEventListener('submit', (event) => {
        const inputs = document.querySelectorAll('input[required]');
        let allFilled = true;
        inputs.forEach((input) => {
            if (input.value.trim() === '') {
                allFilled = false;
                input.classList.add('error');
            } else {
                input.classList.remove('error');
            }
        });
        if (!allFilled){
            event.preventDefault();
            alert('Please fill in all required fields.');
        }
    });
});
