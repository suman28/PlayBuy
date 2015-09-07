package com.cisco.capital.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.capital.model.RegistrationVO;
import com.cisco.capital.service.RegService;
import com.google.gson.Gson;

@Controller
public class RegController {

	@RequestMapping("/userRegistration")
	public ModelAndView getRegistrationPage() {
		return new ModelAndView("userRegistration");
	}
	
	@Autowired
	RegService regService;
	
	@RequestMapping("/result")
	public ModelAndView getResultPage() {
		return new ModelAndView("result");
	}
	

	@RequestMapping("/UserDetails")
	public ModelAndView getDetailsPage() {
		return new ModelAndView("UserDetails");
	}
	
	@RequestMapping("/formData")
	public ModelAndView getEditPage() {
		return new ModelAndView("formData");
	}
	
	@RequestMapping("/mobiles")
	public ModelAndView getMobilesPage() {
		return new ModelAndView("mobiles");
	}
	@RequestMapping("/viewItem")
	public ModelAndView getItemsPage() {
		return new ModelAndView("viewItem");
	}
	
	/*To save the details of new users*/
	@RequestMapping(value = "/saveUsersData",method = RequestMethod.POST)
	public @ResponseBody
	String saveUser(/*@RequestParam("params") String params */@ModelAttribute("registration") RegistrationVO registrationVO) {
		/*RegistrationVO  registrationVO=new RegistrationVO();*/
		Gson gson=new Gson();
		
		
		//registrationVO = gson.fromJson(params, RegistrationVO.class);
		
		
		/*Map<String, String> countryJson = new HashMap<String, String>();
		countryJson.put("id", registrationVO.getCountry_code());
		countryJson.put("name", registrationVO.getCountry_name());
		*/
		regService.saveUser(registrationVO);
		return gson.toJson(registrationVO);
		
	}
	
	
	/*To get the list of users(User Id and first name only)*/
	@RequestMapping(value="/getListOfUsers",method=RequestMethod.POST)
	public @ResponseBody String getRegUsers(@ModelAttribute("registration") RegistrationVO registrationVO) {
		List<RegistrationVO> regUsersList = regService.getRegisteredUsers();
		Gson gson = new Gson();
		return gson.toJson(regUsersList);
	}
	

	/*To get the details of selected user*/
	@RequestMapping(value={"/getDetailsOfUser/{userId}"},method=RequestMethod.POST)
	public @ResponseBody String getUser(@PathVariable("userId") String userId) {
		RegistrationVO registeredUsers = regService.getUser(userId);
		Gson gson = new Gson();
		return gson.toJson(registeredUsers);
	}
	
	/*To get the details of user to be edited*/
	@RequestMapping(value="/getEditableUsersData/{userId}",method=RequestMethod.POST)
	public @ResponseBody String getEditableUsers(@PathVariable("userId")String userId){
	RegistrationVO regUsers = regService.getUserData(userId);
	Gson gson = new Gson();
	return gson.toJson(regUsers);
	}
	
	/*To save the edited details of user*/
	@RequestMapping(value = "/saveEditedDetails", method = RequestMethod.POST)
	public @ResponseBody String editUser(
			@ModelAttribute("editData") RegistrationVO registrationVO) {
		regService.editUser(registrationVO);
		Gson gson = new Gson();
		return gson.toJson(registrationVO);
		//return "forward:/getListOfUsers";
	}
	
	/*To delete the details of user*/
	@RequestMapping(value = "/deleteUserDetails/{userId}", method = RequestMethod.POST)
	public @ResponseBody void deleteUser(@PathVariable("userId") String userId) {
		regService.deleteUser(userId);
//		Gson gson = new Gson();
//		return gson.toJson(delUser);
	}
	
/*	@RequestMapping(value="/getCountryDetails",method=RequestMethod.POST)
	public @ResponseBody String getCountry(RegistrationVO registrationVO){
		regService.getCountry(registrationVO);
		Gson gson = new Gson();
		return gson.toJson(registrationVO);
	}
	*/
	
}
