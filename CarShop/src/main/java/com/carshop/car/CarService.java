package com.carshop.car;

import java.util.List;

public interface CarService {
	List<CarDTO> getAllCarList();
	CarDTO getCarById(String carId);
	
	void setNewCar(CarDTO car);
}
