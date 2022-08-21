/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Time;

/**
 *
 * @author win
 */
public class Shift {
    private int shid;
    private Time in;
    private Time out;
    private String name;

    public Shift() {
    }

    public Shift(int shid, Time in, Time out, String name) {
        this.shid = shid;
        this.in = in;
        this.out = out;
        this.name = name;
    }

    public int getShid() {
        return shid;
    }

    public void setShid(int shid) {
        this.shid = shid;
    }

    public Time getIn() {
        return in;
    }

    public void setIn(Time in) {
        this.in = in;
    }

    public Time getOut() {
        return out;
    }

    public void setOut(Time out) {
        this.out = out;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
