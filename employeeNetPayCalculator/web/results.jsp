<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <% 
        String hoursWorked = request.getParameter("hoursWorked");
    
    %>
    
    <body>
        <h1>Salary Information</h1>
        
        <table border="2">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                
                
            </tbody>
            
        </table>
        
    </body>
</html>
