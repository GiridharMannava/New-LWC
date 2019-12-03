public class giridhartesting {

    Integer count = 0;

    public Account a {get;set;}       

     

    public giridhartesting ()

    {

        Account a = new Account();

        a = [Select NumberOfEmployees from Account where id = '00190000007RBhM'];

        if(a.NumberOfEmployees != null)

            count = a.NumberOfEmployees;

    }          

    public PageReference incrementCounter() {

            count++;

            try

            {

                a = [Select id from Account where id = '00190000007RBhM'];

                a.NumberOfEmployees = count;

                update a;

            }

            catch(exception e)

            {

                ApexPages.addMessages(e);

            }

            return null;

    }

        

                        

    public Integer getCount() {

        return count;

    }

}