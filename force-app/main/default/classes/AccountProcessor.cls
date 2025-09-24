public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIds){
        List<Account> accnt = [Select Id,(Select Id FROM Contacts) FROM Account WHERE Id IN:accountIds];
        for(Account acc : accnt){
            acc.Number_Of_Contacts__c = acc.Contacts.size();
            System.debug('inside for loop '+acc);
        }      
        update accnt;
    }
}