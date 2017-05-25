<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActicityDetails.aspx.cs" Inherits="UniversalSportsHub_Bina.Views.ActicityDetails" %>


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
                <li class="active">
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
                 <li >
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
                    <a class="navbar-brand" href="#">Activity Details</a>
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
                
                <div class="row">
                    <div class="col-md-6">
                        <h3>Activity Entry Form</h3>
                        <div class="card">
                            
                            
                            
                          
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ACTIVITYID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                                <EditItemTemplate>
                                    ACTIVITYID:
                                    <asp:Label ID="ACTIVITYIDLabel1" runat="server" Text='<%# Eval("ACTIVITYID") %>' />
                                    <br />
                                    ACTIVITY:
                                    <asp:TextBox ID="ACTIVITYTextBox" runat="server" Text='<%# Bind("ACTIVITY") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    ACTIVITYID:
                                    <asp:TextBox ID="ACTIVITYIDTextBox" runat="server" Text='<%# Bind("ACTIVITYID") %>' />
                                    <br />
                                    ACTIVITY:
                                    <asp:TextBox ID="ACTIVITYTextBox" runat="server" Text='<%# Bind("ACTIVITY") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    ACTIVITYID:
                                    <asp:Label ID="ACTIVITYIDLabel" runat="server" Text='<%# Eval("ACTIVITYID") %>' />
                                    <br />
                                    ACTIVITY:
                                    <asp:Label ID="ACTIVITYLabel" runat="server" Text='<%# Bind("ACTIVITY") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                </ItemTemplate>
                            </asp:FormView>
                            
                            
                            
                          
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-12">
                <h3>Activity List</h3>
                        <div class="card ">
                           
                            
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ACTIVITY&quot; WHERE &quot;ACTIVITYID&quot; = :ACTIVITYID" InsertCommand="INSERT INTO &quot;ACTIVITY&quot; (&quot;ACTIVITYID&quot;, &quot;ACTIVITY&quot;) VALUES (:ACTIVITYID, :ACTIVITY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ACTIVITY&quot;" UpdateCommand="UPDATE &quot;ACTIVITY&quot; SET &quot;ACTIVITY&quot; = :ACTIVITY WHERE &quot;ACTIVITYID&quot; = :ACTIVITYID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ACTIVITYID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ACTIVITYID" Type="String" />
                                    <asp:Parameter Name="ACTIVITY" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ACTIVITY" Type="String" />
                                    <asp:Parameter Name="ACTIVITYID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ACTIVITYID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="ACTIVITYID" HeaderText="ACTIVITYID" ReadOnly="True" SortExpression="ACTIVITYID" />
                                    <asp:BoundField DataField="ACTIVITY" HeaderText="ACTIVITY" SortExpression="ACTIVITY" />
                                </Columns>
                            </asp:GridView>
                           
                            
                           
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

