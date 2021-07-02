<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
        <title>Movie Nights</title>
    </head>
    <body>
        <%@page import="jsp_azure_test.DataHandler"%>
        <%@page import="java.sql.ResultSet"%>
        <%
            // We instantiate the data handler here, and get all the movies from the database
            final DataHandler handler = new DataHandler();
            String form_date = request.getParameter("form_date");
            final ResultSet teams = handler.getAllTeams(form_date);
        %>
        <!-- The table for displaying all the movie records -->
        <table cellspacing="2" cellpadding="2" border="1">
            <tr> <!-- The table headers row -->
              <td align="center">
                <h4>Team Name</h4>
              </td>
            </tr>
            <%
               while(teams.next()) { // For each movie_night record returned...
                   // Extract the attribute values for every row returned
                   final String T_name = teams.getString(1);
                   
                   out.println("<tr>"); // Start printing out the new table row
                   out.println( // Print each attribute value
                        "<td align=\"center\">" + T_name +
                        "</td>");
                   out.println("</tr>");
               }
               %>
          </table>
    </body>
</html>
