<%-- 
    Document   : indexjsp
    Created on : May 28, 2017, 1:14:27 PM
    Author     : Doru
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*" errorPage="" %>
<%
    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
    DocumentBuilder db = dbf.newDocumentBuilder();
    Document doc = db.parse("./currency.xml");
    NodeList Rand = doc.getElementsByTagName("Rand");
    NodeList Currency = doc.getElementsByTagName("Currency");
    NodeList value1 = doc.getElementsByTagName("value1");
    NodeList value5 = doc.getElementsByTagName("value5");
    NodeList value10 = doc.getElementsByTagName("value10");
    NodeList value50 = doc.getElementsByTagName("value50");
    NodeList value_1 = doc.getElementsByTagName("value_1");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Currency</title>
    </head>

    <body>
        <table border="1">
            <tr>
                <th colspan="2">CURRENCY</th>
                <th colspan="5">DENOMINATION</th>
            </tr>
            <%
                int i;
                for (i = 0; i <= Rand.getLength() - 1; i++) {
            %>
            <tr>
                <td>
                    <%= Rand.item(i).getFirstChild().getNodeValue()%>
                </td>
                <td>
                    <%= Currency.item(i).getFirstChild().getNodeValue()%>
                </td>

                <td>
                    <%= value1.item(i).getFirstChild().getNodeValue()%>
                </td>
                <td>
                    <%= value5.item(i).getFirstChild().getNodeValue()%>
                </td>
                <td>
                    <%= value10.item(i).getFirstChild().getNodeValue()%>
                </td>
                <td>
                    <%= value50.item(i).getFirstChild().getNodeValue()%>
                </td>
                <td align="center">
                    <%= value_1.item(i).getFirstChild().getNodeValue()%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>