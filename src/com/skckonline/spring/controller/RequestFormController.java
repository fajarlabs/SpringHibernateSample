package com.skckonline.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.skckonline.hibernate.dao.RegisterDAOImpl;
import com.skckonline.hibernate.model.Request;
import com.skckonline.hibernate.model.User;
import com.skckonline.model.AppMessageError;
import com.skckonline.util.DateFormat;
import com.skckonline.util.FileUpload;
import com.skckonline.util.Sanitize;

@Controller
@RequestMapping("/formulir-registrasi")
public class RequestFormController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model,HttpServletRequest request) {
		String redirect;
		HttpSession sessionObj = request.getSession();
		User LoginStatus = (User) sessionObj.getAttribute("LoginStatus");
		if(LoginStatus != null)
			redirect = "form_register";
		else
			redirect = "login";
		
		return redirect;
	}
	
	@RequestMapping(value = "/langkah-1", method = RequestMethod.POST)
	public String tempData(HttpServletRequest req, HttpSession sessionObj,Model model) {
		RegisterDAOImpl rsdo = new RegisterDAOImpl();
		Request r = new Request();
		String arrival = req.getParameter("tgl_kedatangan");
		String fullname = req.getParameter("nama_lengkap");
		String req_type = req.getParameter("jenis_permohonan");
		String citizenship = req.getParameter("warganegara");
		String identity_type = req.getParameter("jenis_ktp");
		String identity = req.getParameter("identitas_pengenal");
		String nik = req.getParameter("nik");
		String name = req.getParameter("name");
		String birthpalce = req.getParameter("placeBirth");
		String birthdate = req.getParameter("dateBirth");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String rt = req.getParameter("rt");
		String rw = req.getParameter("rw");
		String village = req.getParameter("village");
		String district = req.getParameter("districts");
		String religion = req.getParameter("religion");
		String job = req.getParameter("jobTitle");
		String passport = req.getParameter("passportData");
		String liveStart = req.getParameter("liveDateStart");
		String liveEnd = req.getParameter("liveDateEnd");
		String need = req.getParameter("need");
		String other = req.getParameter("otherNecessary");
		String queue = nik.substring(0, Math.min(nik.length(), 3)) + rsdo.count(null);
		
		Date ctime = new Date();
		String status = "Proses";
		
		r.setDate_arrival(DateFormat.indonesia(arrival));
		r.setFullname(fullname);
		r.setRequest_type(req_type);
		r.setCitizenship(citizenship);
		r.setIdentity_type(identity_type);
		r.setIdentity_number(identity);
		r.setKtp_nik(nik);
		r.setKtp_name(name);
		r.setKtp_birthplace(birthpalce);
		r.setKtp_birthdate(DateFormat.indonesia(birthdate));
		r.setKtp_gender(gender);
		r.setKtp_address(address);
		r.setKtp_rt(rt);
		r.setKtp_rw(rw);
		r.setKtp_village(village);
		r.setKtp_districts(district);
		r.setKtp_religion(religion);
		r.setKtp_job(job);
		r.setPassport(passport);
		r.setLive_start(DateFormat.indonesia(liveStart));
		r.setLive_end(DateFormat.indonesia(liveEnd));
		r.setNeed_for(need);
		r.setOther(other);
		r.setQueue(queue);
		r.setCtime(ctime);
		r.setStatus(status);
		
		 // Session
		 sessionObj.setAttribute("temp_request", r);
		 model.addAttribute("hello", "Terjadi Error");
		 model.addAttribute("tab1", "active");
		 model.addAttribute("tab2", "");
		
		return "form_register";
	}
	
	@RequestMapping(value = "/tambah-skck", method = RequestMethod.POST)
	public String addSKCK(HttpServletRequest req,
			@RequestParam("surat_pengantar") MultipartFile surat_pengantar,
			@RequestParam("kk") MultipartFile kk,
			@RequestParam("akta_lahir") MultipartFile akta_lahir, Model model, HttpSession sessionObj) {
		// List Error
		List<AppMessageError> list = new ArrayList<AppMessageError>();
		
		//===========================================================================
		// UPLOAD SECTION
		// Only Image, PDF and Document
		
		// Sanitize surat pengantar
		if(!Sanitize.isImage(surat_pengantar.getOriginalFilename()) || 
				!Sanitize.isPDF(surat_pengantar.getOriginalFilename()) || 
				   !Sanitize.isDocument(surat_pengantar.getOriginalFilename())) {
				list.add(new AppMessageError("surat_pengantar","Lampiran surat pengantar bukan format gambar(jpg,png,bmp,gif),PDF dan doc/docx !"));
		}
		
		// Sanitize KK
		if(Sanitize.isImage(kk.getOriginalFilename()) || 
				Sanitize.isPDF(kk.getOriginalFilename()) || 
				   Sanitize.isDocument(kk.getOriginalFilename())) {
			list.add(new AppMessageError("kk","Lampiran kartu keluarga bukan format gambar(jpg,png,bmp,gif),PDF dan doc/docx !"));
		} 
		
		// Sanitize Akta Lahir
		if(Sanitize.isImage(akta_lahir.getOriginalFilename()) || 
				Sanitize.isPDF(akta_lahir.getOriginalFilename()) || 
				   Sanitize.isDocument(akta_lahir.getOriginalFilename())) {
			list.add(new AppMessageError("akta_lahir","Lampiran akta lahir bukan format gambar(jpg,png,bmp,gif),PDF dan doc/docx !"));
		}
		
		if(list.size() < 1) {
			// Save or upload
		}
        
//		System.out.println(surat_pengantar.getOriginalFilename());
//		
//		// List error defined
//		List<AppMessageError> list = new ArrayList<AppMessageError>();
//		Boolean uploadSuratPengantar = FileUpload.doUpload(surat_pengantar,"data");
//		Boolean uploadKK = FileUpload.doUpload(kk,"data");
//		Boolean uploadAktaLahir = FileUpload.doUpload(akta_lahir,"data");
//		
//		// Catch error
//		if(uploadSuratPengantar) list.add(new AppMessageError("surat_pengantar","Upload surat pengantar failed!"));
//		if(uploadKK) list.add(new AppMessageError("kk","Upload KK failed!"));
//		if(uploadAktaLahir) list.add(new AppMessageError("akta_lahir","Upload akta lahir failed!"));
//		
        
        //===========================================================================

		

		
		return "pendaftaran_dokumen";
	}
}
