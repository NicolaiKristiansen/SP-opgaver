import java.util.ArrayList;

public class Author {
    private String name;
    private ArrayList<Title> titles = new ArrayList<>();

    public Author(String name){
        this.name = name;
    }

    public ArrayList<Title> getTitle(){
        return titles;
    }

    public String getName(){
        return this.name;
    }

    public void addTitle(Title book){
        titles.add(book);
    }

    public float calculateTotalPay(){
        float sum = 0;
        for (Title t: titles ){
            sum = sum + (float)t.calculateRoyalty();
        }
        return sum;
    }
}
