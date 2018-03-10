trigger AmountValidator on Expense__c (before insert) {
Expense__c[] expenses=Trigger.New;
    for(Expense__C e:expenses){
        if(e.Amount__C<200)
            e.addError('Ammount should be grater than 200');
    }
}