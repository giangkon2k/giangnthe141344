/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author win
 */
public class TypeOfDay {
    private int tdid;
    private String name;

    public TypeOfDay() {
    }

    public TypeOfDay(int tdid, String name) {
        this.tdid = tdid;
        this.name = name;
    }

    public int getTdid() {
        return tdid;
    }

    public void setTdid(int tdid) {
        this.tdid = tdid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
