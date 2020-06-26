<?php
    session_start();
    include ('dbconfig.php');

    function validate_data($data)
    {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  $data = addslashes($data);
  return $data;
}


if (isset($_POST['submit'])){

  $output = '';
  $status = '';
  $name = $_POST['name'];
  $email = $_POST['email'];

  // echo $email;
  // die ("huhdjfdkf");

  if (!empty($name) && !empty($email)){
      $check = mysqli_query($conn, "SELECT Email_Address FROM email_list WHERE Email_Address='$email'");
      if (mysqli_num_rows($check) == 1) {
          $status .= '<div class="alert alert-danger">
          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
          <strong>Email Address Exists</strong>
          </div>';
          }
      else{
          $sql="INSERT into email_list(Names, Email_Address) VALUES ('$name', '$email')";
          $query = mysqli_query($conn,$sql);
          if($query){
            echo "<script>alert('Registered for Free E-book Successfully')</script>"; 
            header("Location: download.html");
              } 
          else{
            echo "<script>alert('Registered for Free Ebook not Successful')</script>";
            }
      }

}
}
?>
