<?php
	//connect to local db and print next batch of results.
	require_once('connect.php');
	$load=htmlentities(strip_tags($_POST['load']))*20;
	$sql="SELECT * FROM posts ORDER BY ID DESC LIMIT ".$load.",20";
	$results = mysql_query($sql);
	while($row = mysql_fetch_array($results))
	{
		?>					
			<p>
				<img src="images/1.jpg" height="60" width="60">
				<?php echo "Title: " . $row['TITLE'];?> 
				<?php echo "| Blurb: "; echo strlen($row['BLURB']) > 32 ? substr($row['BLURB'],0,32)."..." : $row['BLURB']; ?> 
				<a href="<?php echo $row['DETAILS_URL'];?>" target="_blank">Read more</a>
			</p>
		<?php
	}
?>