public class pagewrap{

public list<accwrap> wraplist{set;get;}


public pagewrap(){

wraplist=new list<accwrap>();

list<Account> aclst=[select id,name,phone from account limit 10];
  for(Account ns: aclst){
       wraplist.add(new accwrap(ns)); 
  }



}


public void delacc(){

  List<Account> accsdel=new List<Account>();

  for(accwrap tst:wraplist){
  
      if(tst.chk){
      
        accsdel.add(tst.ts);
      
      
      }
  
  
  }
  
  Database.delete(accsdel,false);
  
  wraplist.clear();
  
  list<Account> aclst=[select id,name,phone from account limit 10];
  for(Account ns: aclst){
       wraplist.add(new accwrap(ns)); 
  }




}


public void checkall(){

  for(accwrap tst:wraplist){
        tst.chk=true;
     }


}




public class accwrap{

public boolean chk{set;get;}
public account ts{set;get;}

public accwrap(Account nt){
     ts=nt;

}


}



}