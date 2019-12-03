public class giridhartestingg {

    Integer count = 0;

    public Account a {get;set;}       

     

    public giridhartestingg ()

    {

        Account a = new Account();

        a = [Select NumberOfEmployees from Account where id = '0011I000005P7cI'];

        if(a.NumberOfEmployees != null)

            count = a.NumberOfEmployees;

    }          

    public PageReference incrementCounter() {

            count++;

            try

            {

                a = [Select id from Account where id = '0011I000005P7cI'];

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