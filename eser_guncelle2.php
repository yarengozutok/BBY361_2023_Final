<?php
/* Bağlantı bilgilerinin alınması */
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$eserID = mysqli_real_escape_string($baglanti, $_POST['eserID']);
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$eserYayinYili = mysqli_real_escape_string($baglanti, $_POST['eserYayinYili']);
$eserTürü = mysqli_real_escape_string($baglanti, $_POST['eserTürü']);

$sorgu = "UPDATE eserler SET eserAdi = '$eserAdi', eserYayinYili = '$eserYayinYili', eserTürü = '$eserTürü' WHERE eserID = $eserID";

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