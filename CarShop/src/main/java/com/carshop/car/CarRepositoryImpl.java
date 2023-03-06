package com.carshop.car;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class CarRepositoryImpl implements CarRepository {

	private List<CarDTO> listOfCars = new ArrayList<CarDTO>();
	
	public CarRepositoryImpl() {
		
		CarDTO car1 = new CarDTO("c0001","소나타","2500","중형","거의 새거");
		CarDTO car2 = new CarDTO("c0002","그랜저","3500","대형","아주 새거");
		CarDTO car3 = new CarDTO("c0003","아반테","2000","준중형","극히 새거");
		CarDTO car4 = new CarDTO("c0004","K5","2600","중형","완전 새거");

		
		listOfCars.add(car1);
		listOfCars.add(car2);
		listOfCars.add(car3);
		listOfCars.add(car4);
		
	}
	
	@Override
	public List<CarDTO> getAllCarList() {
		
		return listOfCars;
	}
	
	@Override	
	public List<CarDTO> getCarListByCategory(String category) {
		List<CarDTO> carsByCategory = new ArrayList<CarDTO>();
		for (int i = 0; i < listOfCars.size(); i++) {
			CarDTO carDTO = listOfCars.get(i);
			if (category.equalsIgnoreCase(carDTO.getCcate()))
				carsByCategory.add(carDTO);
		}
		return carsByCategory;
	}
	

	public CarDTO getCarById(String carId) {
		
		CarDTO carInfo = null;
		
		for (int i = 0 ; i < listOfCars.size() ; i++) {
			CarDTO carDTO = listOfCars.get(i);
			if(carDTO != null && carDTO.getCid() != null && carDTO.getCid().equals(carId)) {
				carInfo = carDTO;
			}
		}
		
		if (carInfo == null) {
			throw new IllegalArgumentException("자동차 ID 가 " + carId + "인 자동차는 없습니다. ");
		}
		
		return carInfo;
	}
	
	public void setNewCar(CarDTO car) {
		listOfCars.add(car);
	}

}
