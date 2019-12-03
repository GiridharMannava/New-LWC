public class paginationExp {
public ApexPages.StandardSetController controller {set;get;}
    public List<Company__c> getOpty(){
        List<Company__c> opps=(List<Company__c>) controller.getRecords();
        return opps;
    }
    public paginationExp (){
        List<Company__c> opps=[SELECT id , Name ,phone__c from Company__c];
        controller=new Apexpages.StandardSetController(opps);
        controller.setPageSize(20);
    }
}