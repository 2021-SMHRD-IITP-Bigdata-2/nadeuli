package Model;

public class RestaurantDTO {
	
	private int r_number;
	private String city_name;
	private String r_name;
	private String r_address;
	private String r_tel;
	private String r_type;
	
	public RestaurantDTO() {}

	public RestaurantDTO(int r_number, String city_name, String r_name, String r_address, String r_tel, String r_type) {
		this.r_number = r_number;
		this.city_name = city_name;
		this.r_name = r_name;
		this.r_address = r_address;
		this.r_tel = r_tel;
		this.r_type = r_type;
	}

	public int getR_number() {
		return r_number;
	}

	public void setR_number(int r_number) {
		this.r_number = r_number;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_address() {
		return r_address;
	}

	public void setR_address(String r_address) {
		this.r_address = r_address;
	}

	public String getR_tel() {
		return r_tel;
	}

	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}

	public String getR_type() {
		return r_type;
	}

	public void setR_type(String r_type) {
		this.r_type = r_type;
	}

	@Override
	public String toString() {
		return "RestaurantDTO [r_number=" + r_number + ", city_name=" + city_name + ", r_name=" + r_name
				+ ", r_address=" + r_address + ", r_tel=" + r_tel + ", r_type=" + r_type + "]";
	}
	
	
	
	

}
