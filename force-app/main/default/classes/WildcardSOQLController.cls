Public class WildcardSOQLController {
    Public string inputtext{get;set;}
    Public List<account> accList{get;set;}
    Public boolean flagshow{get;set;}
    
    Public WildcardSOQLController(){
    flagshow = false;
    }    
    
    Public void searchRecords(){
    
      accList = database.Query('select name,accountnumber from account where name like '+'\''+'%'+inputtext+'%'+'\'');
      if(accList !=null && accList.size()>0){
       flagshow = true;
      }
    }
}