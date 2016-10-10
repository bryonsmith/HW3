
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Salary Information</title>
    </head>
    
    <% 
        double hoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        double hourlyPay = Integer.parseInt(request.getParameter("hourlyPay"));
        double preTax = Integer.parseInt(request.getParameter("preTax"));
        double postTax = Integer.parseInt(request.getParameter("postTax"));
        double otHours = 0;
        double otPayRate = 0;
        double otPay = 0;
        double grossPay = 0;
        double taxAmount = 0;
        double taxablePay = 0;
        double postTaxPay = 0;
        double netPay = 0;
               
        
        if (hoursWorked > 40)
        {
            otHours = hoursWorked - 40;
            otPayRate = hourlyPay * 1.5;
            otPay = otHours * otPayRate;
            taxablePay = hoursWorked * hourlyPay;
            grossPay = taxablePay + otPay;
        }
        
        else
        {
            grossPay = hoursWorked * hourlyPay;
        }
        
        taxablePay = grossPay - preTax;
        
        
        if (grossPay < 500)
        {
            taxAmount = taxablePay * .18;
        }
        else
        {
            taxAmount = taxablePay * .22;
        }
        
        postTaxPay = taxablePay - taxAmount;
        
        netPay = postTaxPay - postTax;
        
    %>
    
    <body>
        <h1>Salary Information</h1>
        <hr>
            <table class="center" border="1">
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
                        <td><%= postTax %></td>
                    </tr>

                    <tr>
                        <td>Net Pay:</td>
                        <td><%= netPay %></td>
                    </tr>

                </tbody>


            </table>
    </body>
</html>
