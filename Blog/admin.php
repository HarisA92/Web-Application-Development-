<?php
include 'includes/header.php';
require 'includes/db.php';
session_start();
if(!isset($_SESSION['admin'])){
	//if there is no session admin then is regular user
	echo'PAGE RESTRICTED FOR REGULAR USER';
	echo "<script>setTimeout(\"location.href = 'blog.php';\",3000);</script>";
}
else {
	//admin user
	if((time() - $_SESSION['time_start_login']) > 3600) {
		header('Location: logout.php');
	} else {
		$_SESSION['time_start_login'] = time();
	}
?>
<h1>Not approved messages!</h1>
<table class = "table table-bordered">
	<tr>
		<th>Nickname</th>
		<th>Message</th>
		<th>Email</th>
		<th>Website</th>
		<th>Approved</th>
	<tr>
	<?php
	//show messages that are not approved
		$display_messages_query = 'SELECT * FROM messages where approved=0';
		$stmt_messages = $dbh->query($display_messages_query);
		while($row = $stmt_messages->fetch()){
    ?>
    <tr>
		<td><?php echo $row['nickname']; ?></td>
		<td><?php echo $row['message']; ?></td>
		<td><?php echo $row['email_address']; ?></td>
		<td><?php echo $row['web_site']; ?></td>
		<?php echo "<td><a href=\"approve.php?id=$row[id]\">Approve</a> | <a href=\"deny.php?id=$row[id]\" onClick=\"return confirm('Are you sure about that?')\">Deny</a></td>"; ?>
	</tr>
    <?php
    }
	?>
</table>

<h1>Approved messages!</h1>
<table class = "table table-bordered">
	<tr>
		<th>Nickname</th>
		<th>Message</th>
		<th>Email</th>
		<th>Website</th>
		<th>Edit</th>
	<tr>
	<?php
	//show messages where are approved
		$display_messages_query = 'SELECT * FROM messages where approved=1';
		$stmt_messages = $dbh->query($display_messages_query);
		while($row = $stmt_messages->fetch()){
			//fetch function to retrieve result from database
    ?>
    <tr>
		<td><?php echo $row['nickname']; ?></td>
		<td><?php echo $row['message']; ?></td>
		<td><?php echo $row['email_address']; ?></td>
		<td><?php echo $row['web_site']; ?></td>
		<?php echo "<td><a href=\"edit.php?id=$row[id]\">Edit</a> | <a href=\"delete.php?id=$row[id]\" onClick=\"return confirm('Are you sure about that?')\">Delete</a></td>"; ?>
	</tr>
    <?php
    }
	?>
</table>
<?php }?>