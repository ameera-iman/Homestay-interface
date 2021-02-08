<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

    <title>Add Branch</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">

  </head>

<body class="is-preload">

	<!-- Side nav -->
	<%
       if(session.getAttribute("staffid") != null) {
    %>
	<div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <%
        	if(session.getAttribute("adminid") != null) {
        %>
        <a href="StaffController?action=staffprofile&staffid=<%= session.getAttribute("staffid")%>">PROFILE</a>
        <button class="dropdown-btn">RESERVATION 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="ReservationController?action=viewStatusPayment">REFUND</a>
  		</div>
  		<button class="dropdown-btn">BRANCH 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="adminaddbranch.jsp">ADD BRANCH</a>
		    <a href="HomestayController?action=listHomestay">LIST BRANCH</a>
  		</div>
  		<button class="dropdown-btn">STAFF 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="admincreatestaff.jsp">ADD STAFF</a>
		    <a href="StaffController?action=listStaff">LIST STAFF</a>
  		</div>
        <a href="adminsalereport.jsp">SALES REPORT</a>
  		<%
            } else {
        %>
  		<a href="StaffController?action=staffprofile&staffid=<%= session.getAttribute("staffid")%>">PROFILE</a>
        <button class="dropdown-btn">RESERVATION 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="ReservationController?action=staffViewReservation">SCHEDULE</a>
		    <a href="ReservationController?action=viewStatusPayment">REFUND</a>
  		</div>
  		<button class="dropdown-btn">BRANCH 
    	<i class="fa fa-caret-down"></i>
  		</button>
  		<div class="dropdown-container">
		    <a href="adminaddbranch.jsp">ADD BRANCH</a>
		    <a href="HomestayController?action=listHomestay">LIST BRANCH</a>
  		</div>
         <%
           }
         %>
      </div>
      <%
         }
      %>
      
      <!-- Header -->
      <header id="header" style="margin-top: 0px;">
        <span style="font-size:36px;cursor:pointer; margin-left: 20px;margin-top: 30px;" onclick="openNav()">&#9776;</span>
        <div class="logo">
          <img src="assets/images/logo nurhomestay6.png" width="280">
        </div>
        <div class="kemana-kita">
          <a href="StaffController?action=logout">Log Out</a>
        </div>
      </header>

              <section class="main-banner">
                <div class="container-fluid">
              <div class="row">
                  <div class="column">
                      <!--  <div class="card">-->
                          <!--nak buh gambaq ka??
                          <img src="img.jpg" alt="John" style="width:100%"> 
                          -->
                          <!--  <h1>Add new branch?</h1>-->
                          <!-- <p class="title">CEO & Founder, Example  TUKAQQQQQQQ</p>
                          <!-- <p>Harvard University  TUKAQQQQQQQ</p> -->
                          <!--   <p><a href="adminviewbranch.jsp"><button>Confirm</button></a></p> -->
                        <!-- </div>-->
                  </div>
                  <div class="column-1">
                      <h2>Add Branch</h2><br/><br/>
                      <form id="addNewBranch" name="addNewBranch" method="post" action="HomestayController?action=addBranch">
                      <table>
                          <tr>
                              <td class="labelsize"><label>Branch Name</label></td>
                              <td class="double-dot">:</td>
                              <td><input name="home_name" type="text" class="form-control" id="home_name" placeholder="home_name" required="required"></td>
                          </tr>
                          <tr>
                              <td class="labelsize"><label>Address</label></td>
                              <td class="double-dot">:</td>
                              <td><textarea name="home_address" id="home_address" placeholder="home_address" rows="6" required="required"></textarea></td>
                          </tr>
                          <tr>
                            <td class="labelsize"><label>Description</label></td>
                            <td class="double-dot">:</td>
                            <td><textarea name="home_desc" id="home_desc" placeholder="home_desc" rows="6" required="required"></textarea></td>
                          </tr>
                          <tr>
                              <td class="labelsize"><label>Deposit (RM)</label></td>
                              <td class="double-dot">: </td>
                              <td><input name="home_deposit" type="text" class="form-control" id="home_deposit" placeholder="home_deposit" required="required"></td>
                          </tr>
                          <tr>
                              <td class="labelsize"><label>Price (RM)</label></td>
                              <td class="double-dot">: </td>
                              <td><input name="home_price" type="text" class="form-control" id="home_price" placeholder="home_price" required="required"></td>
                          </tr>
                      </table>
                      <br><br>
                      <center><button type="submit" value="Submit">Add</button><a href="/NurHomestay/HomestayController?action=listHomestay"><button>Cancel</button></a></center>
                    </form>
                  </div>
                </div></section>
            </div>
          </div>
      </div>
  
      <div class="footer">
          Instagram<br><br>
          Facebook<br><br>
          <br><br><br>
          � 2020 Pilot. All rights reserved
      </div>
  
      <script>
        function openNav() {
          document.getElementById("mySidenav").style.width = "250px";
        }
        
        function closeNav() {
          document.getElementById("mySidenav").style.width = "0";
        }
        
        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
          dropdown[i].addEventListener("click", function() {
          this.classList.toggle("active");
          var dropdownContent = this.nextElementSibling;
          if (dropdownContent.style.display === "block") {
          dropdownContent.style.display = "none";
          } else {
          dropdownContent.style.display = "block";
          }
          });
        }
        </script>
    </body>
  
  </html>