public class companywork {

    public String que { get; set; }

    public PageReference saveToPdf() {
        renderingService = 'PDF';
        return null;
    }
public Boolean renderingAsHtml() {
        return ( (renderingService == null) || 
                 ( ! renderingService.startsWith('PDF')) );
    }
  
  public String renderedFileName { 
        get; 
        set { renderedFileName = this.sanitizeFileName(value); }
    } 
  
 public String renderingService { get; set; }
   
public List<Company__c> tt{set;get;}

public companywork() {

tt=[SELECT id , Name ,phone__c from Company__c];

}

 private String sanitizeFileName(String unsafeName) {
        String allowedCharacters = '0-9a-zA-Z-_.';
        String sanitizedName = unsafeName.replaceAll('[^' + allowedCharacters + ']', '');
            
        // You might also want to check filename length, 
        // that the filename ends in '.pdf', etc.
        return(sanitizedName);
    }
}