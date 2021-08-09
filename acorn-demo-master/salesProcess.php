<?php

include 'secure.php';
include 'header.php';

function sanitize($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

$fname =sanitize($_POST['fname']);
$lname =sanitize($_POST['lname']);
$street =sanitize($_POST['street']);
$city =sanitize($_POST['city']);
$state =sanitize($_POST['state']);
$zip =sanitize($_POST['zip']);
$email =sanitize($_POST['email']);
$stairs =sanitize($_POST['stairs']);

echo "<h1>Please verify your information below: </h1>";

$dataName = array('First Name: ','Last Name: ','Street Address: ','City: ','State: ','Zip: ','E-Mail: ','Number of Stairs: ');
list ($a,$b,$c,$d,$e,$f,$g,$h)= $dataName;
$responses = array($fname, $lname ,$street, $city, $state, $zip, $email, $stairs);
list ($aa, $bb ,$cc, $dd, $ee, $ff, $gg, $hh) = $responses;
echo "<b>$a</b> $aa <br>";
echo "<b>$b</b> $bb <br>";
echo "<b>$c</b> $cc <br>";
echo "<b>$d</b> $dd <br>";
echo "<b>$e</b> $ee <br>";
echo "<b>$f</b> $ff <br>";
echo "<b>$g</b> $gg <br>";
echo "<b>$h</b> $hh <br>";

echo "<br><br>If anything is incorrect, <a href='sales.php'>go back</a> and do it again. Otherwise, I will be forced to include this on your permanent record.";

try {
    $conn = new PDO("mysql:host=$servername;dbname=acorn", $username, $password);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->query("INSERT INTO leads (`fname`,`lname`, `street`, `city`, `state`, `zip`, `email`, `stairs`) 
                                    VALUES('$aa', '$bb' ,'$cc', '$dd', '$ee', '$ff', '$gg', '$hh')");

} catch 
    (PDOException $e) {
        echo "<br><br><p class='text-danger'> Connection failed! " . $e->getMessage() . "</p> 
        <h1>Please try again.</h1> 
        <p>If the problem persists, email: 
        <a href='mailto:christopher@christopher-murray.com'>
        christopher@christopher-murray.com</p></a>";
      }
  
      $conn = null;
  
include 'footer.php';

?>