package com.in28minutes.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TodoController {
	
	@Autowired
	private TodoService todoService;
	
	@RequestMapping(value ="/list-todos", method=RequestMethod.GET)
	public String displayTodoList(ModelMap model) {
		model.addAttribute("todos", todoService.retrieveTodos("bengt"));
		return "list-todos";
	}
}
