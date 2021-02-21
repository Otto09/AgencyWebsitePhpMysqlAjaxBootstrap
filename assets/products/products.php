  <?php
   function corectez($sir) {
   $sir = trim($sir);
   $sir = stripslashes($sir);
   $sir = htmlspecialchars($sir);
   return $sir;
   }

   // preiau valorile din campurile formularului (name, description, price)
   $prodname = corectez($_POST["prodname"]);
   $description = corectez($_POST["description"]);
   $price = corectez($_POST["price"]);
   
   include("../../../connection.php");
 
  $cda = "INSERT INTO products (name, description, price)VALUES (?, ?, ?)";
  $stmt = mysqli_prepare($cnx, $cda);
   mysqli_stmt_bind_param($stmt, 'ssd', $prodname, $description, $price);
   mysqli_stmt_execute($stmt) or die (mysqli_error($cnx));
   
   mysqli_stmt_close($stmt);
   mysqli_close($cnx);

   $raspuns = [];
   $raspuns['prodname'] = $prodname;
   
   echo json_encode($raspuns);    
?>