/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author win
 */
public class TimeSheet_Employee {
    private ArrayList<Employee> employees;
    private ArrayList<TimeSheet> timesheets;
    
    public TimeSheet_Employee() {
    }

    public TimeSheet_Employee(ArrayList<Employee> employees, ArrayList<TimeSheet> timesheets) {
        this.employees = employees;
        this.timesheets = timesheets;
    }

    public ArrayList<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(ArrayList<Employee> employees) {
        this.employees = employees;
    }

    public ArrayList<TimeSheet> getTimesheets() {
        return timesheets;
    }

    public void setTimesheets(ArrayList<TimeSheet> timesheets) {
        this.timesheets = timesheets;
    }
    

   
}
