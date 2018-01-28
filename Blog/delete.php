<?php

session_start();
if(!isset($_SESSION['admin'])){
	// if its not admin this site wont be shown to regular user, after 3 sec will you redict to blog.php
	echo'PAGE RESTRICTED FOR REGULAR USER';
	echo "<script>setTimeout(\"location.href = '../blog.php';\",3000);</script>";
}
else {
	//comment of user will be deleted by admin
	require 'includes/db.php';
	$id = $_GET['id'];
	$sql = "delete from messages WHERE id=:ID";
	$query = $dbh->prepare($sql);
	$query->execute(['ID'=>$id]);
	header('Location: admin.php');
}