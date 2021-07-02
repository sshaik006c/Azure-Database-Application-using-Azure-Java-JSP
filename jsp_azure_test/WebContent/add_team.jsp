<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Query Result</title>
</head>
    <body>
    <%@page import="jsp_azure_test.DataHandler"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Array"%>
    <%
    // The handler is the one in charge of establishing the connection.
    DataHandler handler = new DataHandler();

    // Get the attribute values passed from the input form.
    String T_name = request.getParameter("team_name");
    String T_type = request.getParameter("team_type");
    String form_date = request.getParameter("form_date");
    /*
     * If the user hasn't filled out all the time, movie name and duration. This is very simple checking.
     */
    if (T_name.equals("") || T_type.equals("") || form_date.equals("")) {
        response.sendRedirect("add_team_form.jsp");
    } else {
        
        
        // Now perform the query with the data from the form.
        boolean success = handler.addTeam(T_name, T_type, form_date);
        if (!success) { // Something went wrong
            %>
                <h2>There was a problem inserting the course</h2>
            <%
        } else { // Confirm success to the user
            %>
            <h2>Team record:</h2>

            <ul>
                <li>Team Name: <%=T_name%></li>
                <li>Team Type: <%=T_type%></li>
                <li>Team FormDate: <%=form_date%></li>
                
            </ul>

            <h2>Was successfully inserted.</h2>
            <%
        }
    }
    %>
    </body>
</html>
