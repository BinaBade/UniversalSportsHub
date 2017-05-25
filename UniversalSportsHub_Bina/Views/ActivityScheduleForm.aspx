<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActivityScheduleForm.aspx.cs" Inherits="UniversalSportsHub_Bina.Views.ActivityScheduleForm" %>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Universal Sports Hub</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="../assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="../assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="../assets/css/themify-icons.css" rel="stylesheet">

</head>
<body>

    <form id="form1" runat="server">

<div class="wrapper">
    <div class="sidebar" data-background-color="black" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <div class="simple-text">
                    Universal Sports Hub
                </div>
            </div>

            <ul class="nav">
                <li>
                    <a href="customerDetails.aspx">
                        <i class="ti-user"></i>
                        <p>Customer Details</p>
                    </a>
                </li>
                <li >
                    <a href="ActicityDetails.aspx">
                        <i class="ti-panel"></i>
                        <p>Acticvity Details</p>
                    </a>
                </li>
                <li>
                    <a href="EquipmentDetails.aspx">
                        <i class="ti-pencil-alt2"></i>
                        <p>Equipment Details</p>
                    </a>
                </li>
                <li>
                    <a href="USHSession.aspx">
                        <i class="ti-view-list-alt"></i>
                        <p>USH Session Details</p>
                    </a>
                </li>
                <li>
                    <a href="StaffDetails.aspx">
                        <i class="ti-user"></i>
                        <p>Staff Details</p>
                    </a>
                </li>
                <li>
                    <a href="RoomDetails.aspx">
                        <i class="ti-map"></i>
                        <p>Room Details</p>
                    </a>
                </li>
                <li>
                    <a href="MemberCategory.aspx">
                        <i class="ti-user"></i>
                        <p>Member Category</p>
                    </a>
                </li>
                <li>
                    <a href="SessionStaff.aspx">
                        <i class="ti-view-list-alt"></i>
                        <p>Session Staff Details</p>
                    </a>
                </li>
                 <li>
                    <a href="SessionEquipment.aspx">
                        <i class="ti-view-list-alt"></i>
                        <p>SessionEquipment Details</p>
                    </a>
                </li>
                <li class="active">
                    <a href="ActivityScheduleForm.aspx">
                        <i class="ti-view-list-alt"></i>
                        <p>SessionEquipment Details</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#"> Activity Schedule Details</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
								<p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <p class="notification">5</p>
									<p>Notifications</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
						<li>
                            <a href="#">
								<i class="ti-settings"></i>
								<p>Settings</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                
        
            
            <div class="col-lg-12">
                <h3>Activity Schedul Details</h3>
                        <div class="card ">
                           
                           
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ACTIVITY.ACTIVITYID, ACTIVITY.ACTIVITY, CUSTOMER.CUSTOMERNAME, CUSTOMER.ADDRESS, CUSTOMER.DATEOFBIRTH, CUSTOMER.REFNO, CUSTOMER.MEMBERSHIPCATEGORYID, EQUIPMENT.EQUIPMENTID, EQUIPMENT.EQUIPMENTNAME, STAFF.STAFFID, STAFF.STAFFTYPE, STAFF.STAFFNAME, USHSESSION.SESSIONCODE, USHSESSION.STARTTIME, USHSESSION.PERIODINHOURS, USHSESSION.DATEOFSESSION, USHSESSION.ACTIVITYID AS EXPR1, USHSESSION.ROOMID, USHSESSION.REFNO AS EXPR2 FROM ACTIVITY, USHSESSION, CUSTOMER, STAFF, EQUIPMENT WHERE ACTIVITY.ACTIVITYID = USHSESSION.ACTIVITYID AND (USHSESSION.REFNO = USHSESSION.REFNO)"></asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ACTIVITYID,REFNO,EQUIPMENTID,STAFFID,SESSIONCODE" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="ACTIVITY" HeaderText="ACTIVITY" SortExpression="ACTIVITY" />
                                    <asp:BoundField DataField="CUSTOMERNAME" HeaderText="CUSTOMERNAME" SortExpression="CUSTOMERNAME" />
                                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                                    <asp:BoundField DataField="DATEOFBIRTH" HeaderText="DATEOFBIRTH" SortExpression="DATEOFBIRTH" />
                                    <asp:BoundField DataField="REFNO" HeaderText="REFNO" ReadOnly="True" SortExpression="REFNO" />
                                    <asp:BoundField DataField="MEMBERSHIPCATEGORYID" HeaderText="MEMBERSHIPCATEGORYID" SortExpression="MEMBERSHIPCATEGORYID" />
                                    <asp:BoundField DataField="EQUIPMENTNAME" HeaderText="EQUIPMENTNAME" SortExpression="EQUIPMENTNAME" />
                                    <asp:BoundField DataField="STAFFTYPE" HeaderText="STAFFTYPE" SortExpression="STAFFTYPE" />
                                    <asp:BoundField DataField="STAFFNAME" HeaderText="STAFFNAME" SortExpression="STAFFNAME" />
                                    <asp:BoundField DataField="SESSIONCODE" HeaderText="SESSIONCODE" ReadOnly="True" SortExpression="SESSIONCODE" />
                                    <asp:BoundField DataField="STARTTIME" HeaderText="STARTTIME" SortExpression="STARTTIME" />
                                    <asp:BoundField DataField="PERIODINHOURS" HeaderText="PERIODINHOURS" SortExpression="PERIODINHOURS" />
                                    <asp:BoundField DataField="DATEOFSESSION" HeaderText="DATEOFSESSION" SortExpression="DATEOFSESSION" />
                                </Columns>
                            </asp:GridView>
                           
                           
                           
                        </div>
                    </div>
                </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> Universal Sports Hub
                </div>
            </div>
        </footer>

    </div>
</div>


    </form>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>


