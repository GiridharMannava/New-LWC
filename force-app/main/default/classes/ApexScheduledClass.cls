global class ApexScheduledClass Implements Schedulable {
            
global void execute(SchedulableContext sc) {
                        
 sendmail();

 }
 
public void sendmail() {
                       
      List<Messaging.SingleEmailMessage>  mails = new List<Messaging.SingleEmailMessage>();


      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    
     
      list<string> aclst=new list<string>();
      aclst.add('giridhar.mannava315@gmail.com');   
      mail.setToAddresses(aclst);
    
      
      mail.setReplyTo('giridhar.mannava315@gmail.com');
      mail.setSenderDisplayName('Schedule Message');
                  
      mail.setSubject('Morning Greetings');
      String body = 'Dear Customer';
      body += 'Good Morning';
      body += 'Have A Great';
      body += 'Day';
      
      mail.setHtmlBody(body);
    
      mails.add(mail);
  
      Messaging.sendEmail(mails);
       }
        
       }