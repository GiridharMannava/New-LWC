public class Soql{
      public list<Account> accs    {set;get;}
      public String accName       {set;get;}
      public String accIndustry   {set;get;}
      public void search(){
            accs=[select Name,Industry from Account];
            }
}