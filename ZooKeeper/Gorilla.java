package ZooKeeper;

public class Gorilla extends Mammal {

    public Gorilla(int energyLevel) {
        super(100);
    }

    public void throwSomething(){
        int currentEnergy = displayEnergyLevel();
        this.setEnergyLevel(currentEnergy -= 5);
        System.out.println("The gorilla threw something");
    }
    
    public void eatBanana(){
        int currentEnergy = displayEnergyLevel();
        this.setEnergyLevel(currentEnergy += 10);
        System.out.println("This gorilla threw something");     
    }

    @Override
    public void growHair() {
    }
    
}
