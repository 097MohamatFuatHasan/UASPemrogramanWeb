function showDetails(title, time, image) {
    const today = new Date();
    const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
    const formattedDate = today.toLocaleDateString('id-ID', options);

    document.getElementById('popup-title').innerText = title;
    document.getElementById('popup-date').innerText = 'Tanggal: ' + formattedDate;
    document.getElementById('popup-time').innerText = 'Jam: ' + time;
    document.getElementById('popup-image').src = image;

    const synopsis = document.querySelector(`.film-card[onclick*="${title}"] .synopsis`).innerText;
    document.getElementById('popup-synopsis').innerText = synopsis;

    document.getElementById('film-popup').style.display = 'flex';
}

document.getElementById('film-popup').addEventListener('click', function(event) {
    if (event.target === this) {
        this.style.display = 'none';
    }
});

function updateFilmDates() {
    const today = new Date();
    const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
    const formattedDate = today.toLocaleDateString('id-ID', options);

    const filmDates = document.querySelectorAll('.film-date');
    filmDates.forEach(dateElement => {
        dateElement.innerText = formattedDate;
    });
}

updateFilmDates();