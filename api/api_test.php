<?php
	/*
	The goal of the script below is testing the REST api (action.php) available on http://assaf.x10.mx/globality/api/
	api folder contains a method named action.php. For the sake of our practice we created a function named get_list 
	which requires a value of total results wanted. in the example below we have sent a request from the server for last 
	10 results in the db.
	*/

	//Getting json response from action.php which contains get_list function.
	$jsonResponse = file_get_contents('http://assaf.x10.mx/globality/api/get_list?length=20');

	//decoding json content - using "true" as our content is organized in an array and not objects.
	$response = json_decode($jsonResponse,true);

	//printing json content. <pre> tags are used for readability.
	echo "Printing json content:</br>";
	echo "<pre>" . $jsonResponse . "</pre>";
	echo "End of json content!</br></br>";

	//Verified content was encoded successfully
	echo "Testing parsed data from encoded json data...</br>";
	$i=1;
	foreach($response as $result){
		echo $i . ". title: " .  $result['title'] . "</br>";
		$i++;
	}
?>