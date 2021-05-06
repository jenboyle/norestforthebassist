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
                <h2>Bass Drones</h2>
                <table>
                    <tr>
                        <td style = "width: 160px;">
                            C bass drone
                        </td>
                        <td style = "width: 160px;">
                            <audio controls loop>
                                <source src="resources/audio/drones/C_bass_drone.mp3" type="audio/mpeg">
                                Your browser does not support the audio element.
                            </audio>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    
</body>
</html>