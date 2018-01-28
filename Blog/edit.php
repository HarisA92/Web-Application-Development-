<?php
$id = $_GET['id'];
require 'includes/db.php';
include 'includes/header.php';

$sql = "SELECT nickname,message,email_address,web_site FROM messages WHERE id=:ID";
$query = $dbh->prepare($sql);
$query->execute(['ID'=>$id]);
$row = $query->fetch();
$nickname = $row['nickname'];
$message = $row['message'];
$email_address = $row['email_address'];
$web_site = $row['web_site'];
?>

 

<form id = "editform" name="form1" method="post" action="">
    <table border="0">
        <tr>
            <td>Nickname</td>
            <td><input class = "form-control" type = "text" name = "nickname" placeholder = <?php echo $nickname;?>></td>
        </tr>
        <tr>
            <td>Message</td>
            <td><input class = "form-control" type = "text" name = "message" placeholder = <?php echo $message;?>></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input class = "form-control" type = "text" name = "email_address" placeholder = "<?php echo $email_address;?>"></textarea></td>
        </tr>
		<tr>
            <td>Website</td>
            <td><input class = "form-control" type = "text" name = "web_site" placeholder = "<?php echo $web_site;?>"></textarea></td>
        </tr>
        <tr>
            <td><input class = "btn btn-primary" type = "submit" name = "update" value = "Update"></td>
            <td><input class = "btn btn-default" type = "submit" name = "home" value = "Home" /></td>
        </tr>
		<tr>
            <td><input type = "hidden" name = "id" value = <?php echo $_GET['id'];?>></td>
        </tr>
    </table>
</form>


<?php

if (isset($_POST['home'])){
	header('Location: admin.php');
}

function escape($string) {
	return htmlentities($string, ENT_QUOTES, 'UTF-8');
}
//update guest user input
if(isset($_POST['update'])) {
	require '../includes/db.php';
	$id = escape($_POST['id']);
    $nickname = escape($_POST['nickname']);
    $message = escape($_POST['message']);
    $email_address= escape($_POST['email_address']);
    $web_site = escape($_POST['web_site']);

    // checking empty fields
    if(empty($nickname) || empty($message) || empty($email_address) || empty($web_site)) {

        if(empty($nickname)) {
            echo "<color='red'>Nickname field is empty.</font><br/>";
        }

        if(empty($message)) {
            echo "<color='red'>Message field is empty.</font><br/>";
        }

        if(empty($email_address)) {
            echo "<color='red'>Email field is empty.</font><br/>";
        }
		
		if(empty($web_site)) {
            echo "<color='red'>Website field is empty.</font><br/>";
        }
		
    } else {
        $sql = "update messages set nickname='".$nickname."',message='".$message."',email_address='".$email_address."',web_site='".$web_site."' WHERE id=:ID";
		$query = $dbh->prepare($sql);
		$query->execute(['ID'=>$id]);
		header('Location: admin.php');
    }
}
?>
<?php
include 'includes/footer.php';
?>