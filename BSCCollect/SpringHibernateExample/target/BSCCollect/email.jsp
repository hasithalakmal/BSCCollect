<%-- 
    Document   : email
    Created on : Dec 21, 2015, 10:10:19 AM
    Author     : Hasitha
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
        <h1>Accountant</h1>
        <p>This is a serve you as a helpful reminder that the following data to compute the respective KPI is due/overdue on the date indicated bellow. </p>
        <table  border="1" style="width:80%;border-color: blue;border-style: solid;">
            
            <tr style="background-color: yellow">
                <td>KPI</td>
                <td>Data Required</td>
                <td>Update Frequency</td>
                <td>Unit</td>
                <td>Due Date</td>
            </tr>
            <tr>
                <td>KPI1</td>
                <td>Data1</td>
                <td>Monthly</td>
                <td>Rs. Million</td>
                <td>2015/07/20</td>
            </tr>
            <tr>
                <td>KPI1</td>
                <td>Data2</td>
                <td>Monthly</td>
                <td>Rs. Million</td>
                <td>2015/07/20</td>
            </tr>
            <tr>
                <td>KPI2</td>
                <td>Data3</td>
                <td>annually</td>
                <td> Unit</td>
                <td>2015/07/20</td>
            </tr>
            
        </table>
        <p>We Shall be thankful if you could send us the same on or before the above date/ at your earliest for us to compile the Balanced Score Card report with updated KPIs to the CMT.</p>
        <p><b>Corporate Strategy Division</b></p>
        </div>
    </body>
</html>
