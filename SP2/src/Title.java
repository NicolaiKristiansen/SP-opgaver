public abstract class Title {
    private String title;
    private String literatureType;
    protected int copies;
    protected double rate = 0.067574;

    public Title(String title, String literatureType, int copies){
        this.title = title;
        this.literatureType = literatureType;
        this.copies = copies;
    }

    public double calculateRoyalty(){
        return this.calculatePoints() * rate;

    }

    abstract protected double calculatePoints();

    abstract protected double calculateLiteraturePoints();

    public String getLiteratureType(){
        return this.literatureType;
    }
}
