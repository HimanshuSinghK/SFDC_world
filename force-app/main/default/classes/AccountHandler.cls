public class AccountHandler{
public static Account insertNewAccount(String str){
try{
Account acc = new Account(Name=str);
insert acc;

insertNewAccount(null);
return acc;
}
catch(Exception e){
return null;
}
}
}