package balaki.cars.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import balaki.cars.models.Car;
import balaki.cars.services.CarService;

@Controller
public class CarController {


    
 @Autowired CarService carService;

    //! CREATE

    @GetMapping("/cars/new")
    public String newCar(@ModelAttribute("car")Car car){
        return "new.jsp";
    }

    @PostMapping("/cars")
    public String createCar(@Valid @ModelAttribute("car")Car car, BindingResult result){
        System.out.println(car);
        if(result.hasErrors()){
            return "new.jsp";
        }
        else{
        carService.createCar(car);
        return "redirect:/cars";
        }
    }
    
    //! READ ALL
    @GetMapping("/cars")
    public String cars(Model model, HttpSession session){
            if(session.getAttribute("userId") == null){
                return "redirect:/logout";
            }
        List<Car> cars = carService.getAllCars();
        System.out.println(cars);
        model.addAttribute("cars", cars);
        return "cars.jsp";
    }


    //! READ ONE
    @GetMapping("/cars/{id}")
    public String show(@PathVariable("id")Long id, Model model){
        Car car = carService.getOneCar(id);
        model.addAttribute("car", car);
        return "show.jsp";
    }

    //!UPDADE
    @GetMapping("cars/edit/{id}")
    public String edit(@PathVariable("id")Long id, Model model){
        Car car = carService.getOneCar(id);
        model.addAttribute("car", car);
        return "edit.jsp";
    }


    @PutMapping("/cars/{id}")
    public String update(@Valid @ModelAttribute("car")Car car, BindingResult result){
        if(result.hasErrors()){
            return "edit.jsp";
        }else{
        carService.updateCar(car);
        return "redirect:/cars";
        }
    }


    //!Delete

    @DeleteMapping("/cars/delete/{id}")
    public String destroy(@PathVariable("id")Long id, HttpSession session){
        carService.destroyCar(id);
        return "redirect:/cars";
    }  
}
