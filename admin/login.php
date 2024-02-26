
<?php
session_start();

include('./dbconnection.php');




if(isset($_POST['signup'])){

    $Fullname= $_POST['Fullname'];
    $Username= $_POST['Username'];
    $email= $_POST['email'];
    $password= $_POST['password'];
    if(!empty($Fullname) &&!empty($Username) && !empty($email) && !empty($password)){
        $query="INSERT INTO admin(Username,Fullname,email,password)
        VALUES('$Username','$Fullname','$email', '$password')";
        $conn->exec($query);

        
    }
}




// login 
$msg='';
if(isset($_POST['login'])){

  $UserName= $_POST['UserName'];
  $Password= $_POST['Password'];
  if(!empty($UserName && !empty($Password))){
  $validation_query=$conn->prepare('SELECT * from  admin WHERE Username= ? AND password=?');
  $validation_query->execute([$UserName,$Password]);
  if($validation_query->rowCount()>0){
            $_SESSION['username']=$UserName;
            $_SESSION['pw']=$Password;
        header("location:users.php");
      exit();
  }else{
    header("location:login.php?error=incorrect userName or password");
    exit();
     
       }

}
}
?>







<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Education Admin | Login/Register</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="" method="post">
              <h1>Login Form</h1>
            
              <div>
                <input type="text" class="form-control" placeholder="Username" required=''  name="UserName"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password"  required='' name="Password"/>
              </div>
              <div>
                <button class="btn btn-default submit" name="login">Log in</button>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                <button type="submit"  class="btn btn-default"><a href="#signup" class="to_register"> Create Account </a></button>

                </p>
                <?php if(isset($_GET['error'])){?>
                  <p style="color: red;"><?php echo $_GET['error'];?></p>
                  <?php } ?>
                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Education Admin</h1>
                  <p>©2016 All Rights Reserved. Education Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form action="./login.php" method="post">
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Fullname" required="" name="Fullname"/>
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name="Username"/>
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" name="email"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name="password"/>
              </div>
              <div>
                <button name="signup" class="btn btn-default submit">Submit</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
      

                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Education Admin</h1>
                  <p>©2016 All Rights Reserved. Education Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
