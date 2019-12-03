public class adrowstesting{

public List<Account> abcd{set;get;}

public adrowstesting(){

abcd=new List<account>();

Account qw=new Account();

abcd.add(qw);

}

public void addacnt(){

Account ast=new Account();

abcd.add(ast);

}

public void delacnt(){

integer k=abcd.size();

if(k!=1){

abcd.remove(k-1);

}

}

public void acntinsert(){

database.insert(abcd,false);

}

}