var waterStatus = function(temperature) {	
	if (temperature <= 32) {
		return "Frozen";
	}
	else if (temperature > 32 && temperature < 212) {
		return "Normal";
	}
	else if (temperature >= 212) {
		return "Boiling";
	}
	else {
		return "That is not a valid temperature";
	}
}