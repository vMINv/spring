package com.carshop.study;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/imgExam")
public class ImageController {
	
	@GetMapping("/form") //입력창
	public String requestForm() {
		return "study/ImageExam";
	}
	
	@PostMapping("/form") //받는창
	public String submitForm(@RequestParam("name") String name, @RequestParam("fileImage") MultipartFile file) {
		String filename = file.getOriginalFilename();
		
		File f = new File("/resources/images/"+name+"_"+filename);
		
		try {
			file.transferTo(f);
		} catch(IOException e) {
			e.printStackTrace();
		}
		return "study/ImageSuccess";
	}
}
