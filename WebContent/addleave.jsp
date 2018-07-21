<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java"%>
<%@page language="java" import="java.sql.*"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 

    <head> 
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <title>Leaves - HRMS admin template</title>
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
        <div class="main-wrapper">
            <%@include file="Heder.jsp"%>
			<%@include file="sideMenu.jsp"%>
            <div class="page-wrapper">
                <div class="content container-fluid">
					<div class="row">
						<div class="col-xs-8">
							<h4 class="page-title">Add leave</h4>
						</div>
						
					</div>
					
		
							<form action = "createLeave">
								<div class="form-group">
								<div class="form-group">
									<label>Employee ID <span class="text-danger">*</span></label>
									<input class="form-control" name="empId" type="text"><s:fielderror fieldName="empId"/>
							
								<div class="form-group">
									<label>Leave Type <span class="text-danger">*</span></label>
									<select class="select" name="leaveTypeId" >
<option value="" selected>--select--</option>

<%

  try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hrms","root","Anuja1990");
Statement st=con.createStatement();
ResultSet rs= st.executeQuery("Select * from tblleavetype");
while(rs.next())
{%>
 
<option value="<%String type= rs.getString(1); out.print(type);%>"><% out.print(rs.getString(2));%></option>
      <%
         
        }
  }
catch(Exception e){
out.println("Error");
}
%>
</select>
<s:fielderror fieldName="leaveTypeId"/>
								</div>
								<div class="form-group">
									<label>From <span class="text-danger">*</span></label>
									<div class="cal-icon"><input class="form-control datetimepicker" data-date-format="MM/DD/YYYY" onblur="cal()" id="from" name="fromDate" type="date"/>
									<s:fielderror fieldName="fromDate"/></div>
								</div>
								
								
								<script type="text/javascript">
						function cal()
						{
						
					var fromVal = new Date(document.getElementById("from").value);
					var toVal = new Date(document.getElementById("to").value);
					
				  noOfDays =  ((toVal - fromVal)/(1000*60*60*24));
				  if(!isNaN(noOfDays) )
				  	{
				  	 if(toVal>fromVal)
						   document.getElementById("noOfDays").value =  noOfDays;
						 else
						   {
						   document.getElementById("noOfDays").value =  "";
						   alert("Please check if the entered dates are correct !")
						   }
					}	  
						}
						</script>
						

						
								<div class="form-group">
									<label>To <span class="text-danger">*</span></label>
									<div class="cal-icon"><input class="form-control datetimepicker" data-date-format="MM/DD/YYYY" onblur="cal()" id="to" name="toDate" onchange="calDate(this,from);"  type="date" >
									<s:fielderror fieldName="toDate"/></div>
									</div>
								</div>
							
								<div class="form-group">
									<label>Number of days <span class="text-danger">*</span></label>
									<input class="form-control" id="noOfDays" name="noOfDays" readonly="" type="text">
								</div>
								
								<div class="form-group">
									<label>Leave Reason <span class="text-danger">*</span></label>
									<textarea rows="4" cols="5" name="leaveReason" class="form-control"></textarea>
									<s:fielderror fieldName="leaveReason"/>
								</div>
								<div class="m-t-20 text-center">
									<button class="btn btn-primary">Send Leave Request</button>
								</div>
							</form>
						
			
        </div>
		<div class="sidebar-overlay" data-reff="#sidebar"></div>
        <script type="text/javascript" src="assets/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="assets/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.slimscroll.js"></script>
		<script type="text/javascript" src="assets/js/select2.min.js"></script>
		<script type="text/javascript" src="assets/js/moment.min.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript" src="assets/js/app.js"></script>
    </body>
</html>