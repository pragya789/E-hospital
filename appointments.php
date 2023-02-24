<?php
	// Connect to database
	$host = "localhost";
	$user = "root";
	$password = "";
	$database = "ehospital";
	$conn = mysqli_connect($host, $user, $password, $database);

	// Handle appointment form submission
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$patient = $_POST["patient"];
		$doctor = $_POST["doctor"];
		$date = $_POST["date"];
		$time = $_POST["time"];

		$sql = "INSERT INTO appointments (patient, doctor, date, time) VALUES ('$patient', '$doctor', '$date', '$time')";
		mysqli_query($conn, $sql);

		header("Location: appointments.php");
		exit;
	}

	// Get list of appointments
	$sql = "SELECT * FROM appointments";
	$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>
<head>
	<title>E-Hospital | Appointments</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="script.js"></script>
</head>
