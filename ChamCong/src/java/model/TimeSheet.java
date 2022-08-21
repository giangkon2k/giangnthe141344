/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author win
 */
public class TimeSheet {
    private int tid;
    private Date day;
    private ArrayList<TypeOfDay> typeOfDays;
    private ArrayList<Shift> shifts;

    public TimeSheet() {
    }

    public TimeSheet(int tid, Date day, ArrayList<TypeOfDay> typeOfDays, ArrayList<Shift> shifts) {
        this.tid = tid;
        this.day = day;
        this.typeOfDays = typeOfDays;
        this.shifts = shifts;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public ArrayList<TypeOfDay> getTypeOfDays() {
        return typeOfDays;
    }

    public void setTypeOfDays(ArrayList<TypeOfDay> typeOfDays) {
        this.typeOfDays = typeOfDays;
    }

    public ArrayList<Shift> getShifts() {
        return shifts;
    }

    public void setShifts(ArrayList<Shift> shifts) {
        this.shifts = shifts;
    }
    
   
    
       
   
}
