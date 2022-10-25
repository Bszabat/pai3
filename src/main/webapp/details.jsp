
<%@page import="java.util.ArrayList"%>
<%@page import="bs.labpos3.CountryBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<CountryBean> list = (ArrayList<CountryBean>)session.getAttribute("list");
            if(list == null) {
                out.println("Brak danych <br />");
            }
            else {
                try {
                    CountryBean country = (list.get(Integer.parseInt(request.getParameter("i"))));

                    out.println("Details of " + country.getName() + "<br />");
                    out.println("Country code: " + country.getCode() + "<br />");
                    out.println("Population: " + country.getPopulation() + "<br />");
                    out.println("Surface area: " + country.getSurfacearea() + "<br />");
                }
                catch (Exception e) {
                    out.println("Nie wybrano pozycji <br />");
                }
            }
        %>
        <a href='countryList.jsp'>Country List</a>
    </body>
</html>
