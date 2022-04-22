<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
if (request.getParameter("itemCode") != null) 
{ 
 session.setAttribute("itemCode", request.getParameter("itemCode")); 
 session.setAttribute("itemName", request.getParameter("itemName")); 
 session.setAttribute("itemPrice", request.getParameter("itemPrice")); 
 session.setAttribute("itemDesc", request.getParameter("itemDesc")); 
} 
 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
</head>
<body>
	<h1>Items Management</h1>
	<form method="post" action="items.jsp">
		 Item code: <input name="itemCode" type="text" ><br>
		 Item name: <input name="itemName" type="text" ><br>
		 Item price: <input name="itemPrice" type="text" ><br>
		 Item description: <input name="itemDesc" type="text" ><br>
		 <input name="btnSubmit" type="submit" value="Save">
	</form>
	<br> 
	<table border="1">
		 <tr>
			 <th>Item Code</th> 
			<th>Item Name</th> 
			<th>Item Price</th> 
			<th>Item Description</th> 
			<th>Update</th> 
			<th>Remove</th>
		 </tr>
		 <tr>
			 <td><%out.print(session.getAttribute("itemCode")); %></td>
			 <td><%out.print(session.getAttribute("itemName")); %></td>
			 <td><%out.print(session.getAttribute("itemPrice")); %></td>
			 <td><%out.print(session.getAttribute("itemDesc")); %></td>
			 <td><input name="btnUpdate" type="button" value="Update"></td>
			 <td><input name="btnRemove" type="button" value="Remove"></td>
		 </tr>
	</table>
</body>
</html>