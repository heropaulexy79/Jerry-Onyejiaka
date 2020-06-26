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

if ($_SERVER["REQUEST_METHOD"]=="POST"){
    $output='';
    if (empty($_POST['name'])) {
        $name="";
        $nameErr="First Name is required";
    }
    else{
        $name=validate_data($_POST['name']);
    }
    if (empty($_POST['email'])) {
        $email="";
        $emailErr="Last Name is required";
    }
    else{
        $email=validate_data($_POST['email']);
    }
   if (empty($_POST['subject'])) {
       $subject="";
       $subjectErr="Username is required";
   }
   else{
       $subject=validate_data($_POST['subject']);
   }
   if (empty($_POST['message'])) {
       $message="";
       $messageErr="Password is required";
   }
   else{
       $message=validate_data($_POST['message']);
   }


   if (!empty($name) && !empty($email) && !empty($subject) && !empty($message)){
        $sql="INSERT into book_appointment(Names, Email, The_Subject, The_Message) VALUES ('$name', '$email', '$subject', '$message')";
        $query = mysqli_query($conn,$sql);
        if($query){
            $output.= "
						<div class='alert alert-success'>
    					<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    					<strong>Message Sent Successfully</strong>
  						</div>
				";
			}
        else{
            die("error". mysqli_error($conn));
        }
        }
    else{
     $output.= "
                <div class='alert alert-danger'>
                <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                <strong>Please Fill Neccessary Requirements</strong>
                </div>
             ";
    }
    echo $output;
 
   }
    




    $to = 'jerryonyejiaka@gmail.com';
    $name = $_POST['name'];
    $email= $_POST['email'];
    $subject= $_POST['subject'];
    $message= $_POST['message'];
    


    $headers = 'MIME-Version: 1.0' . "\r\n";
    $headers .= "From: " . $email . "\r\n"; // Sender's E-mail
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

    $new_message ='<table style="width:100%">
        <tr>
            <td>'.$name.'</td>
        </tr>
        <tr><td>Email: '.$email.'</td></tr>
        <tr><td>Subject: '.$subject.'</td></tr>
        <tr><td>Message: '.$message.'</td></tr>
        
    </table>';

    if (@mail($to, $email, $message, $headers))
    {
        echo 'The message has been sent.';
    }else{
        echo 'Refused to send';
    }

?>
