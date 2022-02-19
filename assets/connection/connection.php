<?php
  $cnx = mysqli_connect("localhost","root","","agentie");
  // Se verifica conexiunea
  if (mysqli_connect_errno()) {
     die("Conectare la MySQL nereusita: " . mysqli_connect_error());
  };
  // Impun setul de caractere utf8
  mysqli_set_charset($cnx,"utf8");