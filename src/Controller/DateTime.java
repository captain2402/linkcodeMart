package Controller;


import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class DateTime {


	public String Date() {
		SimpleDateFormat dateformatter=new SimpleDateFormat("dd/MM/yyyy");
		Date date= new Date();
		String dated=new String(dateformatter.format(date));
		return dated;
	}
	
	public String Time() {
		SimpleDateFormat timeformatter=new SimpleDateFormat("HH:mm:ss");
		Date date= new Date();
		String todo=new String(timeformatter.format(date));
		return todo;
	}
	
}
