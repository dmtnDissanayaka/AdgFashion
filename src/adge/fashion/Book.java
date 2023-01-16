/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adge.fashion;

import static com.sun.xml.internal.fastinfoset.alphabet.BuiltInRestrictedAlphabets.table;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author thakshina naveen
 */
public class Book {
    
    public void fillBookTable(JTable table,String ValueToSearch){
        
        Connection con=MyConnection.getConnection();
            PreparedStatement ps1 ;
            
            try {
                ps1=con.prepareStatement("select * from `product`  where CONCAT(`Product_id`,`Poduct_name`,`Unite_price`,`Quantity`,`Rate`,`Amount`,`Discount_amount`) LIKE ?");
                ps1.setString(1,"%"+ValueToSearch+"%");
            
    
                ResultSet rs1 = ps1.executeQuery();
            
            DefaultTableModel model=(DefaultTableModel)table.getModel();
            Object[] row;
            
            while(rs1.next());
            {
                row=new Object[7];
                row[0]=rs1.getString(1);
                row[1]=rs1.getString(2);
                row[2]=rs1.getString(3);
                row[3]=rs1.getString(4);
                row[4]=rs1.getString(5);
                row[5]=rs1.getString(6);
                row[6]=rs1.getString(7);
                
                model.addRow(row);
            
            }
      
        
    }catch(SQLException ex){
                JOptionPane.showMessageDialog(null, "Error "+ex);
    }}

  
    
}
