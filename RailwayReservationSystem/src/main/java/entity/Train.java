package entity;

public class Train {
    private String trainName;
    private Integer noOfCoahes;
    private String startStation;
    private String endStation;
    private String localTrain;
    private String superFastTrain;
    private String intercityExpress;
    private String goodsTrain;
    private Integer avgSpeed;

    public String getTrainName() {
        return trainName;
    }

    public void setTrainName(String trainName) {
        this.trainName = trainName;
    }

    public Integer getNoOfCoahes() {
        return noOfCoahes;
    }

    public void setNoOfCoahes(Integer noOfCoahes) {
        this.noOfCoahes = noOfCoahes;
    }

    public String getStartStation() {
        return startStation;
    }

    public void setStartStation(String startStation) {
        this.startStation = startStation;
    }

    public String getEndStation() {
        return endStation;
    }

    public void setEndStation(String endStation) {
        this.endStation = endStation;
    }

    public String getLocalTrain() {
        return localTrain;
    }

    public void setLocalTrain(String localTrain) {
        this.localTrain = localTrain;
    }

    public String getSuperFastTrain() {
        return superFastTrain;
    }

    public void setSuperFastTrain(String superFastTrain) {
        this.superFastTrain = superFastTrain;
    }

    public String getIntercityExpress() {
        return intercityExpress;
    }

    public void setIntercityExpress(String intercityExpress) {
        this.intercityExpress = intercityExpress;
    }

    public String getGoodsTrain() {
        return goodsTrain;
    }

    public void setGoodsTrain(String goodsTrain) {
        this.goodsTrain = goodsTrain;
    }

    public Integer getAvgSpeed() {
        return avgSpeed;
    }

    public void setAvgSpeed(Integer avgSpeed) {
        this.avgSpeed = avgSpeed;
    }
}
