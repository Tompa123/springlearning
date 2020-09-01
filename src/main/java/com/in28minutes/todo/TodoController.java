package com.in28minutes.todo;

import java.util.Date;

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
	
	@RequestMapping(value="/add-todo", method=RequestMethod.GET)
	public String showTodoPage() {
		return "todo";
	}
	
	@RequestMapping(value="/add-todo", method=RequestMethod.POST)
	public String postTodo(@RequestParam String desc, ModelMap model) {
		todoService.addTodo("bengt", desc, new Date(), false);
		model.clear();
		return "redirect:list-todos";
	}
}
