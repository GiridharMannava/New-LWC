public class vfpage{

public account acc{set;get;}


public vfpage(){

acc=new account();


}


public void addacc()
{

database.insert(acc,false);


}



}