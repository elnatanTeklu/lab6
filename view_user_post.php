<?php # Script 9.6 - view_users.php #2
// This script retrieves all the records from the users table.

$page_title = 'View the Current Users';
include('includes/header.html');

// Page header:
echo '<h1>Registered Users</h1>';

echo "<pre>";
print_r($_POST);
echo "</pre>";

require('mysqli_connect.php'); // Connect to the db.

// Make the query:
$q = "SELECT forums.name AS forum, messages.subject AS subject, messages.body AS message FROM messages INNER JOIN forums ON messages.forum_id=forums.forum_id WHERE messages.user_id = 1"; 
$r = @mysqli_query($dbc, $q); // Run the query.

// Count the number of returned rows:
$num = mysqli_num_rows($r);

if ($num > 0) { // If it ran OK, display the records.

	// Print how many users there are:
	echo "<p>There are currently $num registered users.</p>\n";

	// Table header.
	echo '<table width="60%">
	<thead>
	<tr>
		<th align="left">forum</th>
		<th align="left">subject</th>
	</tr>
	</thead>
	<tbody>
';

	// Fetch and print all the records:
	while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
		echo '<tr><td align="left">' . $row['forum'] . '</td><td align="left">' . $row['subject'] . '</td><td align="left">' . $row['message'] . '</td></tr>
		';
	}

	echo '</tbody></table>'; // Close the table.

	mysqli_free_result ($r); // Free up the resources.

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered users.</p>';

}

mysqli_close($dbc); // Close the database connection.

include('includes/footer.html');
?>