import java.util.ArrayList;

public class LibraryRoyalityCalculator {
    public static void main(String[] args) {

        ArrayList<Author> authors = new ArrayList<>();
        Author author = new Author("Kenny Smith");
        Title book = new PrintedBook("The murder of Brook Disko","SKØN", 2, 400);
        Title book2 = new PrintedBook("The 5 minute robery", "TE", 2, 20);
        Title book3 = new PrintedBook("Third times the charm", "BI", 10, 20);
        author.addTitle(book);
        author.addTitle(book2);
        author.addTitle(book3);

        Author author2 = new Author("Benny Karla");
        Title book4 = new PrintedBook("Transformers", "TE", 2, 15);
        Title book5 = new AudioBook("Boogie", "FAG", 5, 20);
        author2.addTitle(book4);
        author2.addTitle(book5);

        authors.add(author);
        authors.add(author2);

        for (Author a: authors){
            a.getTitle();
            System.out.println(a.getName() + ": " + a.calculateTotalPay() + "kr");
        }
    }
}
