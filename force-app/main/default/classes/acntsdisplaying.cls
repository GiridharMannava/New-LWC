public class acntsdisplaying{

public List<Account> acntslist{set;get;}

public List<Contact> contslist{set;get;}

public acntsdisplaying(){

acntslist=[select id,name from account limit 1200];
contslist=[select id,name from contact limit 1200];

}
public void test(){
account ts=new Account();
ts.name='nt';
insert ts;
}

public void pollartest(){

acntslist=[select id,name from account limit 1200];
contslist=[select id,name from contact limit 1200];

}

}