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
							<a href="#" class="btn btn-primary rounded pull-right" data-toggle="modal" data-target="#add_leave"><i class="fa fa-plus"></i> Add Leave</a>
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
                    <s:iterator value="lesddfavelist">
		<fieldset>
			<table width="40%">
				<tr><td><s:property value="empId"/></td></tr>
				<tr><td><s:property value="fromDate"/></td></tr>
			    <tr><td><s:property value="leaveReason"/></td></tr>
			</table>
		</fieldset>
	</s:iterator>
                    
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table m-b-0 datatable">
									<thead>
										<tr>
											<th>Employee</th>
											<th>Leave Type</th>
											<th>From</th>
											<th>To</th>
											<th>No of Days</th>
											<th>Reason</th>
											<th class="text-center">Status</th>
											<th class="text-right">Actions</th>
										</tr>
									</thead>
									<tbody>
									<s:iterator value="leavelist"> 
                    	            <fieldset> 
										<tr>
											<td>
												<a class="avatar">
													<img src="assets/img/user.jpg" alt="John Doe">
												</a>
												<h2><a><s:property value="empId"/><span>Web Designer</span></a></h2>
											</td>
											<td><s:property value="leaveTypeId"/></td>
											<td><s:property value="fromDate"/></td>
											<td><s:property value="toDate"/></td>
											<td><s:property value="noOfDays"/></td>
											<td><s:property value="leaveReason"/></td>
											<td class="text-center">
												<div class="dropdown action-label">
													<a class="btn btn-white btn-sm rounded dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
														<i class="fa fa-dot-circle-o text-success"></i><s:property value="status"/>  <i class="caret"></i>
													</a>
													<ul class="dropdown-menu pull-right">
														<li><a href="#"><i class="fa fa-dot-circle-o text-purple"></i> New</a></li>
														<li><a href="#"><i class="fa fa-dot-circle-o text-info"></i> Pending</a></li>
														<li><a href="#"><i class="fa fa-dot-circle-o text-success"></i> Approved</a></li>
														<li><a href="#"><i class="fa fa-dot-circle-o text-danger"></i> Declined</a></li>
													</ul>
												</div>
											</td>
											<td class="text-right">
												<div class="dropdown">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu pull-right">
														<li><a href="#" title="Edit" data-toggle="modal" data-target="#edit_leave"><i class="fa fa-pencil m-r-5"></i> Edit</a></li>
														<li><a href="#" title="Decline" data-toggle="modal" data-target="#delete_approve"><i class="fa fa-trash-o m-r-5"></i> Delete</a></li>
													</ul>
												</div>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
                </div>
                </fieldset>  
                </s:iterator>                	
				<div class="notification-box">
					<div class="msg-sidebar notifications msg-noti">
						<div class="topnav-dropdown-header">
							<span>Messages</span>
						</div>
						<div class="drop-scroll msg-list-scroll">
							<ul class="list-box">
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">R</span>
											</div>
											<div class="list-body">
												<span class="message-author">Richard Miles </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item new-message">
											<div class="list-left">
												<span class="avatar">J</span>
											</div>
											<div class="list-body">
												<span class="message-author">John Doe</span>
												<span class="message-time">1 Aug</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">T</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Tarah Shropshire </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">M</span>
											</div>
											<div class="list-body">
												<span class="message-author">Mike Litorus</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">C</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Catherine Manseau </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">D</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Domenic Houston </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">B</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Buster Wigton </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">R</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Rolland Webber </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">C</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Claire Mapes </span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">M</span>
											</div>
											<div class="list-body">
												<span class="message-author">Melita Faucher</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">J</span>
											</div>
											<div class="list-body">
												<span class="message-author">Jeffery Lalor</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">L</span>
											</div>
											<div class="list-body">
												<span class="message-author">Loren Gatlin</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="chat.html">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar">T</span>
											</div>
											<div class="list-body">
												<span class="message-author">Tarah Shropshire</span>
												<span class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
											</div>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="chat.html">See all messages</a>
						</div>
					</div>
				</div>
            </div>
			<div id="delete_approve" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Decline Leave Request</h4>
						</div>
						<form>
							<div class="modal-body card-box">
								<p>Are you sure want to declined this leave request?</p>
								<div class="m-t-20 text-left">
									<a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
									<button type="submit" class="btn btn-danger">Decline</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="approve_leave" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Approve for Leave</h4>
						</div>
						<form>
							<div class="modal-body card-box">
								<p>Are you sure want to approve for this leave request?</p>
								<div class="m-t-20 text-left">
									<a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
									<button type="submit" class="btn btn-info">Approve</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="add_leave" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Add Leave Request</h4>
						</div>
						<div class="modal-body">
							<form action = "createLeave">
								<div class="form-group">
								<div class="form-group">
									<label>Employee ID <span class="text-danger">*</span></label>
									<input class="form-control" name="empId" type="text">
								</div>
									<label>Leave Type <span class="text-danger">*</span></label>
									<select class="select" onchange="cal()" name="leaveTypeId">
										<option value="0">Select Leave Type</option>
										<option value="1">Casual Leave 12 Days</option>
										<option value="2">Medical Leave</option>
										<option value="3">Loss of Pay</option>
									</select>
								</div>
								<div class="form-group">
									<label>From <span class="text-danger">*</span></label>
									<div class="cal-icon"><input class="form-control datetimepicker" data-date-format="MM/DD/YYYY" onblur="cal()" id="from" name="fromDate" type="date"/></div>
								</div>
								
								
								<script type="text/javascript">
						function cal()
						{
						
					var fromVal = new Date(document.getElementById("from").value);
					var toVal = new Date(document.getElementById("to").value);
					
				  noOfDays =  ((toVal - fromVal)/(1000*60*60*24));
				  if(!isNaN(noOfDays))
						   document.getElementById("noOfDays").value =  noOfDays;
						   
						}
						</script>
						

						
								<div class="form-group">
									<label>To <span class="text-danger">*</span></label>
									<div class="cal-icon"><input class="form-control datetimepicker" data-date-format="MM/DD/YYYY" onblur="cal()" id="to" name="toDate" onchange="calDate(this,from);"  type="date" ></div>
								</div>
							
								<div class="form-group">
									<label>Number of days <span class="text-danger">*</span></label>
									<input class="form-control" id="noOfDays" name="noOfDays" readonly="" type="text">
								</div>
								<div class="form-group">
									<label>Remaining Leaves <span class="text-danger">*</span></label>
									<input class="form-control" name="remainingLeaves" readonly="" value="12" type="text">
								</div>
								<div class="form-group">
									<label>Leave Reason <span class="text-danger">*</span></label>
									<textarea rows="4" cols="5" name="leaveReason" class="form-control"></textarea>
								</div>
								<div class="m-t-20 text-center">
									<button class="btn btn-primary">Send Leave Request</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div id="edit_leave" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Edit Leave</h4>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label>Leave Type <span class="text-danger">*</span></label>
									<select class="select">
										<option value="">Select Leave Type</option>
										<option value="">Casual Leave 12 Days</option>
									</select>
								</div>
								<div class="form-group">
									<label>From <span class="text-danger">*</span></label>
									<div class="cal-icon"><input class="form-control datetimepicker" value="01-01-2017" type="text"></div>
								</div>
								<div class="form-group">
									<label>To <span class="text-danger">*</span></label>
									<div class="cal-icon"><input class="form-control datetimepicker" value="01-01-2017" type="text"></div>
								</div>
								<div class="form-group">
									<label>Number of days <span class="text-danger">*</span></label>
									<input class="form-control" readonly="" type="text" value="2">
								</div>
								<div class="form-group">
									<label>Remaining Leaves <span class="text-danger">*</span></label>
									<input class="form-control" readonly="" value="12" type="text">
								</div>
								<div class="form-group">
									<label>Leave Reason <span class="text-danger">*</span></label>
									<textarea rows="4" cols="5" class="form-control">Going to hospital</textarea>
								</div>
								<div class="m-t-20 text-center">
									<button class="btn btn-primary">Save Changes</button>
								</div>
							</form>
						</div>
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