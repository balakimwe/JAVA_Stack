package balaki.cars.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import balaki.cars.models.Car;
import balaki.cars.repositories.CarRepository;

@Service
public class CarService {
    

    @Autowired CarRepository carRepository;

    public void createCar(@Valid Car car) {
        carRepository.save(car);
    }

    public List<Car> getAllCars() {
        return carRepository.findAll();
    }

    public Car getOneCar(Long id) {
        Optional<Car> car = carRepository.findById(id);
        return car.orElse(null);
    }

    public void updateCar(Car car) {
        carRepository.save(car);
    }

    public void destroyCar(Long id) {
        carRepository.deleteById(id);
    }
}
