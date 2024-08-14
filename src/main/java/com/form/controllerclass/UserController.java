package com.form.controllerclass;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.form.Dao.EntityClass;
import com.form.UserRepository.MainRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;




@Controller
public class UserController {
	
	@Autowired 
	  private MainRepository mainRepository;
	
		
	
	 @GetMapping("/login")
	    public String showLoginPage() {
		    System.out.println("We are in login page"); 
	        return "loginpage";
	    }

	  @PostMapping("/trylogin") 
	  public String login(
	  
	  @RequestParam String username,
	  
	  @RequestParam String password,RedirectAttributes redirectAttribtues,HttpServletRequest req ) 
	  {  
		  Optional<EntityClass> user = mainRepository.findByUsernameAndPassword(username, password);
	  
	  if (user.isPresent()) {
		  System.out.println("IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"+user); 
		  EntityClass loginuser = user.get();
		  HttpSession session = req.getSession(true); 
          session.setAttribute("userid", loginuser.getEmployeeId());
		  return "redirect:/loggedIn";
		  } 
	       else { 
		   System.out.println("LLLLLLLLLLLLLLLLLLLLLL");
	       redirectAttribtues.addFlashAttribute("error", "* Invalid username or password"); 
	      return "redirect:/login?error=true";
	      }
	  }
	 
	
	
	
	

	@GetMapping("/profile")
	public String myProfile( @RequestParam(required = false) String username,@RequestParam(required = false) String password,
	        Model model,HttpServletRequest req) {
		HttpSession session = req.getSession(false);
	    // Check if both username and password are provided
	   
            Integer userid  = (Integer) session.getAttribute("userid");
            Optional<EntityClass> user = mainRepository.findById(userid);
	        if (user.isPresent()) {
	  		  System.out.println("ddddddd"+user); 
	            model.addAttribute("user", user.get());
	            return "profile";
	        }
	    

	  
	    return null;
	}


	
	
	@GetMapping("/allusers")
	public String alluser(Model model){
		
		Iterable <EntityClass> userlist = mainRepository.findAll();
		List<EntityClass> listofuser = new ArrayList<>();
		for (EntityClass entity : userlist) {
            listofuser.add(entity);
        }
		System.out.println("The list of users----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
		System.out.println(listofuser);
		model.addAttribute("users", listofuser);
        return "viewallusers";
		
	}
	
	
	public String getMethodName(@RequestParam String param) {
		return new String();
	}
	
	
	@GetMapping("/signup") 
	  public String signupPage() { 
		  return "signup"; 
		  
		  }
	@GetMapping("/sideb") 
	public String side() { 
		return "sidebar"; 
		
	}
	@GetMapping("/nav") 
	public String navigationbar() { 
		return "header"; 
		
	}
	
	
	
	
	@PostMapping("/signup")
    public String signup(
    		@RequestParam String username,
            @RequestParam String password,
            @RequestParam String email,
            @RequestParam String confirmpassword,
            @RequestParam(required = false) Integer eid,
            @RequestParam(required = false) String address,
            @RequestParam(required = false) String phone,
            @RequestParam(required = false) String dob,
            RedirectAttributes redirectAttributes) {
        
		EntityClass person = new EntityClass();
        person.setUsername(username);
        person.setPassword(password);
        person.setConfirmpassword(confirmpassword);
        person.setEmail(email);
        if (eid != null) person.setEmployeeId(eid);
        if (address != null) person.setAddress(address);
        if (phone != null) person.setPhone(phone);
        if (dob != null) person.setDob(dob);


        mainRepository.save(person);
        
        
        System.out.println("____________________________________________________________________");
        System.out.println(person);
        //"redirect:/loggedIn"
        return "signup"; 
    }
	@GetMapping("/loggedIn")
	  public String loggedInpage() { 
		  return "loggedIn"; 
		  }
	
	 
	 
	 
	
	 @GetMapping("/edit/{id}")
	    public String editUser(@PathVariable("id") Integer id, Model model) {
	        Optional<EntityClass> user = mainRepository.findById(id);
	        if (user.isPresent()) {
	            model.addAttribute("user", user.get());
	            return "edit";
	        } else {
	            
	            return "redirect:/allusers";
	        }
	    }

	    @PostMapping("/update")
	    public String updateUser(@ModelAttribute EntityClass user) {
	        mainRepository.save(user);
	        return "redirect:/allusers";
	    }

	    @GetMapping("/delete/{id}")
	    public String deleteUser(@PathVariable("id") Integer id) {
	        mainRepository.deleteById(id);
	        return "redirect:/allusers";
	    }
	}
	 
	 
	  


