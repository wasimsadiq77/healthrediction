<?php
include_once 'config.php';
if(isset($_POST['save']))
{	 
	 $username = $_POST['username'];
	 $email = $_POST['email'];
	 $age = $_POST['age'];
	 $fever = $_POST['fever'];
	 $cough = $_POST['cough'];
	 $chills = $_POST['chills'];
	 $dehydration = $_POST['dehydration'];
	 $fatigue = $_POST['fatigue'];
	 $vomiting = $_POST['vomiting'];
	 $diarrhea = $_POST['diarrhea'];
	 $headache = $_POST['headache'];
	 $chestpain = $_POST['chestpain'];
	 $runny = $_POST['runny'];
	 $sorethroat = $_POST['sorethroat'];
	 $asthma = $_POST['asthma'];
	 $diabetes = $_POST['diabetes'];
	 $heartdisease = $_POST['heartdisease'];
	 $lungdisease = $_POST['lungdisease'];
	 $sql = "INSERT INTO quickconsult (username,email,age,fever,cough,chills,dehydration,fatigue,vomiting,diarrhea,headache,chestpain,runny,sorethroat,asthma,diabetes,heartdisease,lungdisease)
	 VALUES ('$username','$email','$age','$fever','$cough','$chills','$dehydration','$fatigue','$vomiting','$diarrhea','$headache','$chestpain','$runny','$sorethroat','$asthma','$diabetes','$heartdisease','$lungdisease')";
	 if (mysqli_query($link, $sql)) {
		echo "New record created successfully !";
		header("location: dp.php");
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($link);
	 }
	 mysqli_close($link);
}
?>