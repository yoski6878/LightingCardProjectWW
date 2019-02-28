public class QueryGoalInfo {
    
    /*@AuraEnabled
    public static user finduserInfo()
    {
        User newuser = [Select id,name from User where id=:UserInfo.getUserId()];
        return newuser;
    } 


     @AuraEnabled
    public static list<Case> goalsinfofromAccount()
    {
        User loggedInuser = [Select id,ContactId from User where id=:UserInfo.getUserId()];
        list<Case> fetchCaserelatedToLoggedInUser = [Select id,ContactId,Contact.name,(Select id,Name,Case__c,Date_Closed__c,Details__c,Phase_of_Care__c,Start_Date__c,Status__c from Case_Line_Items__r where Recordtype.Developername = 'Goal') from case where ContactId=:loggedInuser.ContactId];
        
        //list<Account> loggedInuserAccData = [SELECT Id, BillingStreet,BillingCity,User__c,Phone, Goal_Title_Field__c, Status__c, Description, Due_Date__c FROM Account where User__c=:UserInfo.getUserId()];
        return fetchCaserelatedToLoggedInUser;
    }*/
    
    
    
    @AuraEnabled
    public static list<Account> goalsinfofromAccount()
    {
        list<Account> loggedInuserAccData = [SELECT Id, BillingStreet,BillingCity,Phone,Goal_Title_Field__c, Status__c, Description, Due_Date__c FROM Account];
        return loggedInuserAccData;
    } 

   
}