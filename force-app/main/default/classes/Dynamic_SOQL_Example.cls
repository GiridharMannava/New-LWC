public class Dynamic_SOQL_Example {
    public Map<String,List<String>> objmap{set;get;}
    public List<selectoption> objects{set;get;}
    public List<selectoption> leftoptions{set;get;}
    public List<selectoption> rightoptions{set;get;}
    
    public Dynamic_SOQL_Example(){
        objmap = new Map<String,List<String>>();
        objects = new List<selectoption>();
        leftoptions = new List<selectoption>();
        rightoptions = new List<selectoption>();  
        List<String> accFields = new List<String>{'Name','Phone','Industry','Rating'};
            List<String> conFields = new List<String>{'LastnName','FirstName','Phone','Email'};
                List<String> oppFields = new List<String>{'Name','Stagename','Amount'};
                    objmap.put('Account', accFields);  
        			objmap.put('Contact', conFields);
        			objmap.put('Opportunity',oppFields);
        selectoption n = new selectoption('None','-None-');
        objects.add(n);
        leftoptions.add(n);
        rightoptions.add(n);
        
    }
}