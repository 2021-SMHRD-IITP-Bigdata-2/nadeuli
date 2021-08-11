package Model;

public class testDTO {
	
	private String city_name;
	private String tags;
	private String s_date;
	
	public testDTO() {}

	public testDTO(String city_name, String tags, String s_date) {
		this.city_name = city_name;
		this.tags = tags;
		this.s_date = s_date;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	@Override
	public String toString() {
		return "testDTO [city_name=" + city_name + ", tags=" + tags + ", s_date=" + s_date + "]";
	}
	
	
	
	
	

}
