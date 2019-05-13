<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculate Over Due Fee</title>
</head>
<link href="../images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <script type="text/javascript">
        function calculateOveDueDays() {
            //Get Dates
            var currentDay = new Date(document.getElementById('currentDate').value);
            var returnDay = new Date(document.getElementById('returnDate').value);

            //convert dates to milli seconds
            var currentDay_ms = currentDay.getTime();
            var returnDay_ms = returnDay.getTime();

            // 1 days = 86400000ms

            //different between milli seconds & convert back to Days
            var days =(currentDay_ms - returnDay_ms)/86400000;
            calculateFine(days);
        }
        function calculateFine(day) {
            //calculate fine
            if (day < 0) {
                alert("Total fee is: 0")
            }
            else {
                var fine = day * 50;
                //Show alert box

                alert("Overdue by " + day + " days. Total due fee is: " + fine);

            }
        }
    </script>

    <style>
    /*Calculate Fine page*/
button.calculateFine
{
    color: white;
    background-color: blue;
    border-radius: 4px;
    border: none;
    width: auto;
    height: 30px;
    cursor: pointer;
}
    </style>
</head>
<body  bgcolor="#D3D3D3">

<form style="padding-top: 100px">
    <table align="center">
        <caption><b>Book Returning & Fee Calculation</b></caption>
        <tr><td align="left" width="300">Book Returning Due Date: </td><td><input style="width: 350px" type="date" id="returnDate" required/></td></tr>
        <tr><td align="left" width="300">Current Date: </td><td><input style="width: 350px" type="date" id="currentDate" required/></td></tr>
        <tr><td width="300"><button class="calculateFine" type="submit" value="calculateFine" onclick="calculateOveDueDays()">Check for Due</button></td><td><button class="calculateFine" style="width: 50px" type="reset" value="reset">Reset</button></td></tr>
    </table>
</form>
</body>
</html>