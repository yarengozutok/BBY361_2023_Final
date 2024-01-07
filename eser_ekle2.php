<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
$sorgu = "INSERT INTO eserler (eserAdi, yazarID)
            VALUES ('$eserAdi', $yazarID)";

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