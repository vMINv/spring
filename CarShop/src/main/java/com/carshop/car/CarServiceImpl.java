package com.carshop.car;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl implements CarService {
	
	@Autowired//의존성 주입
	private CarRepository carRepository;

	@Override
	public List<CarDTO> getAllCarList() {
		
		return carRepository.getAllCarList();
	}

	@Override
	public CarDTO getCarById(String carId) {
		CarDTO carById = carRepository.getCarById(carId);
		return carById;
	}

	@Override
	public void setNewCar(CarDTO car) {
		carRepository.setNewCar(car);
	}

}
