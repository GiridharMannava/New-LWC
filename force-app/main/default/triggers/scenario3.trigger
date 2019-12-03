trigger scenario3 on Account (after insert) {

 if(Trigger.IsInsert && Trigger.IsAfter){
         
         List<Contact> ntt=new List<Contact>();
     
         for(Account ac:Trigger.new){
             
             Contact con=new Contact();
             
             con.LastName=ac.Name;
             
             con.accountId=ac.Id;
         
             ntt.add(con);
         
         }
         
         Insert ntt;
}

}