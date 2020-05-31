public class Luxury_Room extends Standard_Room{
    private String typeOfFood;
    public Luxury_Room(int room_capacity, double price_per_person, double price_per_day, String typeOfFood ){
        super(price_per_day, room_capacity, price_per_person);
        this.typeOfFood = typeOfFood;
    }
    @Override
    public double Payment(int room_number){
        int i, counter = 0;
        double price = 0;
        double extraPrice = 0;
        boolean flag = true;
        for(i=0; i<table.length; ++i){
            if(table[i] != null && table[i].room.room_number == room_number){
                   counter++;
                   price += price_per_day;
            }
        }
        if(null != typeOfFood)switch (typeOfFood) {
            case "breakfast":
                extraPrice = counter*5.0;
                break;
            case "lunch":
                extraPrice = counter*8.0;
                break;
            case "dinner":
                extraPrice = counter*7.0;
                break;
            case "full meal":
                extraPrice = counter*15.0;
                break;
            default:
                break;
        }
        return price + extraPrice;
    }
}

