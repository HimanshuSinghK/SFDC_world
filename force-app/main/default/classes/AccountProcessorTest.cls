@isTest
private class AccountProcessorTest {
	@isTest
    private static void countContactsTest(){
        List<Account> acc = new List<Account>();
        for(Integer i=0;i<=100;i++){
            acc.add(new Account(Name='test Account'+i));
        }
        insert acc;
        
        List<Contact> con = new List<Contact>();
        List<Id> accId = new List<Id>();
        for(Account a : acc){
            con.add(new Contact(FirstName=a.Name,Lastname='TestContact',AccountId=a.Id));
            accId.add(a.Id);
        }
        insert con;
        
        Test.startTest();
        AccountProcessor.countContacts(accId);
        Test.stopTest();
    }
}