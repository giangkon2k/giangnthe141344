/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import model.TimeSheet_Employee;

/**
 *
 * @author win
 */
public class TimeSheet_EmployeeDBContext extends DBContext {

    public ArrayList<TimeSheet_Employee> getAllTimeSheetEmployee() {

        ArrayList<TimeSheet_Employee> tiems = new ArrayList<>();
        try {
            String sql = "select e.ename, r.rname, ts.day, s.name\n"
                    + "from \n"
                    + "TimeSheet_Employee te\n"
                    + "join TimeSheet ts on te.tid = ts.tid\n"
                    + "join Shift s on ts.shid = s.shid\n"
                    + "join TypeOfDay tod on ts.tdid = tod.tdid\n"
                    + "join Employee e on te.eid = e.eid\n"
                    + "join Roles r on e.rid = r.rid\n"
                    + "join Salary sa on r.sid = sa.sid";

            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            TimeSheet_Employee currentTiEm = new TimeSheet_Employee();
            
            while(rs.next()){
                int eid = rs.getInt("eid");
                
            }

        
        } catch (SQLException ex) {
            Logger.getLogger(TimeSheet_EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tiems;
    }

}
