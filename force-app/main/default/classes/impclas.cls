public class impclas{

 public impclas(ApexPages.StandardController controller) {}    

  public pagereference mymethod() {
    Account a=[SELECT Id, Name,Rating,Status__c  FROM Account WHERE Id = :ApexPages.currentPage().getParameters().get('Id')];
    a.Status__c  = 'closed';
    a.Rating = 'Hot';
    update a;
    pagereference  pr=new pagereference('https://na73.salesforce.com/'+a.id);
    pr.setredirect(true);
    return pr;
}
}