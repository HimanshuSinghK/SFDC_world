@isTest
public class TestVerifyDate{
public static testmethod void test1(){
VerifyDate.CheckDates(System.now().Date(),System.now().Date()+10);
}
public static testmethod void test2(){
VerifyDate.CheckDates(System.now().Date()+15,System.now().Date());
}
}