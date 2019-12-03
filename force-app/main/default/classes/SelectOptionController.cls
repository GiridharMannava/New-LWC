public class SelectOptionController {

    public String getSelectedIndustry() {
        return null;
    }

 public List<SelectOption> countrieLst {get;set;}
 public String selectedCountry{get;set;}
 public String selectedValues {get;set;}


 public SelectOptionController(){
  countrieLst = new List<SelectOption>();
 
  countrieLst.add(new SelectOption('','--None--'));
  countrieLst.add(new SelectOption('Agriculture','Agriculture'));
  countrieLst.add(new SelectOption('Banking','Banking'));
  countrieLst.add(new SelectOption('Electronics','Electronics'));

 }

 public pageReference show(){
  selectedValues = 'Selected Industry:'+selectedCountry;
  return null;

 }


}