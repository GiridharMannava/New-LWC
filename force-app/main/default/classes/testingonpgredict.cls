public class testingonpgredict{

public string mgr{set;get;}

public testingonpgredict(){

}

public pagereference mytesting(){

account gg= new account();

gg.name=mgr;

Insert gg;

pagereference qw = new pagereference('/'+gg.Id);

return qw;

}

public pagereference secondpage(){

pagereference qw = new pagereference('/apex/dummy1');

return qw;
}

}