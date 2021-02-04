package com.kaushal.demo;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import com.kaushal.demo.model.UserRepo;
import com.kaushal.demo.model.User;
@Controller

public class LoginController {
	@Autowired
	private UserRepo userRepo;
	public static ArrayList<User> a=new ArrayList<User>();
	
	
	
	@RequestMapping("/")
	public String  checklogin() {
		return "login";
	}
	@RequestMapping("/abcd")
	public String  checkimps() {
		return "imps";
	}
	
	@RequestMapping("/fund")
	public String  checkfund() {
		return "fund";
	}
	
	@RequestMapping("/login")
	public String loginHomePage(@RequestParam("userId") String user_id,@RequestParam("password") String password,Model model){
	
		User u=null;
		
		try{
			
		u=userRepo.findByPassword(password);              
		

		}
		catch(Exception e)
		{
		System.out.println("User not found !!!");
		

		}
		if(u!=null) {
		model.addAttribute("UserId",user_id);
	    return "homePage";
		}
		
		model.addAttribute("error","User Not found !!");
		
		return "login";




	}
	
	
	
	@RequestMapping("/register")
	public String goToegistrationPage(){
		return "register";

		}
	@RequestMapping("/balance")
	public String tobalance() {
		return "balance";
	}
	
	
	/*@RequestMapping("/set-user")
	public String goToRegisterMicroservice(@RequestParam("userId") String userId,@RequestParam("accn") String accn,@RequestParam("mob") String mob, @RequestParam("amt") String amt, @RequestParam("password1") String password1, @RequestParam("password2") String password2,Model model)
	{
		
		
		System.out.println("Going to register microservice");
		if(password1.equals(password2))
		{
		restTemplate.getForObject("http://localhost:64371/register-user/"+userId+"/"+"/"+accn+"/"+mob+"/"+amt+"/"+password1,String.class);
		model.addAttribute("registerSuccess","Successfully Registered for Internet Bankig Services");
		}

		else
		{
		model.addAttribute("registrationError","Password Not Same !!!");
		}

	return "login";
	}*/
	
	@RequestMapping("/balance-user")
	public String balanceservice(@RequestParam("userId") String userId,@RequestParam("mob") String mob,Model model)
	{
		
		
		System.out.println("Going to register microservice");
		
		int flag=0;
		for(int i=0;i<a.size();i++)
		{
		User u=a.get(i);

		String cu=u.getUser_id();
		String cm=u.getMob();
		
		if(cu.equals(userId) && cm.equals(mob)){
			String ca=u.getAmt();
		model.addAttribute("UserId",userId);
		model.addAttribute("amt",ca);
		flag=1;
		}


		}
		if(flag==0)
		model.addAttribute("err","Credentials are incorrect");
		return"result";
        
	}
	
	@RequestMapping("/set-user")
	public String goToRegisterMicroservice(@RequestParam("userId") String userId,@RequestParam("accn") String accn,@RequestParam("mob") String mob, @RequestParam("amt") String amt, @RequestParam("password1") String password1, @RequestParam("password2") String password2,Model model)
	{
		if(password1.equals(password2))
		{
			User u=new User();
			u.setId(5);
			u.setUser_id(userId);
			u.setAccn(accn);
			u.setAmt(amt);
			u.setMob(mob);
			u.setPassword(password1);
	        a.add(u);
			userRepo.save(u);
		model.addAttribute("registerSuccess","Successfully Registered for Internet Banking Services");
		}
		
		else
		{
		model.addAttribute("registrationError","Password Not Same !!!");
		}

	return "login";
		
	}
	
	@RequestMapping("/fund-user")
	public String fundservice(@RequestParam("saccn") String saccn, @RequestParam("accn") String accn ,@RequestParam("amt") String amt, Model model)
	{
		for(int i=0;i<a.size();i++)
		{
		  User u=a.get(i);
		  String cu2=u.getAccn();
		  if(cu2.equals(saccn))
		  {
			int amountDeduct = Integer.parseInt(amt);
			int currentAmount = Integer.parseInt(u.getAmt());
			if(currentAmount<amountDeduct)
			{
				model.addAttribute("errLowBalance","Balance Insufficient");
				return"fundResult";
			}
		  }
		  		
		}


		
		System.out.println("Going to register microservice");
		
		int flag=0;
		for(int i=0;i<a.size();i++)
		{
		User u=a.get(i);

		String cu=u.getAccn();
		
		if(cu.equals(accn)){
			String ca=u.getAmt();
		int amount = Integer.parseInt(ca);
		int addAmount = Integer.parseInt(amt);
		amount = amount + addAmount;
		String resultAmount = amount + "";
		u.setAmt(resultAmount);
		//userRepo.save(u);
		//model.addAttribute("accn",accn);
		//model.addAttribute("amt",amt);
		model.addAttribute("errSuccess","Account Number "+accn+" is credited by Rs."+amt);
		flag=1;
		}


		}
		if(flag==0)
		model.addAttribute("err","Credentials are incorrect");
		else
		{
			
			for(int i=0;i<a.size();i++)
			{
			  User u=a.get(i);
			  String cu2=u.getAccn();
			  if(cu2.equals(saccn))
			  {
				int amountDeduct = Integer.parseInt(amt);
				int currentAmount = Integer.parseInt(u.getAmt());
				currentAmount = currentAmount - amountDeduct;
				String finalAmount = currentAmount + "";
				u.setAmt(finalAmount);
				//userRepo.save(u);
			  }
			  		
			}

		}

		return"fundResult";
        
	}
	
	
	
	
	@RequestMapping("/imps-user")
	public String impsservice(@RequestParam("saccn") String saccn, @RequestParam("accn") String accn ,@RequestParam("ifsc") String ifsc , @RequestParam("amt") String amt  ,Model model)
	{
		
		for(int i=0;i<a.size();i++)
		{
		  User u=a.get(i);
		  String cu2=u.getAccn();
		  if(cu2.equals(saccn))
		  {
			int amountDeduct = Integer.parseInt(amt);
			int currentAmount = Integer.parseInt(u.getAmt());
			if(currentAmount<amountDeduct)
			{
				model.addAttribute("errLowBalance","Balance Insufficient");
				return"impsResult";
			}
		  }
		  		
		}
		
		
		model.addAttribute("accn",accn);
		model.addAttribute("amt",amt);
		model.addAttribute("ifsc",ifsc);
		
			for(int i=0;i<a.size();i++)
			{
			  User u=a.get(i);
			  String cu2=u.getAccn();
			  if(cu2.equals(saccn))
			  {
				int amountDeduct = Integer.parseInt(amt);
				int currentAmount = Integer.parseInt(u.getAmt());
				currentAmount = currentAmount - amountDeduct;
				String finalAmount = currentAmount + "";
				u.setAmt(finalAmount);
				//userRepo.save(u);
			  }
			  		
			}
			model.addAttribute("errSufficientBalance","Account Number "+accn+" with IFSC code "+ifsc+" has been credited by Rs."+amt);
		

		return"impsResult";
        
	}
	
	

	
}