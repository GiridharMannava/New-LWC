public class testpageredirect{

public string acc{set;get;}


public testpageredirect(){

}

public pagereference redirect(){

account ts=new account();

ts.name=acc;

Insert ts;

pagereference pf=new pagereference('/'+ts.Id);

return pf;
}

public pagereference redirecttopage(){

pagereference pf=new pagereference('/apex/testing456?ts=3535');

return pf;

}



public string accdetails(){

string ts='test';

return ts;
}

public void test(){
system.debug('inside');

}

public static void testing(){
system.debug('inside');

}




}