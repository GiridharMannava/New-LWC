public class wrapclass{

public list<Account> acclst{set;get;}

public list<accwrap> wraplst{set;get;}

public boolean mschk{set;get;}


public wrapclass(){

     acclst=[select id,name from account];
     
     wraplst=new list<accwrap>();
     
     for(Account ac: acclst){
     
         wraplst.add(new accwrap(ac));
     
     }


}

 public void delacc(){
 
   List<Account> aclstdel=new List<Account>();
 
    for(accwrap ns:wraplst){
         
         if(ns.chk){
         
            aclstdel.add(ns.acc);
         }
    
    }
    
    database.delete(aclstdel,false);
    
    
        acclst=[select id,name from account];
        
        wraplst=new list<accwrap>();
        
        for(Account ac: acclst){
        
             wraplst.add(new accwrap(ac));
        
        }
    
    
 
 
 
 }
 
 public void selectall(){
 
   if(mschk){
   
     for(accwrap ns:wraplst){
         
         ns.chk=true;
    
    }
   
   
   
   }else{
   
       for(accwrap ns:wraplst){
         
         ns.chk=false;
    
    }
   
   
   }
 
 
 }



 public class accwrap{
 
 public boolean chk{set;get;}
 public account acc{set;get;}
 
 public accwrap(Account ac){
    acc=ac;
    chk=false;
 }
 
 
 }




}