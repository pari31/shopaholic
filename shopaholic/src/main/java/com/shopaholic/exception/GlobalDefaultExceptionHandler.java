package com.shopaholic.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {
@ExceptionHandler(NoHandlerFoundException.class)

public ModelAndView handlerNoHandlerFoundException()
{
	ModelAndView mv= new ModelAndView("error");
	mv.addObject("errorTitle", "We couldn't find any matches!");
	mv.addObject("errorDescription", "Page not available");
	mv.addObject("title", "404 Error Page");
	return mv;
}
	
	
	
}
