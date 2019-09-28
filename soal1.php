<?php
function getDataJSON($name, $address, $hobbies, $is_married, $school, $skill, $interest_coding)
{
    $data = array(
        'name' => $name,
        'address' => $address,
        'hobbies' => $hobbies,
        'is_married' => $is_married,
        'school' => $school,
        'skills' => $skill,
        'interest_coding' => $interest_coding
    );

    return json_encode($data);
}

$name = "Angga Nur Prasetya";
$address = "Banjarnegara";
$hobbies = array("olahraga", "koding");
$is_married = false;
$skill = array("Backend Developer", "Android Developer");
$interest_coding = true;
$school = array(
    'highSchool' => "SMKN 1 Bawang",
    'university' => "AMIK DCC Pringsewu"
);


echo getDataJSON($name, $address, $hobbies, $is_married, $school, $skill, $interest_coding);
