<%@ page import = "storepackage.ConnectionProvider" %>
<%@ page import = "java.sql.*" %>
<%@ include file = "header.jsp" %>
<%@ include file = "footer.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
int k = 0;
    try{
        Connection con = ConnectionProvider.getConnection();
        Statement state = con.createStatement();
        ResultSet result = state.executeQuery("select * from products where name like '%"+search+"%' or catagory);
        
        while(result.next()){
 %>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><i class="fa fa-inr"></i> </i></td>
            <td><a href="">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
         
        </tbody>
      </table>
      	
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved by BTech Days</p>
      </div>

</body>
</html>