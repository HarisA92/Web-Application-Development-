<?php
include 'includes/header.php';
require 'includes/db.php';

function escape($string) {
	return htmlentities($string, ENT_QUOTES, 'UTF-8');
}

function required($string) {
	return strlen($string)>3;
}
?>
<form action = "guestbook.php" method = "POST" class="form-horizontal">
  <div class="form-group">
    <label for="nickname" class="col-sm-2 control-label">Nickname</label>
    <div class="col-sm-10">
      <input type="text" name = "nickname" class="form-control" id="nickname">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="text" name = "email_address" class="form-control" id="email_address">
    </div>
  </div>
  <div class="form-group">
    <label for="website" class="col-sm-2 control-label">Website</label>
    <div class="col-sm-10">
      <input type="text" name = "web_site" class="form-control" id="web_site">
    </div>
  </div>
  <div class="form-group">
    <label for="message" class="col-sm-2 control-label">Message</label>
    <div class="col-sm-10">
      <input type="text" name = "message" class="form-control" id="message">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name = "submit" id = "submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>


<table class = "table table-bordered">
	<tr>
		<th>Nickname</th> 
		<th>Email</th>
		<th>Website</th>
		<th>Message</th>

	<tr>	
	<?php
	//if approved 0 it wont show messages, admin page
		$display_messages_query = 'SELECT * FROM messages where approved=1';
		$stmt_messages = $dbh->query($display_messages_query);
		while($row = $stmt_messages->fetch()){
    ?>
    <tr>
		<td><?php echo $row['nickname']; ?></td>
		<td><?php echo $row['email_address']; ?></td>
		<td><?php echo $row['web_site']; ?></td>
		<td><?php echo $row['message']; ?></td>
	</tr>
    <?php
    }
	?>
</table>

<?php
	if (isset($_POST['submit'])) {
		
		$nickname = escape($_POST['nickname']);		
		if (!filter_var($email_address = escape($_POST['email_address']), FILTER_VALIDATE_EMAIL)) {		
			echo '<script type = "text/javascript"> alert("Email format is not validate")</script>';
		}
		$web_site = escape($_POST['web_site']);
		$message = escape($_POST['message']);
		
		if (required($nickname) && required($email_address) && required($web_site) && required($message)) {
			//placeholder for variables that will be forwarded into database and input will be checked in array downbelow written
			$guestbook_query = "insert into messages (nickname,email_address,web_site,message,approved,datum) VALUES (?,?,?,?,?,?)";
			// prepare function where will be forwarded query variable
			$stmt = $dbh->prepare($guestbook_query);
			$approved = '0';
			$date = date('Y-m-d H:i:s');

			if ($stmt->execute(array($nickname,$email_address,$web_site,$message,$approved,$date))){}
			else {
				echo "\nPDO::errorInfo():\n";
				print_r($dbh->errorInfo());
			}
		}
		else {
			echo '<script type = "text/javascript">alert("All fields are required and should have more than 3 characters")</script>';
		}
	}
	
?>

<?php
include 'includes/footer.php';
?>

