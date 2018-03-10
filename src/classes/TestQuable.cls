public class TestQuable implements Queueable {

  public void execute(QueueableContext qc){
        List<Employee__C> emp=[select id from Employee__C];
      	system.debug('emp --->>'+emp);
      Database.executeBatch(new EmployeeUpdateBatch());
    }
}