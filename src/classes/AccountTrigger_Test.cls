@isTest
public class AccountTrigger_Test {

    static testMethod void test1(){
        Account acc=new Account();
        acc.Name='Rajasekhar';
        acc.CurrencyIsoCode='INR';
        insert acc;
    }
}