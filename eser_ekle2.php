<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$eserYayinYili = mysqli_real_escape_string($baglanti, $_POST['eserYayinYili']);
$eserTürü = mysqli_real_escape_string($baglanti, $_POST['eserTürü']);
$yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
$yayineviID = isset($_POST['yayineviID']) ? mysqli_real_escape_string($baglanti, $_POST['yayineviID']) : null;

$sorgu = "INSERT INTO eserler (eserAdi, eserYayinYili, eserTürü, yazarID, yayineviID)
            VALUES ('$eserAdi', '$eserYayinYili', '$eserTürü', $yazarID, $yayineviID)";

if (mysqli_query($baglanti, $sorgu)) {
    mysqli_close($baglanti);
    if (!headers_sent()) {
        header("Location: eserleri_listele.php");
        exit;
    }
} else {
    printf("Hata: " . $sorgu . "<br>" . mysqli_error($baglanti));
}
?>