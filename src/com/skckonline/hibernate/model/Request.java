package com.skckonline.hibernate.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ps_request")
public class Request {
	
	@Id
	@Column(name = "req_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "req_arrival")
	private Date date_arrival;
	
	@Column(name = "req_fullname")
	private String fullname;
	
	@Column(name = "req_type")
	private String request_type;
	
	@Column(name = "req_citizenship")
	private String citizenship;
	
	@Column(name = "req_identity_type")
	private String identity_type;
	
	@Column(name = "req_identity_number")
	private String identity_number;
	
	@Column(name = "req_nik")
	private String ktp_nik;
	
	@Column(name = "req_name")
	private String ktp_name;
	
	@Column(name = "req_birthplace")
	private String ktp_birthplace;
	
	@Column(name = "req_birthdate")
	private Date ktp_birthdate;

	@Column(name = "req_gender")
	private String ktp_gender;
	
	@Column(name = "req_address")
	private String ktp_address;
	
	@Column(name = "req_rt")
	private String ktp_rt;
	
	@Column(name = "req_rw")
	private String ktp_rw;
	
	@Column(name = "req_village")
	private String ktp_village;
	
	@Column(name = "req_districts")
	private String ktp_districts;
	
	@Column(name = "req_religion")
	private String ktp_religion;
	
	@Column(name = "req_job")
	private String ktp_job;
	
	@Column(name = "req_passport")
	private String passport;

	@Column(name = "req_liveStart")
	private Date live_start;
	
	@Column(name = "req_liveEnd")
	private Date live_end;
	
	@Column(name = "req_need")
	private String need_for;
	
	@Column(name = "req_other")
	private String other;
	
	@Column(name = "req_queue")
	private String queue;
	
	@Column(name = "req_ctime")
	private Date ctime;
	
	@Column(name = "req_status")
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate_arrival() {
		return date_arrival;
	}
	public void setDate_arrival(Date date_arrival) {
		this.date_arrival = date_arrival;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getRequest_type() {
		return request_type;
	}
	public void setRequest_type(String request_type) {
		this.request_type = request_type;
	}
	public String getCitizenship() {
		return citizenship;
	}
	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	public String getIdentity_type() {
		return identity_type;
	}
	public void setIdentity_type(String identity_type) {
		this.identity_type = identity_type;
	}
	public String getIdentity_number() {
		return identity_number;
	}
	public void setIdentity_number(String identity_number) {
		this.identity_number = identity_number;
	}
	public String getKtp_nik() {
		return ktp_nik;
	}
	public void setKtp_nik(String ktp_nik) {
		this.ktp_nik = ktp_nik;
	}
	public String getKtp_name() {
		return ktp_name;
	}
	public void setKtp_name(String ktp_name) {
		this.ktp_name = ktp_name;
	}
	public String getKtp_birthplace() {
		return ktp_birthplace;
	}
	public void setKtp_birthplace(String ktp_birthplace) {
		this.ktp_birthplace = ktp_birthplace;
	}
	public Date getKtp_birthdate() {
		return ktp_birthdate;
	}
	public void setKtp_birthdate(Date ktp_birthdate) {
		this.ktp_birthdate = ktp_birthdate;
	}
	public String getKtp_gender() {
		return ktp_gender;
	}
	public void setKtp_gender(String ktp_gender) {
		this.ktp_gender = ktp_gender;
	}
	public String getKtp_address() {
		return ktp_address;
	}
	public void setKtp_address(String ktp_address) {
		this.ktp_address = ktp_address;
	}
	public String getKtp_rt() {
		return ktp_rt;
	}
	public void setKtp_rt(String ktp_rt) {
		this.ktp_rt = ktp_rt;
	}
	public String getKtp_rw() {
		return ktp_rw;
	}
	public void setKtp_rw(String ktp_rw) {
		this.ktp_rw = ktp_rw;
	}
	public String getKtp_village() {
		return ktp_village;
	}
	public void setKtp_village(String ktp_village) {
		this.ktp_village = ktp_village;
	}
	public String getKtp_districts() {
		return ktp_districts;
	}
	public void setKtp_districts(String ktp_districts) {
		this.ktp_districts = ktp_districts;
	}
	public String getKtp_religion() {
		return ktp_religion;
	}
	public void setKtp_religion(String ktp_religion) {
		this.ktp_religion = ktp_religion;
	}
	public String getKtp_job() {
		return ktp_job;
	}
	public void setKtp_job(String ktp_job) {
		this.ktp_job = ktp_job;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public Date getLive_start() {
		return live_start;
	}
	public void setLive_start(Date live_start) {
		this.live_start = live_start;
	}
	public Date getLive_end() {
		return live_end;
	}
	public void setLive_end(Date live_end) {
		this.live_end = live_end;
	}
	public String getNeed_for() {
		return need_for;
	}
	public void setNeed_for(String need_for) {
		this.need_for = need_for;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getQueue() {
		return queue;
	}
	public void setQueue(String queue) {
		this.queue = queue;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
