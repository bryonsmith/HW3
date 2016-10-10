<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Simple Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
            <form name="Simple Salary Calculator" action="results.jsp" method="post">
                <table class="center" border="1">
                    <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="text" name="hoursWorked" value="" size="40" required></td>
                        </tr>
                    
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><input type="text" name="hourlyPay" value="" size="40" required></td>
                        </tr>
                    
                        <tr>
                            <td>Pre-tax Deductions:</td>
                            <td><input type="text" name="preTax" value="" size="40" required></td>
                        </tr>
                    
                        <tr>
                            <td>Post-tax Deductions:</td>
                            <td><input type="text" name="postTax" value="" size="40" required></td>
                        </tr>
                                        
                    
                    </tbody>
             
                </table>
            
            <br>
            <div class="center">
                <input type="reset" value="Clear" id="clear">
                <input type="submit" value="Submit" id="submit">
            </div>
        </form>
           
    </body>
</html>
