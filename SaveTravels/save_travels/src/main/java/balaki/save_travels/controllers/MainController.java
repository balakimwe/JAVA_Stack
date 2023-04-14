package balaki.save_travels.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import balaki.save_travels.models.Travel;
import balaki.save_travels.services.TravelService;



@Controller
public class MainController {

    @Autowired TravelService TravelService;


    
    @GetMapping("/")
    public String index(@ModelAttribute("travel")Travel travel, Model model){
        List<Travel> travels = TravelService.getAllTravels();
        model.addAttribute("travels", travels);

        return "index.jsp";
    }
    
    @PostMapping("/expense")
    public String createTravel(@ModelAttribute("travel")Travel travel){
        TravelService.createTravel(travel);
        return "redirect:/";
    }


    @GetMapping("/expense/edit/{id}")
    public String edit(@PathVariable("id")Long id, Model model){
        Travel travel = TravelService.getOneTravel(id);
        System.out.println(travel);
        model.addAttribute("travel", travel);
        return "edit.jsp";
    }
    
    @PutMapping("/expense/{id}")
    public String update(@PathVariable("id")Long id, @Validated @ModelAttribute("travel")Travel travel, BindingResult results, Model model){
        if(results.hasErrors()){
            System.out.println(results.getAllErrors());
            return "expense/edit.jsp";
        } else {
            TravelService.updateTravel(travel);
            return "redirect:/";
        }
    }

    @DeleteMapping("/expense/{id}")
    public String destroy(@PathVariable("id")Long id){
        Travel travel = TravelService.getOneTravel(id);
        TravelService.deleteTravel(travel);
        return "redirect:/";
    }


}
