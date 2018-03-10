@IsTest
public class AccountValidatorTest {

    @IsTest
    static void testAccountValidator(){
        Expense__C e=new Expense__C(Expense_Type__C='Mobile',Amount__C=190);
        Database.SaveResult sr=Database.insert(e,false);
        
       
    }
}