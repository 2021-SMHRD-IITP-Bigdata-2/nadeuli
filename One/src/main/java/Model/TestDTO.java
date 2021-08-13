package Model;

public class TestDTO {
	
	private String city_name;
	private int cnt;
	
	public TestDTO() {}

	public TestDTO(String city_name, int cnt) {
		this.city_name = city_name;
		this.cnt = cnt;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "TestDTO [city_name=" + city_name + ", cnt=" + cnt + "]";
	}
	
	
	
	
	
	
	
	
	

}
