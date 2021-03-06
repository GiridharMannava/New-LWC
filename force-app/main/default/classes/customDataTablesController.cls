public class customDataTablesController {
    
    @AuraEnabled
    public static List<Account> fetchAccounts(){
        return [SELECT Id, Name, Industry, Type, Rating FROM ACCOUNT LIMIT 10];
    }
    
    /**
This method will fetch us all the values of Rating Picklist in Account 
SObject dynamically. We are trying to form a List of values related to 
Rating Picklist. We cannot use `SelectOption` class here as it's not a 
aura enabled class. 
*/
    @AuraEnabled
    public static List<String> fetchRatingValues(){
        
        //List<SelectOption> options = new List<SelectOption>();
        List<String> ratingOptions = new List<String>();
        
        Schema.DescribeFieldResult fieldResult = Account.Rating.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
        
        for(Schema.PicklistEntry a: ple){
            ratingOptions.add(a.getValue());
        }
        
        return ratingOptions;
    }
    
}