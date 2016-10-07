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
        int preTax = Integer.parseInt(request.getParameter("preTax"));
        int postTax = Integer.parseInt(request.getParameter("postTax"));
        int regularHours = 0;
        int otHours = 0;
        int payRate = 0;
        double otPayRate = 0;
        double otPay = 0;
        int regularPay = 0;
        double grossPay = 0;
        double taxAmount = 0;
        double taxablePay = 0;
        double postTaxPay = 0;
        double netPay = 0;
        double postTaxDeduct = 0;
        
        
        if (hoursWorked > 40)
        {
            regularHours = 40;
            otHours = hoursWorked - 40;
            otPayRate = payRate * 1.5;
            otPay = otHours * otPayRate;
            regularPay = regularHours * payRate;
            grossPay = regularPay + otPay;
        }
        else
        {
            grossPay = hoursWorked * payRate;
        }
        
        grossPay = hoursWorked * payRate;
        
        if (grossPay < 500)
        {
            taxAmount = taxablePay * .18;
        }
        else
        {
            taxAmount = taxablePay * .22;
        }
        
        postTaxPay = taxablePay - taxAmount;
        
        netPay = postTaxPay - postTaxDeduct;
        
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
                    <td><%= grossPay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTax %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
       
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
                
            </tbody>
            
            
        </table>
        
    </body>
</html>
