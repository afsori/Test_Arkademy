<?php
function pangkat($nilai, $pangkat)
{
    if (is_numeric($nilai) and is_int($pangkat)) //pengecekan tipe data argumen
    {
        //Jika argumen sesuai, maka jalankan proses fungsi
        $hasil = 1;
        for ($i = 1; $i <= $pangkat; $i++) {
            $hasil = $hasil * $nilai;
        }
        return $hasil;
    } else {
        //Bagian ini akan dijalankan jika tipe data argumen bukan angka
        return "Tipe data argumen harus berupa angka";
    }
}

//Test beberapa kasus inputan untuk fungsi pangkat()
echo pangkat(5, 2);
echo "<br />";
echo pangkat('afsori', 2);
echo "<br />";
echo pangkat(2, 8);
echo "<br />";
echo pangkat('angka', 9);
echo "<br />";
echo pangkat("lima", 2);
echo "<br />";
