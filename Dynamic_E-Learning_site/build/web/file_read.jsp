<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            try {
                String filename = request.getParameter("Operating Systems.docx");
                response.setContentType("docx");

                BufferedReader bis = null;
                BufferedWriter bos = null;
                try {
                    bis = new BufferedReader(new InputStreamReader(new FileInputStream(filename)));
                    bos = new BufferedWriter(out);
                    char[] buff = new char[4 * 1024]; // 4K buffer
                    int bytesRead;
                    while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                        bos.write(buff, 0, bytesRead);
                    }
                } finally {
                    if (bis != null) {
                        bis.close();
                    }
                }
            } catch (FileNotFoundException e) {
                out.println("File not found: ");
            } catch (IOException e) {
                out.println("Problem sending file " + ": " + e.getMessage());
            }
        %>


    </body>
</html>
