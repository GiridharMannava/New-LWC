public class checkcount{

public decimal kt{set;get;}

public checkcount(){

kt=[select id,Page_Count__c from user where id =:userinfo.getuserId()].Page_Count__c ;

}



public void savcont(){

user usr=new user();

usr.Id=userinfo.getuserId();

usr.Page_Count__c =kt+1;

Update usr;



}





}