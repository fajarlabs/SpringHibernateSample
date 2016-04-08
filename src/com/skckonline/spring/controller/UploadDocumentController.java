package com.skckonline.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.skckonline.hibernate.dao.RegisterDAOImpl;
import com.skckonline.hibernate.model.Request;
import com.skckonline.model.AppMessageError;
import com.skckonline.util.FileUpload;

@Controller
@RequestMapping("/pendaftaran-dokumen")
public class UploadDocumentController {

	@RequestMapping(method = RequestMethod.GET)
	public String Index(ModelMap model) {
		// model.addAttribute("message", "hello");
		return "pendaftaran_dokumen"; // Name file .jsp in WEB-INF/JSP/
	}

	/**
	 * Upload single file using Spring Controller
	 */
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String uploadHandler(
			@RequestParam("surat_pengantar") MultipartFile surat_pengantar,
			@RequestParam("kk") MultipartFile kk,
			@RequestParam("akta_lahir") MultipartFile akta_lahir,
			ModelMap model,
			HttpSession sessionObj) {
		
		// List error defined
		List<AppMessageError> list = new ArrayList<AppMessageError>();
		Boolean uploadSuratPengantar = FileUpload.doUpload(surat_pengantar,"data");
		Boolean uploadKK = FileUpload.doUpload(kk,"data");
		Boolean uploadAktaLahir = FileUpload.doUpload(akta_lahir,"data");
		
		// Catch error
		if(uploadSuratPengantar) list.add(new AppMessageError("surat_pengantar","Upload surat pengantar failed!"));
		if(uploadKK) list.add(new AppMessageError("kk","Upload KK failed!"));
		if(uploadAktaLahir) list.add(new AppMessageError("akta_lahir","Upload akta lahir failed!"));
		
		Request temp_request = (Request) sessionObj.getAttribute("temp_request");
		System.out.println("TEMP : "+temp_request.getFullname());
		
		String redirect;
		if(list.size() > 0) {
			// Save data
//			Request temp_request = (Request) sessionObj.getAttribute("temp_request");		
//			RegisterDAOImpl o = new RegisterDAOImpl();
//			o.add(temp_request);			
			
			// Send error to view
			model.addAttribute(list);
			redirect = "pendaftaran_document";
		} else {
			redirect = "request_success";
		}
		
		return "request_success";
	}
}