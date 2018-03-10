public class ExpenseController {

    private List<Expense__C> expenseList=new List<Expense__C>();
    
    public void findAll(){
        for(Expense__c e :[select Amount__C from Expense__c])
        {
            System.debug('Expense Amount '+e.Amount__C);
        }
    }
    
   // @InvocableMethod  this is used to invoke a method from process builder
   // The invocable method must be static and public or global, and its class must be an outer class.
   // Only one method in a class can have the InvocableMethod annotation.
   // Triggers can’t reference invocable methods.
   //	Other annotations can’t be used with the InvocableMethod annotation.
    public static void test(){
        system.debug('method for process builder');
    }
}