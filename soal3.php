<?php

function sort_array($data__)
{
    $array_utama = array();
    for ($i = 0; $i < count($data__); $i++) {
        sort($data__[$i]);
        $array_utama[$i] = $data__[$i];
    }

    return $array_utama;
}

$data = array(

    array("1", "2", "3", "4", "5")
);
print_r(sort_array($data));




// $data = array("3", "5", "12", "6");
// sort($data);

// print_r($data);
