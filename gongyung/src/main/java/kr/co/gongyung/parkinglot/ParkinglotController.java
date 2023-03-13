package kr.co.gongyung.parkinglot;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/api/parkinglot")
@ResponseBody
public class ParkinglotController  {
	@Autowired
	private ParkinglotService service;
	
	@GetMapping(produces ="application/json")
	public  List<Parkinglot> parkinglotSelect() {
		List<Parkinglot> list = service.parkinglotSelect();
		return list;
	}
	
		
	@PostMapping (consumes = "application/json")
	public List<Parkinglot> readParkByStoreName(String storename){
		HttpServletRequest req = null;
		storename = req.getParameter("storename");
		
		List<Parkinglot> list = service.parkinglotselectByStoreName(storename);
		
		return list;
		
	}
	
	
}
