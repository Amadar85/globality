<?php

	//client request
	header("Content-Type: application/json");
	if (!empty($_GET['length'])){
		//core functionality
		$length = $_GET['length'];
		if ((int)$length>0)
		{
			//running deliver_response function
			deliver_response($length);
			//error(400,"Failed","Could not complete request - Length value must be greater than 0");
		}else
		{
			error(400,"Failed","Could not complete request - Length value must be greater than 0");
		}
	}else if(!isset($_GET['length'])){
		deliver_response(0);
	}else{
		error(400,"Failed","Could not complete request - Length value must be greater than 0");
	}


	
	function error($status, $status_message,$data)
	{
		// header("HTTP/1.1 $status $status_message");
		$response['status']=[$status];
		$response['status_message']=[$status_message];
		$response['data']=[$data];
		
		$json_response=json_encode($response, JSON_PRETTY_PRINT);
		echo $json_response;
	}
	function deliver_response($length)
	{
		include_once('connect.php');
		// $results = mysqli_query($connect,"SELECT * FROM kids ORDER BY id DESC");
		//if length variable exists
		if ($length==0)
		{
			$results = mysql_query("SELECT * FROM posts ORDER BY id DESC");
		}else{
			$results = mysql_query("SELECT * FROM posts ORDER BY id DESC LIMIT " . $length);	
		}

		$i=0;
		while($row = mysql_fetch_array($results))
		{
			$i++;
			//echo $i;
			
			$newdata = array(
				  'title' => $row['TITLE'],
				  'blurb' => $row['BLURB'],
				  'author' => $row['AUTHOR'],
				  'thumbnail_url' => $row['THUMBNAIL_URL'],
				  'details_url' => $row['DETAILS_URL']
			);
			$responseTree[] = $newdata;
		}
		$json_response=json_encode($responseTree, JSON_PRETTY_PRINT);
		echo $json_response;
	}
?>