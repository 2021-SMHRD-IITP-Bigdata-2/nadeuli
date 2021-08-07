package Model;

public class PlaceDTO {
	
	private String city_name;
	private String p_name;
	private String p_address;
	private String p_tel;
	private String p_url;
	private String p_img;
	
	public PlaceDTO() {};
	
	public PlaceDTO(String city_name, String p_name, String p_address, String p_tel, String p_url, String p_img) {
		this.city_name = city_name;
		this.p_name = p_name;
		this.p_address = p_address;
		this.p_tel = p_tel;
		this.p_url = p_url;
		this.p_img = p_img;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}

	public String getP_tel() {
		return p_tel;
	}

	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}

	public String getP_url() {
		return p_url;
	}

	public void setP_url(String p_url) {
		this.p_url = p_url;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	@Override
	public String toString() {
		return "PlaceDTO [city_name=" + city_name + ", p_name=" + p_name + ", p_address=" + p_address + ", p_tel="
				+ p_tel + ", p_url=" + p_url + ", p_img=" + p_img + "]";
	}
	
	
	
	
	

}
