public class ContactAndLeadSearch{
public static List<List<SObject>> searchContactsAndLeads(String str){

Account acct = new Account (
            Name = 'Smith Computing',
            Phone = '(415 555-1212',
            NumberOfEmployees = 50,
            BillingCity = 'San Francisco');
        insert acct;
        ID acctID = acct.ID;

Contact con = new Contact(
    FirstName='Carol',
    LastName='Smith',
    Phone='(415)555-1212',
    Department='Wingo',
    AccountId = acctID);
insert con;
Lead ld= new Lead(
    FirstName='Carol',
    LastName='Smith',
    Phone='(415)555-1212',
    Company='TechWorks',
    Title='Wingo');
insert ld;

List<List<sObject>> searchList = [FIND: str IN ALL FIELDS
                   RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
return searchList;

}
}