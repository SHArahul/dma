package mytt;

/**
 * Created by rajneesh on 23/4/17.
 */
public class Subjects {
    private String subjectName;
    private int subjectCategory;
    private int noOfLecturesPerWeek;
    private int noOfLecs=0;
    private int noOfLecsPerDay;
    private int noOfLecsPerDayDone=0;

    public Subjects(String subjectName, int subjectCategory, int noOfLecturesPerWeek, int noOfLecsPerDay) {
        this.subjectName = subjectName;
        this.subjectCategory = subjectCategory;
        this.noOfLecturesPerWeek = noOfLecturesPerWeek;
        this.noOfLecsPerDay=noOfLecsPerDay;
    }

    public Subjects(String subjectName, int noOfLecsPerDay) {
        this.subjectName = subjectName;
        this.noOfLecsPerDay = noOfLecsPerDay;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public int getSubjectCategory() {
        return subjectCategory;
    }

    public void setSubjectCategory(int subjectCategory) {
        this.subjectCategory = subjectCategory;
    }

    public int getNoOfLecturesPerWeek() {
        return noOfLecturesPerWeek;
    }

    public void setNoOfLecturesPerWeek(int noOfLecturesPerWeek) {
        this.noOfLecturesPerWeek = noOfLecturesPerWeek;
    }

    public int getNoOfLecs() {
        return noOfLecs;
    }

    public void setNoOfLecs(int noOfLecs) {
        this.noOfLecs = noOfLecs;
    }
    public void setNoOfLecs() {
        this.noOfLecs++;
    }

    public int getNoOfLecsPerDay() {
        return noOfLecsPerDay;
    }

    public void setNoOfLecsPerDay(int noOfLecsPerDay) {
        this.noOfLecsPerDay = noOfLecsPerDay;
    }
//    public void setNoOfLecsPerDay() {
//        this.noOfLecsPerDay++;
//    }

    public int getNoOfLecsPerDayDone() {
        return noOfLecsPerDayDone;
    }

    public void setNoOfLecsPerDayDone(int noOfLecsPerDayDone) {
        this.noOfLecsPerDayDone = noOfLecsPerDayDone;
    }
    public void setNoOfLecsPerDayDone() {
        this.noOfLecsPerDayDone++;
    }
}

