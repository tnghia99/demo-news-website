package com.demoweb.utils;

import javax.servlet.http.HttpServletRequest;

public class messageUtil {
	public static void displayMessage(HttpServletRequest request) {
		if (request.getParameter("message") != null) {
			String messageResponse = "";
			String alert = "";
			String message = request.getParameter("message");
			if(message.equals("insert_successfully")) {
				messageResponse = "Insert successfully!";
				alert = "success";
			} else if(message.equals("update_successfully")) {
				messageResponse = "Update successfully!";
				alert = "success";
			} else if(message.equals("delete_successfully")) { 
				messageResponse = "Delete successfully!";
				alert = "success";
			} else if(message.equals("insert_failed")) {
				messageResponse = "Insert successfully!";
				alert = "danger";
			} else if(message.equals("update_failed")) {
				messageResponse = "Update fail!";
				alert = "danger";
			} else if(message.equals("delete_failed")) {
				messageResponse = "Delete failed!";
				alert = "danger";
			}
		}
	}
}
