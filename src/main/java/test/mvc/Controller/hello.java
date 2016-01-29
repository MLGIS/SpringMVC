package test.mvc.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class hello {

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String homePage(Model model, HttpServletRequest request) {

		return "index";
	}
}