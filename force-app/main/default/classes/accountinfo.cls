public class accountinfo{

public List<Account> listacc{set;get;}

public string AName{set;get;}
public String Aphone {get; set;}

public accountinfo()

{

List<Account> listacc=new List<Account>();

string saa='select Id,Name,Phone,Fax from account';

listacc = Database.Query(saa);

}

public pageReference Search()
{

 String Saa= 'select Id,Name,Phone,Fax from account where Name =: Aname OR Phone =: Aphone';

 listacc=Database.Query(saa);

 return null;

}




}