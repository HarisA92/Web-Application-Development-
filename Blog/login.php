<?php
include 'includes/header.php';
?>
<head>
<title>Login form</title>
</head>
<body>
	<h2> Admin </h2>
<form action="" method="POST" class="form-inline">
  <div class="form-group">
    <label for="exampleInputName2">Name</label>
    <input type="text" class="form-control" name="username" id="exampleInputName2">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail2">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputEmail2">
  </div>
  <input type="submit" class="btn btn-default" value="Login" name="submit"/>
</form>
</body>
</html>



<?php

function escape($string) {
	return htmlentities($string, ENT_QUOTES, 'UTF-8');
}

if(isset($_POST['submit'])){
	$user = escape($_POST['username']);
	$pass = escape($_POST['password']);
	$messeg = "";

	if(empty($user) || empty($pass)) {
		$messeg = "Username/Password can't be empty";
	} else {
		require 'includes/db.php';
		$sql = "SELECT username,password,grupa FROM login WHERE username=:USERNAME AND password=:PASS";
		$query = $dbh->prepare($sql);
		$query->execute(['USERNAME'=>$user, 'PASS'=>$pass]);
		$row = $query->fetch();
		session_start();
		if(count($row) >= 1) {
			$group = $row['grupa'];
			if ($group == 1) {
				$_SESSION['user'] = $user;
				$_SESSION['time_start_login'] = time();
				echo '<script>alert("Welcome User!")</script>';
				header('refresh:1; url=blog.php');
			}
			else if ($group == 2) {
				$user = 'admin';
				$_SESSION['admin'] = $user;
				$_SESSION['time_start_login'] = time();
				echo '<script>alert("Welcome Admin!")</script>';
				header("refresh:1; url=admin.php");
			}
		}
		else {
			echo '<script>alert("Username or Password not correct!")</script>';
			header("refresh:1; url=login.php");
		}
	}
}
?>
<?php
include 'includes/footer.php';
?>