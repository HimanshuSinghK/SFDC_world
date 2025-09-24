trigger AccountTestTrigger on Account (before insert) {
    //list<Account> acc = new list<Account>();
    for(Account a:Trigger.new)
		a.Phone='9999999999';
}