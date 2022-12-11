public class Marios implements city{
    private String storeName, storeLocation;

    Marios(String name, String location){
        this.storeLocation = location;
        this.storeName = name;
    }

    public String getStoreName(){
        return storeName;
    }

    public String getStoreLocation(){
        return storeLocation;
    }

    void setStoreName(String name){
        this.storeLocation = name;
    }

    void setstorelocation(String location){
        this.storeLocation = location;
    }
}
