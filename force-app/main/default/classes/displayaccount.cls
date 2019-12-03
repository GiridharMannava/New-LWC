public class displayaccount{

public list<Account> acclst{set;get;}

public list<Contact> conlst{set;get;}



public displayaccount(){

acclst=[select id,name from account ];

conlst=[select id,name from contact ];


}

public void test(){
account ts=new Account();
ts.name= 'TESTING';
insert ts;

}

public void actionpollar(){

acclst=[select id,name from account];

conlst=[select id,name from contact];

}

}