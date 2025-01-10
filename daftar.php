<?php
include 'function.php';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="assets/logoweb.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Daftar Film</title>
</head>
<body>
    
        <nav>
            <ul>
                <li><a href="index.html">Beranda</a></li>
                <li><a href="daftar.php">Daftar Film</a></li>
                <li><a href="info.html">Info</a></li>
            </ul>
        </nav>
        <h1>Jadwal Film</h1>
        <div class="film-container">
            <?php
            $films = getFilmsFromDatabase();
            
            foreach ($films as $film) {
                echo '<div class="film-card" onclick="showDetails(\'' . $film['title'] . '\', \'' . $film['time'] . '\', \'' . $film['image'] . '\')">
                        <h2>' . $film['title'] . '</h2>
                        <img src="' . $film['image'] . '" alt="' . $film['title'] . '" style="width:200px; height:300px; border-radius: 5px;">
                        <p>Tanggal: <span class="film-date" data-date="' . $film['date'] . '"></span></p>
                        <p>Jam: ' . $film['time'] . '</p>
                        <p>
                            <span class="synopsis" style="display: none;">' . $film['synopsis'] . '</span>
                            <span class="synopsis-preview">' . substr($film['synopsis'], 0, 50) . '...</span>
                        </p>
                    </div>';
            }
            
            // Tutup koneksi setelah selesai
            $conn->close();
            ?>
        </div>
    
    <div id="film-popup" class="popup" style="display: none;">
        <div class="popup-content">
            <img id="popup-image" src="" alt="" style="width: 100%; border-radius: 5px; margin-bottom: 10px;">
            <h2 id="popup-title"></h2>
            <p id="popup-date"></p>
            <p id="popup-time"></p>
            <p id="popup-synopsis"></p>
        </div>
    </div>

    <script src="index.js"></script>
</body>
</html>
