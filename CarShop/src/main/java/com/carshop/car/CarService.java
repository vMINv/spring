package com.carshop.car;

import java.util.List;

public interface CarService {
	
	List<CarDTO> getAllCarList();
	List<CarDTO> getCarListByCategory(String category);
	
	CarDTO getCarById(String carId);
	void setNewCar(CarDTO car);

}
