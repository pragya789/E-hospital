function validateForm() {
	var patient = document.forms["appointment"]["patient"].value;
	var doctor = document.forms["appointment"]["doctor"].value;
	var date = document.forms["appointment"]["date"].value;
	var time = document.forms["appointment"]["time"].value;
	if (patient == "" || doctor == "" || date == "" || time == "") {
		alert("Please fill in all fields.");
		return false;
	}
}
