package com.carshop.car;

import java.util.List;

public interface CarRepository {
	List<CarDTO> getAllCarList();
	CarDTO getCarById(String carId);
	
	void setNewCar(CarDTO car);
}
