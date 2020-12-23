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
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300&display=swap" rel="stylesheet">

    <title>Staff</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">

  </head>

  <body class="is-preload">
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="adminliststaff.jsp">Staff</a>
        <a href="adminviewbranch.jsp">Branch</a>
        <a href="adminsalereport.jsp">Sales Report</a>
      </div>

      <!-- Header -->
      <header id="header" style="margin-top: 0px;">
        <span style="font-size:36px;cursor:pointer; margin-left: 20px;margin-top: 25px;" onclick="openNav()">&#9776;</span>
        <div class="logo">
          <img src="assets/images/logo nurhomestay6.png">
        </div>
        <div class="kemana-kita">
          <a href="index.jsp">Log Out</a>
        </div>
      </header>

            <!-- list reservation -->
            <section class="tables">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-md-12">
                        <a href="admincreatestaff.jsp"><img class="useme" src="assets/images/plus.png" alt="add reservation"></a>
                      <div class="section-heading">
                        <h2>Staff</h2>
                      </div>
                      <div class="default-table">
                        <table>
                          <thead>
                            <tr>
                              <th>Staff ID</th>
                              <th>Staff Name</th>
                              <th></th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>S02</td>
                              <td>Nabila Hamizah</td>
                              <td><a href="#"><img class="useme" src="assets/images/trash-1.png"></a></td>
                            </tr>
                            <tr>
                              <td>S03</td>
                              <td>Syahid Fikri</td>
                              <td><a href="#"><img class="useme" src="assets/images/trash-1.png"></a></td>
                            </tr>
                            <tr>
                              <td>S04</td>
                              <td>Azam Firdaus</td>
                              <td><a href="#"><img class="useme" src="assets/images/trash-1.png"></a></td>
                            </tr>
                          </tbody>
                        </table>
                        <!-- boleh pakai klau nak
                            <ul class="table-pagination">
                          <li><a href="#">Previous</a></li>
                          <li><a href="#">1</a></li>
                          <li class="active"><a href="#">2</a></li>
                          <li><a href="#">...</a></li>
                          <li><a href="#">8</a></li>
                          <li><a href="#">9</a></li>
                          <li><a href="#">Next</a></li>
                        </ul> -->
                      </div>
                    </div>
                  </div>
                </div>
              </section>

    <div class="footer">
        Instagram<br><br>
        Facebook<br><br>
        <br><br><br>
        &#169; 2020 Pilot. All rights reserved
    </div>

    <script>
        function openNav() {
          document.getElementById("mySidenav").style.width = "250px";
        }
        
        function closeNav() {
          document.getElementById("mySidenav").style.width = "0";
        }
        </script>
</body>

</html>