package com.carshop.car;

import java.io.File;
import javax.annotation.Resource;
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
@RequestMapping("/cars")
@Controller
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@RequestMapping
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
	
	@GetMapping("/add")
	public String requestAddCarForm(@ModelAttribute("NewCar") CarDTO car) {
		
		return "addCar";
	}
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@PostMapping("/add")
	public String submitAddNewCar(@ModelAttribute("NewCar") CarDTO car) {
		
		MultipartFile carimage = car.getCimage();
		
		String saveName = carimage.getOriginalFilename();
		File saveFile = new File(uploadPath + "/images", saveName);
		
		if (carimage != null && !carimage.isEmpty()) {
			try {
				carimage.transferTo(saveFile);
			} catch (Exception e) {
				throw new RuntimeException("차량 이미지 업로드가 실패했습니다.");
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
