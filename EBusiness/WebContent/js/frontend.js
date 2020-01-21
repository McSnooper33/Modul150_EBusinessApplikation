var currentSneaker = null;

var getUrlParameter = function getUrlParameter(sParam) {
	var sPageURL = window.location.search.substring(1), sURLVariables = sPageURL
			.split('&'), sParameterName, i;

	for (i = 0; i < sURLVariables.length; i++) {
		sParameterName = sURLVariables[i].split('=');

		if (sParameterName[0] === sParam) {
			return sParameterName[1] === undefined ? true
					: decodeURIComponent(sParameterName[1]);
		}
	}
};

$(document)
		.ready(
				function() {
					var detailsId = getUrlParameter('detailsId');

					fetch(
							'http://localhost:3000/api/getSneakerDetails?detailsId='
									+ detailsId)
							.then(function(response) {
								return response.json();
							})
							.then(
									function(json) {
										currentSneaker = json;
										document
												.getElementById('detailPicture').innerHTML = '<img src="Images/'
												+ currentSneaker.artikelNr
												+ '.jpg" >';
										document.getElementById('detailName').innerHTML = currentSneaker.artikelName;
										document
												.getElementById('detailDescription').innerHTML = currentSneaker.artikelBeschreibung;
										document.getElementById('detailPrice').innerHTML = currentSneaker.preis;
									});
				});

function addProduct() {
	console.log(currentSneaker);
	var warenkorb = JSON.parse(window.localStorage.getItem("warenkorb"));
	if (warenkorb === null || warenkorb[0] === null) {
		warenkorb = [];
	}
	warenkorb.push(currentSneaker);
	console.log(warenkorb);
	window.localStorage.setItem("warenkorb", JSON.parse(warenkorb));

}

/*$(document)
		.ready(
				function() {
					var warenkorb = JSON.parse(window.localStorage
							.getItem("warenkorb"));
					console.log(warenkorb);
					for (var currentWarenkorbItem = 0; currentWarenkorbItem < warenkorb
							.size(); currentWarenkorbItem + 1) {
						$('#content')
								.append(
										"<table><tr><td><div id='warenkorbPicture'"
												+ currentWarenkorbItem
												+ " class='warenkorbListe'></div></td></tr><tr><td><div id='warenkorbBezeichnung'"
												+ currentWarenkorbItem
												+ " class='warenkorbListe'></div></td></tr><tr><td><div id='warenkorbPreis'"
												+ currentWarenkorbItem
												+ " class='warenkorbListe'></div></td></tr></table>")

						document.getElementById('warenkorbPicture'
								+ currentWarenkorbItem).innerHTML = '<img src="Images/'
								+ warenkorb[currentWarenkorbItem].getArtikelNr
								+ '.jpg" >';
						document.getElementById('warenkorbName'
								+ currentWarenkorbItem).innerHTML = warenkorb[currentWarenkorbItem].getArtikelName;
						document.getElementById('warenkorbPrice'
								+ currentWarenkorbItem).innerHTML = warenkorb[currentWarenkorbItem].getPreis;
					}
					;
				});
*/