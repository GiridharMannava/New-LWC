public class customapex{
//variables declaration
public string accname{set;get;}

public string phonenum{set;get;}

public string conname{set;get;}

public string connum{set;get;}

public string samplename;//will not visible on vf page.


//Constructor---When page loads code in this block will execute first
public customapex(){
//Cannot do DML's in Constructor..

}

public void action(){

   User ts=new user();
   
   ts.Id=userinfo.getuserid();
   ts.Page_Count__c=1;
   
   Update ts;


}

public void saveresult(){
    //Inserting Accounts
    Account ct=new Account();
    
    ct.name=accname;
    
    ct.phone=phonenum;
    
    Insert ct;//DML statement--Insert,update,delete
    
    system.debug('Account Inserted'+ct);
    
    //Inserting Contacts
    Contact ts=new contact();
    
    ts.lastname=conname;
    
    ts.phone=connum;
    
    ts.accountId=ct.Id;
    
    Insert ts;//DML statement--Insert,update,delete
    
    system.debug('contact Inserted'+ts);

}

}