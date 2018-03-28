package com.kat.project;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	/*@Autowired
	private ReviewListService reviewListService;*/

	/*@RequestMapping(value = "/kat_main.do", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[HomeController home] HOME ACCESS");
System.out.println("[HomeController home] pageNumber : " + pageNumber);
		ModelAndView modelAndView = new ModelAndView();
		ReviewInfoListView reviewInfoListView = reviewListService.getMainReviewList(pageNumber);

		modelAndView.setViewName("kat_main");
		modelAndView.addObject("ListInfoReview", reviewInfoListView);
System.out.println("=============================================================");
		return modelAndView;
	}*/
	
	@RequestMapping(value ="/kat_main.do", method = RequestMethod.GET)
	public String home() {  
		return "kat_main";
	}
}
