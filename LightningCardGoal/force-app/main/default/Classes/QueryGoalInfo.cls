public class QueryGoalInfo {
    /*
    @AuraEnabled
    public static user finduserInfo()
    {
        User newuser = [Select id,name from User where id=:UserInfo.getUserId()];
        return newuser;
    } 
    where User__c=:UserInfo.getUserId()
    */
    
    @AuraEnabled
    public static list<Account> goalsinfofromAccount()
    {
        list<Account> loggedInuserAccData = [SELECT Id, BillingStreet,BillingCity,Phone, Goal_Title_Field__c, Status__c, Description, Due_Date__c FROM Account ];
        return loggedInuserAccData;
    }
}