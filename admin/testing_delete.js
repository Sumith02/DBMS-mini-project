const table = document.getElementById('data-table');
const tableBody = table.querySelector('tbody');

// Function to format date
function formatDate(dateString) {
    const date = new Date(dateString);
    return date.toLocaleDateString(); // Adjust formatting as per your requirement
}

// Fetch data from database using Express and MySQL
fetch('http://localhost:5000/library/viewissue')
    .then(response => response.json())
    .then(data => {
        // Process fetched data
        const columns = Object.keys(data[0]);
        const rows = data;

        // Create table rows dynamically
        rows.forEach(row => {
            const tr = document.createElement('tr');
            columns.forEach(column => {
                const td = document.createElement('td');
                if (column === 'issue_date' || column == 'return_date') { // Change 'dateColumn' to the actual date column name
                    td.textContent = formatDate(row[column]);
                } else {
                    td.textContent = row[column];
                }
                tr.appendChild(td);
            });
            const editTd = document.createElement('td');
            const editButton = document.createElement('button');
            editButton.textContent = 'Delete';
            editButton.addEventListener('click', () => {
              let mysql = require('mysql');

var connection = mysql.createConnection({
host: "localhost",
user: "root",
password: "",
database: "library_management_system"
}); 
connection.connect((err) => {
if (err) return console.error(err.message);

let sql = `DELETE FROM issued_books WHERE s_no = 1265`;

let data = [1];

connection.query(sql, data, (error, results, fields) => {
if (error) return console.error(error.message);
console.log('Rows affected:', results.affectedRows);
});

// close the database connection
connection.end();
});
            });
            editTd.appendChild(editButton);
            tr.appendChild(editTd);
            tableBody.appendChild(tr);
        });
    })
    .catch(error => {
        console.error('Error fetching data:', error);
        // Handle errors appropriately, e.g., display an error message to the user
    });