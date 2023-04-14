package ZooKeeper;

public class Pelican extends Bird implements Flyable {

    @Override
    public void fly() {
        System.out.println("I'm a pelican...");
    }

}
