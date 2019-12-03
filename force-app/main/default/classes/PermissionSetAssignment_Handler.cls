public class PermissionSetAssignment_Handler{

  public static void AssignPermissionSet(string permissionsetname,id userid,Integer days) {
  
      Id permSetId = [SELECT Id FROM PermissionSet WHERE Label =: permissionsetname  LIMIT 1].Id; 
     
      If (permSetId !=null){
         
          List <PermissionSetAssignment> permSetCheck = [SELECT Id from PermissionSetAssignment WHERE PermissionSetId = : permSetId AND AssigneeId = : userinfo.getuserid()];
                       
                If (permSetCheck.size()==0){                                       
                    PermissionSetAssignment psa = new PermissionSetAssignment
                    (PermissionSetId = permSetId, AssigneeId = userinfo.getuserId());
                    
                   insert psa;
      }     
      
            permsets  m = new permsets (permissionsetname,userid,5);
            String sch = '20 30 8 10 2 ?';
            String jobID = system.schedule('Schedykd', sch, m);
      
      }

  }

 }