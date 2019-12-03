trigger accountteam on Account (after insert, after update) {


    
     if(Trigger.isInsert) {
     
        List<AccountTeamMember> acctMembers = new List<AccountTeamMember>();

           for(Account a : Trigger.new){
            
            AccountTeamMember ca = new AccountTeamMember();
            ca.AccountId = a.Id;
            ca.TeamMemberRole = 'Client Advisor';
            ca.UserId = userinfo.getuserid();
            acctMembers.add(ca);
            }
           
            insert acctMembers;
  }

}