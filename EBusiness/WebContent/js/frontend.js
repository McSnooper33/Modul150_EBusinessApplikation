var currentSneaker = null;

	var getUrlParameter = function getUrlParameter(sParam) {
	    var sPageURL = window.location.search.substring(1),
	        sURLVariables = sPageURL.split('&'),
	        sParameterName,
	        i;
	
	    for (i = 0; i < sURLVariables.length; i++) {
	        sParameterName = sURLVariables[i].split('=');
	
	        if (sParameterName[0] === sParam) {
	            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
	        }
	    }
	};

	$(document).ready(function() {
		var detailsId = getUrlParameter('detailsId');
	
		fetch('http://localhost:3000/api/getSneakerDetails?detailsId=' + detailsId)
			.then(function(response){
				currentSneaker = response.json()[0];
				document.getElementById('detailPicture').innerHTML = '<img src="Images/' + currentSneaker.artikelNr + '.jpg" >';
				document.getElementById('detailName').innerHTML = currentSneaker.artikelName;
				document.getElementById('detailDescription').innerHTML = currentSneaker.artikelBeschreibung;
				document.getElementById('detailPrice').innerHTML = currentSneaker.preis;
			});
	});
	
	function addProduct(){
		var warenkorb = JSON.parse(Window.localStorage.getItem("warenkorb"));
		if(typeof warenkorb === "undefined"){
			warenkorb = [];
		}
		warenkorb.push(currentSneaker);
		Window.localStorage.setItem("warenkorb", JSON.parse(warenkorb));
	}