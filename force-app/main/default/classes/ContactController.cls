public with sharing class ContactController {
@AuraEnabled
    public static List<Contact> getContacts(){
        List<Contact> contacts= [Select id,Name,Email,MailingStreet,Phone,Leadsource FROM Contact];
        return contacts;
    }
}