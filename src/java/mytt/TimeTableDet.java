package mytt;

import java.util.ArrayList;

/**
 * Created by rajneesh on 23/4/17.
 */
public class TimeTableDet {
    private String weekDay;
    private String[] lecture = new String[8];
    private ArrayList<String> lectureList = new ArrayList<>();


    public TimeTableDet(String weekDay, String lecture) {
        this.weekDay = weekDay;
        String[] lecs = lecture.split(",");
        for (String lec : lecs)
            lectureList.add(lec);

//        this.lecture = lecture;
    }

    public String getWeekDay() {
        return weekDay;
    }

    public void setWeekDay(String weekDay) {
        this.weekDay = weekDay;
    }

    public String[] getLecture() {
        return lecture;
    }

    public void setLecture(String[] lecture) {
        this.lecture = lecture;
    }

    public ArrayList<String> getLectureList() {
        return lectureList;
    }

    public void setLectureList(ArrayList<String> lectureList) {
        this.lectureList = lectureList;
    }
}
