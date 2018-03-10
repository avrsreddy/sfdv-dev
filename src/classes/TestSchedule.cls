public class TestSchedule implements Schedulable {

    public void execute(SchedulableContext sc){
        System.debug('schedule job--->>>');
    }
}