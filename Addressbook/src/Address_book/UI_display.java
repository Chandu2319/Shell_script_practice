package Address_book;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
//import java.lang.Thread;
//import java.util.Iterator;
//import java.lang.Object.*;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;


public class UI_display extends Address_book {
	
	String input_filename = new String();
	
	private static Address_book add_book = new Address_book();
	
	public static void main(String args[]) throws NumberFormatException, IOException, BiffException {
		// TODO Execution starts here with welcome
		boolean boo = true;		//boolean used in termination of while loop
		while(boo){
			InputStreamReader str = new InputStreamReader(System.in);
			BufferedReader B = new BufferedReader(str);
			Read_address_book();
		
			System.out.println("Welcome ! Choose one the options below");
			System.out.println("1. Add new contact ");
			System.out.println("2. Edit a contact ");
			System.out.println("3. Delete an existing contact ");
			System.out.println("4. Save current address book ");
			System.out.println("5. Display current address book ");
			System.out.println("6. Open address book ");
			System.out.println("7. Close Application");
			int input = Integer.parseInt(B.readLine());
			switch(input) {
				case 1:
					Add_contact_display();
					break;
					//add_book.add_contact();
				case 2:
					Edit_contact_display();
					break;
				case 3:
					delete_contact_display();
					break;
				case 4:
					save_current_address_book();
					break;
				case 5:
					contact_display();
					break;
				case 6:
					Open_address_book();
					break;
				case 7:
					boo = close();
					B.close();		// Close the buffer and stream reader so that they do not interfere with future usage of the same.
					str.close();
					break;
			}
			
		}
	}
	
	private static boolean close() {
		// TODO Auto-generated method stub
		
		return false;
	}

	public UI_display() {
		// TODO  constructor method executed by default when opened
		
	}

	public UI_display(Address_book address_book) {
		add_book = address_book;
	}
	
	private static void Add_contact_display() throws IOException, BiffException {
		// This function is to collect data from the user required to create a new contact and add it to the address book 
		InputStreamReader str = new InputStreamReader(System.in);
		BufferedReader B = new BufferedReader(str);
		System.out.println("Enter the firstname of the contact ");
		String firstname = B.readLine();
		System.out.println("Enter the Lastname of the contact ");
		String lastname = B.readLine();
		System.out.println("Enter the address of the contact ");
		String address = B.readLine();
		System.out.println("Enter the city of the contact ");
		String city = B.readLine();
		System.out.println("Enter the state of the contact ");
		String state = B.readLine();
		System.out.println("Enter the zip code of the contact ");
		String zip_code = B.readLine();
		System.out.println("Enter the contact's mobile number ");
		String mobile_number = B.readLine();
		System.out.println("Enter the contact's email-id");
		String email_id = B.readLine();
		
		add_book.add_contact(firstname, lastname, address, city, state, zip_code, mobile_number, email_id);
		//B.close();		// Close the buffer and stream reader so that they do not interfere with future usage of the same.
		//str.close();
		
	}

	private static void Edit_contact_display() throws IOException {
		// TODO This function is to collect information regarding the contact to be edited and that of the field being edited
		System.out.println("Enter the name of the contact to be edited");
		InputStreamReader str = new InputStreamReader(System.in);
		BufferedReader B = new BufferedReader(str);
		String name = B.readLine();
		System.out.println("Enter the firstname of the contact ");
		String firstname = B.readLine();
		System.out.println("Enter the Lastname of the contact ");
		String lastname = B.readLine();
		System.out.println("Enter the address of the contact ");
		String address = B.readLine();
		System.out.println("Enter the city of the contact ");
		String city = B.readLine();
		System.out.println("Enter the state of the contact ");
		String state = B.readLine();
		System.out.println("Enter the zip code of the contact ");
		String zip_code = B.readLine();
		System.out.println("Enter the contact's mobile number ");
		String mobile_number = B.readLine();
		System.out.println("Enter the contact's email-id");
		String email_id = B.readLine();
		Contact c = new Contact(firstname, lastname, address, city, state, zip_code, mobile_number, email_id);
		add_book.edit_contact(name, c);
	}
	
	private static void contact_display() throws NumberFormatException, IOException {
		// This function is to displays address book
		InputStreamReader str = new InputStreamReader(System.in);
		BufferedReader B = new BufferedReader(str);
		int i = Integer.parseInt(B.readLine());
		Contact c = add_book.get_contact(i);
		System.out.println("The contact details are \r\n"+c.get_name()+" "+c.get_address()+" "+c.get_city()+" "+c.get_state()+" "+c.get_zip_code()+" "+c.get_mobile_no()+" "+c.get_email_id());
		//B.close();		// Close the buffer and stream reader so that they do not interfere with future usage of the same.
		//str.close();
	}
	
	private static void Read_address_book() throws IOException {
		String input_filename = "D:\\Terminalcommands\\linux-content\\Practice_problems\\Addressbook\\Address_book.xls";
		Read_address_book(input_filename);
	}
	
	private static void Read_address_book(String input_filename) throws IOException {
	
		File inputWorkbook = new File(input_filename);
		//creating workbook instance that refers to .xlsx file at  D:\Terminalcommands\linux-content\Practice_problems\Addressbook
		Workbook w;
		try {
			w = Workbook.getWorkbook(inputWorkbook);
		   
			//creating a Sheet object to retrieve the object
			Sheet sheet=w.getSheet("Sheet1");
			for (int i = 1; i < sheet.getRows(); i++) {
                Cell cell = sheet.getCell(0,i);
                //CellType type = cell.getType();
                String first_name = cell.getContents();
                cell = sheet.getCell(1,i);
                String last_name = cell.getContents();
                cell = sheet.getCell(2,i);
                String address = cell.getContents();
                cell = sheet.getCell(3,i);
                String city = cell.getContents();
                cell = sheet.getCell(4,i);
                String state = cell.getContents();
                cell = sheet.getCell(5,i);
                String zip_code = cell.getContents();
                cell = sheet.getCell(6,i);
                String mobile_no = cell.getContents();
                cell = sheet.getCell(7,i);
                String email_id = cell.getContents();
                //Contact c1 = new Contact(first_name,last_name,address,city,state,zip_code,mobile_no,email_id);
                add_book.add_contact(first_name, last_name, address, city, state, zip_code, mobile_no, email_id);
        	}
		} catch (BiffException e) {
			// TODO Auto-generated catch block
			
			
			System.out.println("error occured");
			e.printStackTrace();
		}
		
	}
		
	private static void Open_address_book() {
		// TODO Auto-generated method stub
		
	}


	private static void delete_contact_display() throws IOException {
		// TODO Auto-generated method stub
		System.out.println("Enter the name of the contact to be deleted");
		InputStreamReader str = new InputStreamReader(System.in);
		BufferedReader B = new BufferedReader(str);
		String name = B.readLine();
		add_book.delete_contact(name);
	}
	private static void save_current_address_book() {
		// TODO Auto-generated method stub
		//File output = 
	}



}