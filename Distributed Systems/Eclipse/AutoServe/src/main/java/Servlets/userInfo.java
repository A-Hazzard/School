package Servlets;

public class userInfo {
<<<<<<< HEAD
	protected String firstname, lastname, email, phone,  password;
=======
	protected String firstname, lastname, email, phone, password;
>>>>>>> parent of 4e0e58a (backed up eclipse folders)
	
	public userInfo(String _fname, String _lname, String _email, String _phone, String _pwd) {
		this.firstname = _fname;
		this.lastname = _lname;
		this.email = _email;
		this.phone = _phone;
		this.password = _pwd;
	
	}
	
	public String getFirstName() {return this.firstname;}
	
	public String getLastName() {return this.lastname;}
	
	public String getEmail() {return this.email;}
	
	public String getPhone() {return this.phone;}
	
<<<<<<< HEAD

	
=======
>>>>>>> parent of 4e0e58a (backed up eclipse folders)
	public String getPassword() {return this.password;}

}
