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
                return 1.5;
            case "TE":
                return 1.5;
            case "LYRIK":
                return 3;
            case "SKØN":
                return 0.85;
            case "FAG":
                return 0.5;
        }
        return 0;
    }
}
