<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <% 
        int hoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        int hourlyPay = Integer.parseInt(request.getParameter("hourlyPay"));
        int otHours = hoursWorked - 40;
        double otPayRate = otHours * 1.5;
        
        
        
    %>
    
    <body>
        <h1>Salary Information</h1>
        <hr>
        
        <table border="2">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                
                <tr>
                    <td>&#35; Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                             
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= %></td>
                </tr>
       
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= %></td>
                </tr>
            </tbody>
            
            
        </table>
        
    </body>
</html>
