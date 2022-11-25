package HomeWork.Assignment_II;

public class eggHunt {
    public static void main(String[] args) {
        System.out.println(eggHunt(0));
        System.out.println(eggHunt(1));
        System.out.println(eggHunt(5));
    }

    static int eggHunt(int bunnies){
        if(bunnies == 0) return 0;
        else if (bunnies == 1) return 2;
        else return 2 + eggHunt(bunnies - 1);
    }
}
