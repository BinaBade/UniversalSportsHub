<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="USHSession.aspx.cs" Inherits="UniversalSportsHub_Bina.Views.USHSession" %>


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
                <li >
                    <a href="customerDetails.aspx">
                        <i class="ti-user"></i>
                        <p>Customer Details</p>
                    </a>
                </li>
                <li>
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
                <li class="active">
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
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">USH Session Details</a>
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
                    <h3>Session Entry Form</h3>
                    <div class="col-md-6">
                        <div class="card">
                            
                           
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="SESSIONCODE" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                                <EditItemTemplate>
                                    SESSIONCODE:
                                    <asp:Label Text='<%# Eval("SESSIONCODE") %>' runat="server" ID="SESSIONCODELabel1" /><br />
                                    STARTTIME:
                                    <asp:TextBox Text='<%# Bind("STARTTIME") %>' runat="server" ID="STARTTIMETextBox" /><br />
                                    PERIODINHOURS:
                                    <asp:TextBox Text='<%# Bind("PERIODINHOURS") %>' runat="server" ID="PERIODINHOURSTextBox" /><br />
                                    DATEOFSESSION:
                                    <asp:TextBox Text='<%# Bind("DATEOFSESSION") %>' runat="server" ID="DATEOFSESSIONTextBox" /><br />
                                    ACTIVITYID:
                                    <asp:TextBox Text='<%# Bind("ACTIVITYID") %>' runat="server" ID="ACTIVITYIDTextBox" /><br />
                                    ROOMID:
                                    <asp:TextBox Text='<%# Bind("ROOMID") %>' runat="server" ID="ROOMIDTextBox" /><br />
                                    REFNO:
                                    <asp:TextBox Text='<%# Bind("REFNO") %>' runat="server" ID="REFNOTextBox" /><br />
                                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    SESSIONCODE:
                                    <asp:TextBox Text='<%# Bind("SESSIONCODE") %>' runat="server" ID="SESSIONCODETextBox" /><br />
                                    STARTTIME:
                                    <asp:TextBox Text='<%# Bind("STARTTIME") %>' runat="server" ID="STARTTIMETextBox" /><br />
                                    PERIODINHOURS:
                                    <asp:TextBox Text='<%# Bind("PERIODINHOURS") %>' runat="server" ID="PERIODINHOURSTextBox" /><br />
                                    DATEOFSESSION:
                                    <asp:TextBox Text='<%# Bind("DATEOFSESSION") %>' runat="server" ID="DATEOFSESSIONTextBox" /><br />
                                    ACTIVITYID:
                                    <asp:TextBox Text='<%# Bind("ACTIVITYID") %>' runat="server" ID="ACTIVITYIDTextBox" /><br />
                                    ROOMID:
                                    <asp:TextBox Text='<%# Bind("ROOMID") %>' runat="server" ID="ROOMIDTextBox" /><br />
                                    REFNO:
                                    <asp:TextBox Text='<%# Bind("REFNO") %>' runat="server" ID="REFNOTextBox" /><br />
                                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    SESSIONCODE:
                                    <asp:Label Text='<%# Eval("SESSIONCODE") %>' runat="server" ID="SESSIONCODELabel" /><br />
                                    STARTTIME:
                                    <asp:Label Text='<%# Bind("STARTTIME") %>' runat="server" ID="STARTTIMELabel" /><br />
                                    PERIODINHOURS:
                                    <asp:Label Text='<%# Bind("PERIODINHOURS") %>' runat="server" ID="PERIODINHOURSLabel" /><br />
                                    DATEOFSESSION:
                                    <asp:Label Text='<%# Bind("DATEOFSESSION") %>' runat="server" ID="DATEOFSESSIONLabel" /><br />
                                    ACTIVITYID:
                                    <asp:Label Text='<%# Bind("ACTIVITYID") %>' runat="server" ID="ACTIVITYIDLabel" /><br />
                                    ROOMID:
                                    <asp:Label Text='<%# Bind("ROOMID") %>' runat="server" ID="ROOMIDLabel" /><br />
                                    REFNO:
                                    <asp:Label Text='<%# Bind("REFNO") %>' runat="server" ID="REFNOLabel" /><br />
                                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                                </ItemTemplate>
                            </asp:FormView>
                           
                            
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="col-md-6">
                <h3>Session List</h3>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand='DELETE FROM "USHSESSION" WHERE "SESSIONCODE" = :SESSIONCODE' InsertCommand='INSERT INTO "USHSESSION" ("SESSIONCODE", "STARTTIME", "PERIODINHOURS", "DATEOFSESSION", "ACTIVITYID", "ROOMID", "REFNO") VALUES (:SESSIONCODE, :STARTTIME, :PERIODINHOURS, :DATEOFSESSION, :ACTIVITYID, :ROOMID, :REFNO)' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand='SELECT * FROM "USHSESSION"' UpdateCommand='UPDATE "USHSESSION" SET "STARTTIME" = :STARTTIME, "PERIODINHOURS" = :PERIODINHOURS, "DATEOFSESSION" = :DATEOFSESSION, "ACTIVITYID" = :ACTIVITYID, "ROOMID" = :ROOMID, "REFNO" = :REFNO WHERE "SESSIONCODE" = :SESSIONCODE'>
                            <DeleteParameters>
                                <asp:Parameter Name="SESSIONCODE" Type="String"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="SESSIONCODE" Type="String"></asp:Parameter>
                                <asp:Parameter Name="STARTTIME" Type="String"></asp:Parameter>
                                <asp:Parameter Name="PERIODINHOURS" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="DATEOFSESSION" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ACTIVITYID" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ROOMID" Type="String"></asp:Parameter>
                                <asp:Parameter Name="REFNO" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="STARTTIME" Type="String"></asp:Parameter>
                                <asp:Parameter Name="PERIODINHOURS" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="DATEOFSESSION" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ACTIVITYID" Type="String"></asp:Parameter>
                                <asp:Parameter Name="ROOMID" Type="String"></asp:Parameter>
                                <asp:Parameter Name="REFNO" Type="String"></asp:Parameter>
                                <asp:Parameter Name="SESSIONCODE" Type="String"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SESSIONCODE" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
                                <asp:BoundField DataField="SESSIONCODE" HeaderText="SESSIONCODE" ReadOnly="True" SortExpression="SESSIONCODE"></asp:BoundField>
                                <asp:BoundField DataField="STARTTIME" HeaderText="STARTTIME" SortExpression="STARTTIME"></asp:BoundField>
                                <asp:BoundField DataField="PERIODINHOURS" HeaderText="PERIODINHOURS" SortExpression="PERIODINHOURS"></asp:BoundField>
                                <asp:BoundField DataField="DATEOFSESSION" HeaderText="DATEOFSESSION" SortExpression="DATEOFSESSION"></asp:BoundField>
                                <asp:BoundField DataField="ACTIVITYID" HeaderText="ACTIVITYID" SortExpression="ACTIVITYID"></asp:BoundField>
                                <asp:BoundField DataField="ROOMID" HeaderText="ROOMID" SortExpression="ROOMID"></asp:BoundField>
                                <asp:BoundField DataField="REFNO" HeaderText="REFNO" SortExpression="REFNO"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
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

