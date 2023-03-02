package com.carshop.car;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cars")
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@GetMapping("/list")
	public String CarList(Model model) {
		List<CarDTO> list = carService.getAllCarList();
		model.addAttribute("carList",list);
		return "car/cars";
	}
	
	@GetMapping("/car")
	public String requestCarById(@RequestParam("id") String carId, Model model) {
		CarDTO carById = carService.getCarById(carId);
		model.addAttribute("car",carById);
		return "/car/car";
	}
	
	@GetMapping("/add")
	public String requestAddCarForm(@ModelAttribute("NewCar") CarDTO car) {
		return "/car/addCar";
	}
	
	@PostMapping("/add")
	public String submitAddNewCar(@ModelAttribute("NewCar") CarDTO car) {
		carService.setNewCar(car);
		return "redirect:/cars/list";
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("addTitle", "신규 차량 등록");
	}
}
