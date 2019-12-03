global class permsets implements Schedulable {

string permissonsetname;

  public permsets (string permissonsetname,Id Userid,Integer days){
  
  
  }
  

   global void execute(SchedulableContext SC) {
         
         
     string userId = UserInfo.getUserId();
      Id permSetId = [SELECT Id FROM PermissionSet WHERE Label =: permissonsetname LIMIT 1].Id;
        If (permSetId != null){
            delete [SELECT Id from PermissionSetAssignment WHERE PermissionSetId = : permSetId AND AssigneeId = : userinfo.getuserId()];

        }
      }            
       



   }