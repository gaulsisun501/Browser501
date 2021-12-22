package ch15.guestbook.service;
//461
public class MessageNotFoundException extends ServiceException{

		public MessageNotFoundException(String message) {
			super(message);
		}
}
