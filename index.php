<!DOCTYPE html>
<?php
	//connecting to local db
	require_once("connect.php");
	//getting first batch of results (20) from the db.
	$results = mysql_query("SELECT * FROM posts ORDER BY id DESC limit 20");
	//calculating total results in db
	$count = mysql_query("SELECT * FROM posts");
	$totalResults = mysql_num_rows($count);
?>

<html>
	<head>
		<title>Element list</title>
	</head>
	<body>
		<h1>Globality Exercise</h1>
		Currently, there are total of <?php echo $totalResults ;?> results in the db.
		<div class='posts'>
			<?php
				if ($totalResults>0){
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
				}
			?>
			
		</div>
		<!-- loader class which will on shown while AJAX runs -->
		<div class='loader'>
			<img src='images/loader.gif'>
		</div>
		<!-- messages class which will be presented in the end of the list -->
		<div class='messages'></div>
		
		<script src='js/jquery.js'></script>
		<script>
			$(document).ready(function(){
				$('.loader').hide();
				var load=0;
				var totalResults="<?php echo $totalResults;?>";
				$(window).scroll(function(){
					// Below is the condition which determines when the user has scrolled the window to the bottom of the page.
					if($(window).scrollTop() ==	$(document).height() - $(window).height())
					{
						load++;
						//once the total results which were loaded so far exceeds to total of results, a proper message will be shown.
						if (load * 20 > totalResults)
						{
							$('.messages').text("No more posts");
							$('.loader').hide();
						//in case there are still posts which were not presented, 
						//loader will be shown and we will call ajax.php which will load more content from db
						//data will be added to the page by appending ajax output to posts class
						}else{

							$('.loader').show();
							$.post("ajax.php",{load:load},function(data){
								$('.posts').append(data);
								$('.loader').hide();
							})
						}
					}
				})
			});
		</script>
	</body>
</html>