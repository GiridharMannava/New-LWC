public class DataTableExampleController1 {
    
public List<Contact> contactList {set;get;}
        
public DataTableExampleController1(){

contactList = [SELECT Account.Name, FirstName, LastName, Phone FROM Contact limit 100];
  
}
           
}