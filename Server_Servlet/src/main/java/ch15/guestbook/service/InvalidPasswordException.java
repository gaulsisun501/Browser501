package ch15.guestbook.service;
//462
public class InvalidPasswordException extends ServiceException {
	
	public InvalidPasswordException(String message) {
		super(message);
	}
}
