Document.addEventListener('DOMContentLoaded', (event) => {
    const searchInput = document.querySelector('.search-bar input');
    const tableRows = document.querySelectorAll('table tbody tr');

    searchInput.addEventListener('input', () => {
        const searchTerm = searchInput.value.toLowerCase();
        tableRows.forEach(row => {
            const cells = row.querySelectorAll('td');
            let matches = false;
            cells.forEach(cell => {
                if (cell.textContent.toLowerCase().includes(searchTerm)) {
                    matches = true;
                }
            });
            if (matches) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    });
});

