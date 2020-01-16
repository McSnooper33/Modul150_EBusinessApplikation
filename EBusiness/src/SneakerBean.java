import login.dbo.Serializable;

public class SneakerBean implements Serializable{

	private String artikelName;
	private String artikelBeschreibung;
	private String artikelPreis;
	
	public String getArtikelName() {
		return artikelName;
	}
	public void setArtikelName(String artikelName) {
		this.artikelName = artikelName;
	}
	public String getArtikelBeschreibung() {
		return artikelBeschreibung;
	}
	public void setArtikelBeschreibung(String artikelBeschreibung) {
		this.artikelBeschreibung = artikelBeschreibung;
	}
	public String getArtikelPreis() {
		return artikelPreis;
	}
	public void setArtikelpreis(String artikelPreis) {
		this.artikelPreis = artikelPreis;
	}
	
	
	
}
