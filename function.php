<?php
session_start();
// Database connection
$host = "localhost";
$username = "root";
$password = "";
$dbname = "webfilm";

$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fungsi untuk mengambil data film dari database
function getFilmsFromDatabase() {
    global $conn; // Menggunakan koneksi global
    $films = [];
    $result = $conn->query("SELECT * FROM films");

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $films[] = $row; // Menambahkan setiap film ke dalam array
        }
    }
    return $films; // Mengembalikan array film
}
?>
