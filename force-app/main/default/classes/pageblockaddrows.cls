public class pageblockaddrows{


public list<Account> latacc{set;get;}


public pageblockaddrows(){

latacc=new list<Account>();

Account ts=new Account();

latacc.add(ts);


}

public void addacc(){

Account ns=new Account();

latacc.add(ns);


}

public void accdel(){

integer k=latacc.size();

if(k!=1){

latacc.remove(k-1);
}

}

public void accinsert(){


database.insert(latacc,false);

}






}