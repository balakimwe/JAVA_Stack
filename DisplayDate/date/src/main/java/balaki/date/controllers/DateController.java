package balaki.date.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DateController {
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@GetMapping("/date")
	public String date(Model model) {
		DateSimpleFormat sdf = new DateSimpleFormat();
		
		Date date = new Date();
		
		model.addAttribute("date", sdf.format(date));
		
		return "date.jsp";
	}
	
	@GetMapping("/time")
	public String time(Model model) {
		DateSimpleFormat sdf = new DateSimpleFormat();
		
		Date date = new Date();
		
		model.addAttribute("time", sdf.format(date));
		
		return "time.jsp";
	}
}
