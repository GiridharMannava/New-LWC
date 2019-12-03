@isTest
public class accountinsert
{
    public static testmethod void testinsert()
    {
        Account ac = new Account();
        
        ac.name='Ravi';
        
        insert ac;      
        
        Account act = new Account();
        
        act.name='Ravi';
        
        insert act;  
    }
    
}