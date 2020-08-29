package Address_book;

public class Contact {
	
	String first_name;
	String last_name;
	String address;
	String city;
	String state;
	String zip_code;
	String mobile_no;
	String email_id;
	public Contact(String first_name,	String last_name,	String address,	String city,	String state,
			String zip_code,	String mobile_no,	String email_id) {
		// Creates a contact containing all the pertinent data concerning the person
		this.first_name = first_name;
		this.last_name = last_name;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zip_code = zip_code;
		this.mobile_no = mobile_no;
		this.email_id = email_id;
	}
	
	public Contact() {
		// TODO Creates a contact with all fields/properties empty 
	}

	public String get_name(){
		return this.first_name+" "+this.last_name;
	}

	public void set_address(String address) {
		this.address = address;
	}
	public String get_address() {		
		return this.address;
	}

	public void set_city(String city) {
		this.city = city;
	}
	public String get_city() {		
		return this.city;
	}
	
	public void set_state(String state) {
		this.state = state;
	}
	public String get_state() {		
		return this.state;
	}
	
	public void set_zip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String get_zip_code() {		
		return this.zip_code;
	}
	
	public void set_mobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String get_mobile_no() {		
		return this.mobile_no;
	}
	
	public void set_email_id(String email_id) {
		this.email_id = email_id;
	}
	public String get_email_id() {		
		return this.email_id;
	}
}