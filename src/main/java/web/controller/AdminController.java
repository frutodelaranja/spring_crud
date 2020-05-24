package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import web.model.User;
import web.model.UserForm;
import web.service.UserService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class AdminController {

	@Autowired
	UserService userService;

	@GetMapping("admin")
	public String listUsers(Model model) {
		List<User> users = userService.getAllUsers();
		model.addAttribute("users", users);
		return "admin";
	}

	@PostMapping("admin")
	public String adminSubmit(@ModelAttribute User userForm,Model model){
		model.addAttribute("userForm", userForm);
		userService.add(userForm);
		return "redirect:/admin";
	}

	@GetMapping("update")
	public  String oldUser(@RequestParam("id") String id, Model model){
		model.addAttribute("id", id);
		User userUpdate = userService.getUser(Long.parseLong(id));
		model.addAttribute("userUpdate", userUpdate);
		return "update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String newUser(@RequestParam("id") String id,@ModelAttribute User user, Model model){
		model.addAttribute("id", id);
		model.addAttribute("userUpdate", user);
		user.setId(Long.parseLong(id));
		userService.update(user);
		return "redirect:/admin";
	}

	@PostMapping("delete")
	public String deleteUser(@RequestParam("id") String id, Model model){
		model.addAttribute("id", id);
		userService.delete(Long.parseLong(id));
		return "redirect:/admin";
	}

}