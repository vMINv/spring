package com.carshop.car;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@RequestMapping("/cars")
	public String CarList(Model model) {
		List<CarDTO> list = carService.getAllCarList();
		model.addAttribute("carList",list);
		return "cars";
	}
	
	@GetMapping("/{ccate}")
	public String requestCarsByCategory(@PathVariable("ccate") String carCategory, Model model) {
		List<CarDTO> carsByCategory = carService.getCarListByCategory(carCategory);
		model.addAttribute("carList", carsByCategory);
		return "cars";
	}
	
	@GetMapping("/car")
	public String requestCarById(@RequestParam("id") String carId, Model model) {
		
		CarDTO carById = carService.getCarById(carId);
		model.addAttribute("car", carById);
		
		return "car";
	}
	
	@GetMapping("/admin/add")
	public String requestAddCarForm(@ModelAttribute("NewCar") CarDTO car) {
		
		return "addCar";
	}
	
	@PostMapping("/admin/add")
	public String submitAddNewCar(@ModelAttribute("NewCar") CarDTO car) {
		
		MultipartFile cimage = car.getCimage();
		
		String saveName = cimage.getOriginalFilename();
		File saveFile = new File("/resources/images", saveName);
		
		if(cimage != null && !cimage.isEmpty()) {
			try {
				cimage.transferTo(saveFile);
			} catch(Exception e) {
				throw new RuntimeException("차량 이미지 업로드 실패");
			}
		}
		carService.setNewCar(car);
		return "redirect:/cars";
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("addTitle", "신규 차량 등록");
	}
	
	
	@GetMapping("/login")
	public String loginMethod() {
		
		return "login";
	}
	
	@GetMapping("/loginfailed")
	public String loginfailedMethod() {
		
		return "login";
	}
	
	@GetMapping("/logout")
	public String logoutMethod() {
		
		return "login";
	}
	
}
