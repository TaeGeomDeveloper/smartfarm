package smartfarm.vo;

import java.sql.Timestamp;

public class MemberVO {
	
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String b_num;
	private String phone;
	private String l_phone;
	private String address;
	private String d_address;
	private int postal_code;
	private String r_num;
	private String member_type;
	private String business;
	private Timestamp join_date;
	
	public MemberVO() {}
	
	public MemberVO(String id, String pwd, String name, String email, String b_num, String phone, String l_phone, String address, String d_address, int postal_code,
                    String r_num, String member_type, String business, Timestamp join_date) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.b_num = b_num;
		this.phone = phone;
		this.l_phone = l_phone;
		this.address = address;
		this.d_address = d_address;
		this.postal_code = postal_code;
		this.r_num = r_num;
		this.member_type = member_type;
		this.business = business;
		this.join_date = join_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getB_num() {
		return b_num;
	}

	public void setB_num(String b_num) {
		this.b_num = b_num;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getL_phone() {
		return l_phone;
	}

	public void setL_phone(String l_phone) {
		this.l_phone = l_phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getD_address() {
		return d_address;
	}

	public void setD_address(String d_address) {
		this.d_address = d_address;
	}

	public int getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(int postal_code) {
		this.postal_code = postal_code;
	}

	public String getR_num() {
		return r_num;
	}

	public void setR_num(String r_num) {
		this.r_num = r_num;
	}

	public String getMember_type() {
		return member_type;
	}

	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}
	
	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public Timestamp getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Timestamp join_date) {
		this.join_date = join_date;
	}
	
	
}
