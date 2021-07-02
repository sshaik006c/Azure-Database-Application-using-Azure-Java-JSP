<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Get Teams formed after a Date</title>
    </head>
    <body>
        <h2>Get Teams formed after a Date</h2>
        <!--
            Form for collecting user input for the new movie_night record.
            Upon form submission, add_movie.jsp file will be invoked.
        -->
        <form action="get_all_teams.jsp">
            <!-- The form organized in an HTML table for better clarity. -->
            <table border=1>
                <tr>
                    <th colspan="2">Enter the Formation Team Date:</th>
                </tr>
              
                <tr>
                    <td>Team Formation Date:</td>
                    <td><div style="text-align: center;">
                    <input type=text name=form_date>
                    </div></td>
                </tr>
                <tr>
                    <td><div style="text-align: center;">
                    <input type=reset value=Clear>
                    </div></td>
                    <td><div style="text-align: center;">
                    <input type=submit value=Insert>
                    </div></td>
                </tr>
            </table>
        </form>
    </body>
</html>
