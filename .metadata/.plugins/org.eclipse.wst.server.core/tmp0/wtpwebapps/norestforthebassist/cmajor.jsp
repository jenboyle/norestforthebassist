<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="norestforthebassist.Hello"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet">
<script type="text/javascript" src="resources/json/scales.json"></script>
<script src="resources/js/differentscales.js"></script>
<title>No Rest For The Bassist</title>
</head>
<body onload="nextScale('cmajor')">
    <h1>No Rest For The Bassist</h1>
    <table>
        <tr>
            <td style = "width: 160px;">
                <jsp:include page="sidebar.html" flush="true"/>
            </td>
            <td style = "vertical-align: top">
                <h2>C Major Scale</h2>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/norestforthebassist", "root", "Ilike2playbass$");
Statement stmt = conn.createStatement();
ResultSet rsNotes = stmt.executeQuery("select * from notes where id=1");
ResultSetMetaData resMetaData = rsNotes.getMetaData();
int nCols = resMetaData.getColumnCount();
%>
<table>
<tr><td class="tdbold"></td><td class="tdbold">Root</td><td class="tdbold">2nd</td><td class="tdbold">3rd</td><td class="tdbold">4th</td><td class="tdbold">5th</td><td class="tdbold">6th</td><td class="tdbold">7th</td></tr>
<%
while(rsNotes.next()) {
%><tr><td class="tdbold">Notes</td><%
for (int kCol=3; kCol <= nCols; kCol++){
	out.print("<td>" + rsNotes.getString(kCol) + "</td>");
}
%></tr><%
}
ResultSet rsChords = stmt.executeQuery("select * from chords where id=1");
while(rsChords.next()) {
%><tr><td class="tdbold">Chords</td><%
for (int kCol=3; kCol <= nCols; kCol++){
	out.print("<td>" + rsChords.getString(kCol) + "</td>");
}
%></tr><%
}
ResultSet rsChordTones = stmt.executeQuery("select * from chord_tones where id=1");
while(rsChordTones.next()) {
%><tr><td class="tdbold">Chord Tones</td><%
for (int kCol=3; kCol <= nCols; kCol++){
	out.print("<td>" + rsChordTones.getString(kCol) + "</td>");
}
%></tr><%
}%>

</table>
<%
conn.close();
%>

<table>
<tr>
<td><div class="left_arrow"><img src="resources/images/scrollleft.png" onclick="previousScale('cmajor')"></div></td>
<td>
                <div class="scalebassscore">
                    <img src="resources/images/bassscore.png" alt="C Major Scale" class="imgscalebassscore">
                    <div id="firstnote" class="a_string_position_1">3</div>
                    <div id="secondnote" class="d_string_position_2">0</div>
                    <div id="thirdnote" class="d_string_position_3">2</div>
                    <div id="forthnote" class="d_string_position_4">3</div>
                    <div id="fifthnote" class="g_string_position_5">0</div>
                    <div id="sixthnote" class="g_string_position_6">2</div>
                    <div id="seventhnote" class="g_string_position_7">4</div>
                    <div id="eighthnote" class="g_string_position_8">5</div>
                </div>
                </td>
                <td><div class="right_arrow"><img src="resources/images/scrollright.png" onclick="nextScale('cmajor')"></div></td>
</tr>
</table>
                <table>
                    <tr>
                        <td style = "width: 160px;">
                            C bass drone
                        </td>
                        <td style = "width: 160px;">
                            <audio src="resources/audio/drones/C_bass_drone.mp3" loop controls>
                                Your browser does not support the audio element.
                            </audio>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <%Hello.hi(); %>
    
</body>
</html>