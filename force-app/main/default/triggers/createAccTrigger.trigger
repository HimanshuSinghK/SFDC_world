trigger createAccTrigger on Contact (after insert) {
    List<Account> accList = new List<Account>();
    for(Contact con : Trigger.new){
        if(con.AccountId ==null){
            Account acc = new Account();
            acc.Name = con.LastName+' Account';
            accList.add(acc);
        }
    }
    if(!accList.isEmpty()){
    insert accList;
    }
    System.debug('Account New'+accList[0].id);
}