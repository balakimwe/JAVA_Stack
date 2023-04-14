package balaki.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormController {

    @GetMapping("/omikuji")
    public String index() {
		return "index.jsp";
	}

    @PostMapping("/omikuji/show") 
    public String handledata(
      @RequestParam(value="number") String number,
      @RequestParam(value = "city") String city,
      @RequestParam(value = "person") String person,
      @RequestParam(value = "hobby") String hobby,
      @RequestParam(value = "lifething") String lifething,
      @RequestParam(value = "comment") String comment,
      HttpSession session
    ){
      session.setAttribute("number", number);
      session.setAttribute("city", city);
      session.setAttribute("person", person);
      session.setAttribute("hobby", hobby);
      session.setAttribute("lifething", lifething);
      session.setAttribute("comment", comment);
      return "show.jsp";
    }
    
}
