<?php 
  include ("../../../connection.php");  

  $articole = [];
  $cda = "SELECT id_message, name, email, phone, message FROM usermessages ORDER BY id_message DESC";
  if ($rez=mysqli_query($cnx,$cda)) {
    // Se preiau liniile pe rand
    while ($linie = mysqli_fetch_assoc($rez)) {
      $articole[] = $linie;
    }
  }

  /* Eliberez memoria ocupata de multimea de selectie */
  mysqli_free_result($rez);

  /* Inchid conexiunea cu serverul MySQL */
  mysqli_close($cnx);
  echo json_encode($articole);
?>