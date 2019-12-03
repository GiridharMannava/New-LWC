public class userpagecount{

public decimal g{set;get;}

public userpagecount(){

g=[select id,count__c from user where Id=:userinfo.getuserId()].count__c;

}

public void bbb(){

user ghj= new user();

ghj.Id=userinfo.getuserId();

ghj.count__c=g+1;

update ghj;

}

}