<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet">
<title>No Rest For The Bassist</title>
</head>
<body>
    <h1>No Rest For The Bassist</h1>
    <table>
        <tr>
            <td style = "width: 160px;">
                <jsp:include page="sidebar.html" flush="true"/>
            </td>
            <td style = "vertical-align: top">
                <h2>Scales</h2>
                <jsp:include page="scales_index.html" flush="true"/>
            </td>
        </tr>
    </table>
</body>
</html>