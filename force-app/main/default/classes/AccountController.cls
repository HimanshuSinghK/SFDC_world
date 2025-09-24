public with sharing class AccountController {
@AuraEnabled
    public static List<Account> findAll(){
        List<Account> accounts=[Select id, name, Location__Latitude__s, Location__Longitude__s From Account Where Location__Latitude__s!=Null AND Location__Longitude__s!=Null Limit 50];
        return accounts;
    } 
}