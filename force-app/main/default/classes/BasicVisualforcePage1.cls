public class BasicVisualforcePage1{
   
    public integer num1{set;get;}
   
    public integer num2{set;get;}
   
    public integer additionValue{set;get;}
    
    public void myAdditionMethod(){
   
        additionValue = num1+num2;
    }
    
    
    public void mysubMethod(){
   
        additionValue = num1-num2;
    }
    
    
    public void myMulMethod(){
    
        additionValue = num1*num2;
    }
    
    
    public void myDIVMethod(){
  
        additionValue = num1/num2;
    }
    
}