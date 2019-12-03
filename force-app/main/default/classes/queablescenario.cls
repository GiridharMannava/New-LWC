public class queablescenario implements Queueable { 
    
    
   public string indus; 
   
   public queablescenario (string industry){
   
   indus=industry;
   
   }
   
   
   
    public void execute(QueueableContext context) {
    
     List<Account> Acc=[SELECT id,Phone From Account where industry=:indus];
     
     for(Account act: Acc) {
     
     act.Phone='4444';
     }
     update acc;   
    }
}