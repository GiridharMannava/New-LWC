public class workoncount {

public integer dec{set;get;}

public workoncount() {



}

public void res() {
dec=integer.valueof([SELECT Id,counting__c from User where Id=:userinfo.getuserId()].counting__c);
user mnr=new user();

mnr.Id=userinfo.getuserId();

if([SELECT Id,counting__c from User where Id=:userinfo.getuserId()].counting__c!=null){

mnr.counting__c=decimal.valueof(dec+1);

}else{
mnr.counting__c=1;

}
update mnr;

}

}