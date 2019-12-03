//Email Messaging in apex
public class emailin_class {

 public string subject {get; set;}  
 public string class_body {get; set;} 
 List<string> emails = new List<string>{'rajanalapavan253@gmail.com','giridhar.mannava315@gmail.com','venktapavan253@gmail.com'};
  

public pageReference send() {

Messaging.singleEmailmessage email = new  Messaging.singleEmailmessage();

email.setSubject(subject);
email.setPlainTextBody(class_body);
email.setToAddresses(emails);

Messaging.sendEmailResult[] r= Messaging.sendEmail(new Messaging.singleEmailMessage[] {email});

PageReference pageRef = new PageReference('https://www.google.co.in');
return pageRef;
}

}