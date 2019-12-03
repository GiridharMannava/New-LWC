// This trigger copies an account's address to its contacts
trigger SyncAddresses on Account (after update) {
  for (Account a : Trigger.new) {
    List<Contact> contacts = [SELECT Id,Account.BillingStreet,Account.BillingCity,Account.BillingState,Account.BillingPostalCode,Account.BillingCountry FROM Contact]; 
  
  for (Contact c : contacts) {
  
    c.MailingStreet     = c.Account.BillingStreet;
      c.MailingCity       = c.Account.BillingCity;
      c.MailingState      = c.Account.BillingState;
      c.MailingPostalCode = c.Account.BillingPostalCode;
      c.MailingCountry    = c.Account.BillingCountry;
      update c;
    }
  }
}