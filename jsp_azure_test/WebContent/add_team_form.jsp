<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Team</title>
    </head>
    <body>
        <h2>Add Team</h2>
        <!--
            Form for collecting user input for the new movie_night record.
            Upon form submission, add_movie.jsp file will be invoked.
        -->
        <form action="add_team.jsp">
            <!-- The form organized in an HTML table for better clarity. -->
            <table border=1>
                <tr>
                    <th colspan="2">Enter the Team Data:</th>
                </tr>
                <tr>
                    <td>Team Name:</td>
                    <td><div style="text-align: center;">
                    <input type=text name=team_name>
                    </div></td>
                </tr>
                <tr>
                    <td>Team Type:</td>
                    <td><div style="text-align: center;">
                    <input type=text name=team_type>
                    </div></td>
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
