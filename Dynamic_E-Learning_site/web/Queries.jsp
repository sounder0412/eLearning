<%-- 
    Document   : Queries
    Created on : 19 Oct, 2019, 10:08:52 AM
    Author     : sound
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Queries</title>
    </head>
    <body>
        <h1>Queries</h1>
        <div class="ex">
            <form action="QueriesController " method="post">
		<table style="with: 50%">
                    <tr>
			<td>Query ID</td>
			<td><input type="text" name="q_id" /></td>
                    </tr>
                    <tr>
			<td>username</td>
			<td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
			<td>Query Message</td>
			<td><input type="text" name="q_msg" /></td>
                    </tr>
                    <tr>
			<td>Admin Replay Message</td>
			<td><input type="text" name="admin_rply_msg" /></td>
                    </tr>
		</table>
                    <input type="submit" value="Submit" />
		</form>
		<br>	
	</div>
    </body>
</html>
