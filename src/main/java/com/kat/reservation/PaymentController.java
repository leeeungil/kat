package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.PaymentInfo;

@Controller
public class PaymentController {


	@RequestMapping("shopPayment/payment.do")
	public ModelAndView RegisterChoose(@RequestParam(name = "chk") String chkid, @RequestParam(name = "chk2") int chkno ,HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 payment 컨트롤");
		
		PaymentInfo paymentInfo = new PaymentInfo();
		
		paymentInfo.setChkid(chkid);
		paymentInfo.setChkno(chkno);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("chkseat", paymentInfo);
		modelAndView.setViewName("kat_shopView/payment");

		return modelAndView;
	}

}
