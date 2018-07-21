<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
							<h4 class="page-title">LeaveRequest</h4>
						</div>
						<div class="col-xs-4 text-right m-b-30">
							<a href="addleave.jsp" class="btn btn-primary rounded pull-right" ><i class="fa fa-plus"></i> Add Leave</a>
						</div>
					</div>
					<form action="showLeave">
					<div class="row filter-row">
                           <div class="col-sm-3 col-md-2 col-xs-6">  
								<div class="form-group form-focus">
									<label class="control-label">Employee Id</label>
									<input type="text" name="empId" class="form-control floating" />
								</div>
                           </div>
                           <div class="col-sm-3 col-md-2 col-xs-6">  
								<div class="form-group form-focus select-focus">
									<label class="control-label">Leave Type</label>
									<select  class="select floating"> 
										<option value=""> -- Select -- </option>
										<option value="">Casual Leave</option>
										<option value="1">Medical Leave</option>
										<option value="1">Loss of Pay</option>
									</select>
								</div>
                           </div>
                           <div class="col-sm-3 col-md-2 col-xs-6"> 
								<div class="form-group form-focus select-focus">
									<label class="control-label">Leave Status</label>
									<select class="select floating"> 
										<option value=""> -- Select -- </option>
										<option value="0"> Pending </option>
										<option value="1"> Approved </option>
										<option value="2"> Rejected </option>
									</select>
								</div>
                           </div>
						   <div class="col-sm-3 col-md-2 col-xs-6">  
								<div class="form-group form-focus">
									<label class="control-label">From</label>
									<div class="cal-icon"><input class="form-control floating datetimepicker" type="text"></div>
								</div>
							</div>
						   <div class="col-sm-3 col-md-2 col-xs-6">  
								<div class="form-group form-focus">
									<label class="control-label">To</label>
									<div class="cal-icon"><input class="form-control floating datetimepicker" type="text"></div>
								</div>
							</div>
                           <div class="col-sm-3 col-md-2 col-xs-6">  
                                <button type="submit" class="btn btn-default">Search</button>  
                           </div>     
                    </div>
                    </form>
                    
                    <div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
                  				 <table class="table table-striped custom-table m-b-0 datatable" >
                  					 <thead>
										<tr>
											<th>Leave ID</th>
											<th>Employee</th>
											<th>Leave Type</th>
											<th>From</th>
											<th>To</th>
											<th>No of Days</th>
											<th>Leaves Taken</th>
											<th>Reason</th>
											<th class="text-center" >Status</th>
											<th class="text-right" >Actions</th>
											<th></th>
										</tr>
									 </thead>
									 <tbody>	
										<s:iterator value="leavelist"> 
                    	            	<fieldset> 
											<tr>
											<form action="updateStatus" id=<s:property value="id"/> >
												<td>
												<h2><a><input class="form-control" value =<s:property value="id"/> readonly = "" name="id" type="text">
											    </a></h2>	
											    </td>
												<td>
												<a class="avatar">
													<img src="assets/img/user.jpg" >
												</a>
												<h2><a><s:property value="empId"/></a></h2>
												</td>
												
												<td><s:property value="leaveTypeId"/></td>
												<td><s:property value="fromDate"/></td>
												<td><s:property value="toDate"/></td>
												<td><s:property value="noOfDays"/></td>
												<td><s:property value="LeavesTaken"/></td>
												<td><s:property value="leaveReason"/></td>
												
												<td class="text-center">
												<div class="dropdown action-label">		
												
													<select class="select"  onchange="this.form.submit();return false;"  name="status" >
														<option value="0"><s:property value="status"/></option>
														<option value="Pending">Pending</option>
														<option value="Approved">Approved</option>
														<option value="Declined">Declined</option>
													</select>
													
												</div>
												</td>
												<td class="text-right">
												<div class="dropdown">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu pull-right">
														<li><button class="btn btn-primary"  onclick="changeUpdAction(<s:property value="id"/>)">edit</button></li>
														 
														<li><button class="btn btn-primary"  onclick="changedltAction(<s:property value="id"/>)">Delete</button></li>
													</ul>
												</div>
											</td>
  											</form>
										</tr>
									</fieldset>
									</s:iterator>
								</tbody>	
								</table>
							</div>
						</div>
                	</div>
                	<script type=text/javascript>
						function changeUpdAction(id) {
 						 document.getElementById(id).action = 'selectToUpdate'
								}
						function changedltAction(id) {
	 						 document.getElementById(id).action = 'deleteLeave'
									}
					</script>
                      
               
					
                         	
				<div class="notification-box">
					<div class="msg-sidebar notifications msg-noti">
						<div class="topnav-dropdown-header">
							<span>Messages</span>
						</div>
						<div class="drop-scroll msg-list-scroll">
							<ul class="list-box">
								
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="chat.html">See all messages</a>
						</div>
					</div>
				</div>
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