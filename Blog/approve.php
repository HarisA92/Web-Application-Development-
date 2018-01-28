<?php

session_start();
// if its not admin this site wont be shown to regular user, after 3 sec will you redict to blog.php
if(!isset($_SESSION['admin'])){
	echo'PAGE RESTRICTED FOR REGULAR USER';
	echo "<script>setTimeout(\"location.href = '../blog.php';\",3000);</script>";
}
else {
	//comment from user will be approved by admin and return to admin page
	require 'includes/db.php';
	$id = $_GET['id'];
	$sql = "update messages set approved='1' WHERE id=:ID";
	$query = $dbh->prepare($sql);
	$query->execute(['ID'=>$id]);
	header('Location: admin.php');
}