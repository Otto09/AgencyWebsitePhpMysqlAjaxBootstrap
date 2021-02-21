  <?php
   function corectez($sir) {
   $sir = trim($sir);
   $sir = stripslashes($sir);
   $sir = htmlspecialchars($sir);
   return $sir;
   }

   // preiau valorile din campurile formularului (name, email, phone, message din sistem data la care s-a completat formularul)
   $name = corectez($_POST["name"]);
   $email = corectez($_POST["email"]);
   $phone = corectez($_POST["phone"]);
   $message = corectez($_POST["message"]);
   
   include("../../../connection.php");
 
  $cda = "INSERT INTO usermessages (name, email, phone, message)VALUES (?, ?, ?, ?)";
  $stmt = mysqli_prepare($cnx, $cda);
   mysqli_stmt_bind_param($stmt, 'ssss', $name, $email, $phone, $message);
   mysqli_stmt_execute($stmt) or die (mysqli_error($cnx));
   
   mysqli_stmt_close($stmt);
   mysqli_close($cnx);
   
   $raspuns = [];
   $raspuns['name'] = $name;
   
   echo json_encode($raspuns);    
?>