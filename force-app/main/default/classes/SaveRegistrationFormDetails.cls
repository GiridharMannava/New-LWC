public class SaveRegistrationFormDetails {
	@AuraEnabled
    public static Id SaveRegistrationDetails(Registration_Form__c RegForm){
        //Do DML here
        insert RegForm;
        return RegForm.Id;
    }
    @AuraEnabled
    public static Id SaveEducationalDetails(Education_Detail__c EduDet){
        insert EduDet;
        return EduDet.Id;
        
    }
}