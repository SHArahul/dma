package mytt;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.DayOfWeek;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.filechooser.FileSystemView;

/**
 * Created by rajneesh on 23/4/17.
 */
public class Initialization {

    private ArrayList<Subjects> subjectsList;// = new ArrayList<>();
    private ArrayList<TimeTableDet> timeTableDets;// = new ArrayList<>();
    private final int noOfWeekDays = 5;
    private String lectures = "";
    private final int noOfTS = 8;
    private int index;
    private int[] rep;// = new int[7];
    private ArrayList<Integer> list;// = new ArrayList<>();
    private ArrayList<String> tss;
    private boolean flag;
    private int[] lecs;

    public void setInput(ArrayList<String> subname, String fileName) {
        subjectsList = new ArrayList<>();
        timeTableDets = new ArrayList<>();
        list = new ArrayList<>();
//        subjectsList.clear();
//        timeTableDets.clear();

//        try {
//            for (int i = 0; i < subname.size(); i++) {
//                String[] sub = subname.get(i).split("-");
//                subjectsList.add(new Subjects(sub[0], Integer.parseInt(sub[1])));
//            }
//            startCompute();
//            display();
//            writeToFile(fileName);
//            finalize();
//        } catch (Throwable ex) {
//            Logger.getLogger(Initialization.class.getName()).log(Level.SEVERE, null, ex);
//        }
        try {
            for (int i = 0; i < subname.size(); i++) {
                String[] sub = subname.get(i).split("-");
                subjectsList.add(new Subjects(sub[0], Integer.parseInt(sub[1])));
            }
        } catch (NumberFormatException numberFormatException) {
        }
        System.out.println(subname);
        startCompute();
        display();
        writeToFile(fileName);
        System.gc();
//        rep = new int[subjectsList.size()];
    }

    public void setInputs() {
        subjectsList.add(new Subjects("CG", 2));
//        subjectsList.add(new Subjects("CG", 2, 6, 2));
        subjectsList.add(new Subjects("OS", 2));
//        subjectsList.add(new Subjects("OS", 3, 8, 2));
        subjectsList.add(new Subjects("LSA", 2));
//        subjectsList.add(new Subjects("LSA", 2, 6, 2));
        subjectsList.add(new Subjects("MP", 2));
//        subjectsList.add(new Subjects("MP", 3, 8, 2));
        subjectsList.add(new Subjects("TAFL", 2));
//        subjectsList.add(new Subjects("TAFL", 3, 8, 2));
        subjectsList.add(new Subjects("IP", 1));
//        subjectsList.add(new Subjects("IP", 1, 2, 1));
        subjectsList.add(new Subjects("HV", 1));
//        subjectsList.add(new Subjects("HV", 1, 2, 1));
//        subjectsList.add(new Subjects("PDP/TECH", 2, 2, 1));
//        subjectsList.add(new Subjects("CCNA", 2, 2, 1));

        tss = new ArrayList<>();
        for (int ts = 9; ts < 17; ts++) {
            tss.add(ts + ":30" + " - " + (ts + 1) + ":30");
        }
        startCompute();
        display();

        writeToFile("timetable");
    }

    private void writeToFile(String fileName) {
        FileWriter writer = null;
        String userHomeFolder = System.getProperty("user.home");
        System.out.println(userHomeFolder);

        try {

            writer = new FileWriter(userHomeFolder + "/Desktop/" + fileName + ".csv");

            for (int i = 0; i < timeTableDets.size(); i++) {
                writer.append(timeTableDets.get(i).getWeekDay().substring(0, 3) + "\t\t");
                for (int j = 0; j < timeTableDets.get(i).getLectureList().size(); j++) {
                    writer.append(timeTableDets.get(i).getLectureList().get(j) + "\t");
                }
                writer.append("\n");
            }

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                writer.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    private void display() {
        String userHomeFolder = System.getProperty("user.home");
        System.out.println(userHomeFolder);
        ArrayList<String> subs = new ArrayList<>();

//        for(int j=0;j<subjectsList.size();j++){
//            if(subjectsList.get(j).getNoOfLecsPerDay()<2){
//                subs.add(subjectsList.get(j));
//            }
//        }
//        
//        for (int i = 0; i < timeTableDets.get(4).getLectureList().size(); i++) {
//            if (timeTableDets.get(4).getLectureList().get(i).equalsIgnoreCase("HV")) {
//                flag = true;
//            }
//        }
//        if (!flag) {
//            timeTableDets.get(4).getLectureList().set(
//                    new Random().nextInt(timeTableDets.get(4).getLectureList().size()), "HV");
//        }
//        System.out.print(tss);
        System.out.println();
        for (int i = 0; i < timeTableDets.size(); i++) {
            System.out.println(timeTableDets.get(i).getWeekDay().substring(0, 3) + " "
                    + timeTableDets.get(i).getLectureList());
        }
    }

    private void disp() {
        for (int i = 0; i < subjectsList.size(); i++) {
            System.out.println(subjectsList.get(i).getSubjectName() + " "
                    + subjectsList.get(i).getSubjectCategory() + " "
                    + subjectsList.get(i).getNoOfLecturesPerWeek());
        }
    }

    private void startCompute() {

        for (int j = 1; j <= noOfWeekDays; j++) {
            rep = new int[subjectsList.size()];
            if (j < 5) {
                for (int i = 1; i <= noOfTS;) {

                    index = new Random().nextInt(subjectsList.size());
                    MyRandom myRandom = new MyRandom(subjectsList.size());

                    try {

                        while (rep[index] == 2) {
                            list.clear();
                            for (int l = 0; l < rep.length; l++) {
                                if (rep[l] != 2) {
                                    list.add(l);
                                }
                            }
                            if (!list.isEmpty()) {
                                MyRandom myRan = new MyRandom(list.size());

                                index = list.get(myRan.next());
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    rep[index]++;

                    try {
                        if (subjectsList.get(index).getNoOfLecsPerDay() > 1) {
                            lectures = lectures + subjectsList.get(index).getSubjectName() + ",";
                            subjectsList.get(index).setNoOfLecs();
                            subjectsList.get(index).setNoOfLecsPerDayDone();

                            i++;
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                int[] rep1 = new int[subjectsList.size()];
                MyRandom myRandom = new MyRandom(subjectsList.size());
                for (int m = 0; m < myRandom.getMax(); m++) {
                    rep1[m] = myRandom.next();
                    System.out.print(rep1[m]);
                }

                for (int m = 0; m < noOfTS - 1 && m < rep1.length; m++) {
                    try {

                        lectures = lectures + subjectsList.get(rep1[m]).getSubjectName() + ",";
//                        lectures = lectures + subjectsList.get(rep[m]).getSubjectName() + rep[m] + ",";
                        subjectsList.get(rep1[m]).setNoOfLecs();
                        subjectsList.get(rep1[m]).setNoOfLecsPerDayDone();

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

//                while()
                int c = 0;
//                if(lectures.split(",").length-<subjectsList.size()){
                while (lectures.split(",").length < noOfTS && c < subjectsList.size()) {
//                    myRandom = new MyRandom(list.size());
//                    index = list.get(myRandom.next());
                    lectures = lectures + subjectsList.get(c).getSubjectName() + ",";
                    c++;
                }
            }

            subjectsList.get(index).setNoOfLecsPerDayDone(0);
//            timeTableDets.add(new TimeTableDet(j + "", lectures));
            timeTableDets.add(new TimeTableDet(DayOfWeek.of(j).toString(), lectures));
            lectures = "";

        }
    }
}
