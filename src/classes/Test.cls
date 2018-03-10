global abstract class Test{
    global abstract void test();
    


 public class HelloWorld extends Test {

    public List<String> stringList=new List<String>{'Raja','Kumar','Naresh'};
        public override void test(){
            
        }
       
        public void show(){
            stringList.sort();
          // for(String s:stringList)
                System.debug('Elements in list :'+stringList);

        }
 }    
}