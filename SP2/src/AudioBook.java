public class AudioBook extends Title {
    private int durationInMinutes;

    public AudioBook(String title, String literatureType, int copies, int durationInMinutes){
        super(title, literatureType, copies);
        this.durationInMinutes = durationInMinutes;
    }

    @Override
    protected double calculatePoints(){
        return (durationInMinutes * 0.5) * calculateLiteraturePoints() * copies;
    }

    @Override
    protected double calculateLiteraturePoints() {
        switch (getLiteratureType()){
            case "BI":
                return 3;
            case "TE":
                return 3;
            case "LYRIK":
                return 6;
            case "SKØN":
                return 1.7;
            case "FAG":
                return 1;
        }
        return 0;
    }
}
