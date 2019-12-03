public Class DynamicSchemaforObjects{
    public List<SelectOption> allSobjects{get;set;}
    
    public String SelectedObject{get;set;}
    
    
    public DynamicSchemaforObjects(){
        allSobjects = New List<SelectOption>();
        
        list<schema.sObjectType> allObjects = Schema.getGlobalDescribe().Values();
        integer i=0;
        for(schema.sObjectType so:allObjects){
            allSobjects.add(new SelectOption(String.ValueOF(so),String.ValueOF(i++)));
        }
        
    }
    
    public void displaySelectedValue(){
        
    }
}