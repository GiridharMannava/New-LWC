@isTest
public class ListViewDemoTest
{    
    
    @testSetup 
    static void createAccount() {
        // Create common test accounts
        List<Account> testAccts = new List<Account>();
        for(Integer i=0;i<20;i++) {
            testAccts.add(new Account(Name = 'TestAcct'+i));
        }
        insert testAccts;        
    }
    
     public static testMethod void getListView(){
        //Lets Assume we are writing Controller extension to use on List View of Account
        List <Account> acctList = [SELECT ID FROM Account];
  
         //Check Account created count by setup()
         System.assertEquals(20,acctList.size());
         
        //Start Test Context, It will reset all Governor limits
        Test.startTest();

        //Inform Test Class to set current page as your Page where Extension is used
        Test.setCurrentPage(Page.ListViewDemo);

        //Instantiate object of "ApexPages.StandardSetController" by passing array of records
        ApexPages.StandardSetController stdSetController = new ApexPages.StandardSetController(acctList);

        //Now, create Object of your Controller extension by passing object of standardSetController
        ListViewDemo ext = new ListViewDemo(stdSetController);
        
        SelectOption[] selOptions = ext.getAccountExistingViews();
         
        //We should not assert count of list View as no control over creation of list view
        //but in my Dev org, I know count is 6 
        System.assertEquals(6,selOptions.size());
         
         ext.firstPage();
         List<Account> accFirsttPage = ext.getAccounts();
         System.assertEquals( 10, accFirsttPage.size() );
         
         ext.next();
         ext.prev();
         ext.resetFilter();
         ext.lastPage();
          
        //Finish Test
        Test.stopTest();
     } 
}