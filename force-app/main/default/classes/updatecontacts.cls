public class updatecontacts{



public static void updated(){

List<Contact> clst=[select id,lastname,phone from contact];

for(Contact ts:clst){
   
ts.phone='00000';
}

Update clst;


}






}