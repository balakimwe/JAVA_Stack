package CafeBusinessLogic;

import java.text.Format;
import java.util.ArrayList;

public class CafeUtil {
    

    // 
    // 
    // 
    public int getStreakGoal(int numWeeks){
        int sum = 0;
        for (int i = 0; i <= numWeeks; i++){
            sum += i;
            
        }
        return sum;
    }

    public int getStreakGoal(){
        int sum = 0;
        for (int i = 0; i <= 10; i++){
            sum += i;
            
        }
        return sum;

    }

    public double getOrderTotal(double[] prices){
        double total = 0;
        for(int i = 0; i < prices.length; i++){
            total += prices[i];

        }
        return total;

    }

    public void displayMenu(ArrayList<String> menuItems){
        for(int i = 0; i < menuItems.size(); i++){
            System.out.printf("\t%d %s\n",i, menuItems.get(i));

        }
        
    }
    
    public void addCustomer(ArrayList<String> customers){
        System.out.println("Please enter your name:");
        String userName = System.console().readLine();
        System.out.println("Hello, " + userName);
        System.out.printf("There are %d people in front of you", customers.size());
        customers.add(userName);
        System.out.println(customers);


    }
}
