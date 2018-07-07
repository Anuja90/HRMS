<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	<div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li> 
								<a href="index.html">Dashboard</a>
							</li>
							<li class="submenu">
								<a href="#" class="noti-dot"><span> Employees</span> <span class="menu-arrow"></span></a>
								<ul class="list-unstyled" style="display: none;">
									<li><a href="employees.html">All Employees</a></li>
									<li><a href="holidays.html">Holidays</a></li>
									<li><a href="leaves.html"><span>Leave Requests</span> <span class="badge bg-primary pull-right">1</span></a></li>
									<li><a href="attendance.html">Attendance</a></li>
									<li><a href="departments.html">Departments</a></li>
									<li><a href="designations.html">Designations</a></li>
									<li><a href="designations.html">Qualification</a></li>
								</ul>
							</li>
							
							<li> 
								<a href="contacts.html">Contacts</a>
							</li>
						
							<li class="submenu">
								<a href="#"><span> Payroll </span> <span class="menu-arrow"></span></a>
								<ul class="list-unstyled" style="display: none;">
									<li><a href="salary.jsp"> Employee Salary </a></li>
									<li><a href="salary-view.html"> Payslip </a></li>
								</ul>
							</li>
							<li> 
								<a href="worksheet.html">Timing Sheet</a>
							</li>
							
							<li> 
								<a href="events.html">Birthday's</a>
							</li>
						
							<li> 
								<a href="settings.html">Settings</a>
							</li>
							<li class="submenu">
								<a href="#"><span> Pages </span> <span class="menu-arrow"></span></a>
								<ul class="list-unstyled" style="display: none;">
									<li><a href="login.html"> Login </a></li>
									<li><a href="register.html"> Register </a></li>
									<li><a href="forgot-password.html"> Forgot Password </a></li>
									<li><a href="profile.html"> Profile </a></li>
								</ul>
							</li>
						</ul>
					</div>
                </div>
      </div>
<div class="sidebar-overlay" data-reff="#sidebar"></div>
</body>
</html>