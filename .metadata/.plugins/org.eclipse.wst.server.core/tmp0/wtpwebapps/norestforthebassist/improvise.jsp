<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet">
<script src="resources/js/improvise.js"></script>
<title>No Rest For The Bassist</title>
</head>
<body>
<form action="playalong.jsp">
  <!--  <input type="hidden" name="improvise_scale" />-->
  <input type="hidden" name="title" value="C Major Scale" />
  <input type="hidden" name="id" value="1" />
  
    <h1>No Rest For The Bassist</h1>
    <table>
        <tr>
            <td style = "width: 160px;">
                <jsp:include page="sidebar.html" flush="true"/>
            </td>
            <td style = "vertical-align: top" colspan="2">
                <h2>Improvise Play Along</h2>
            </td>
            </tr>
            <tr>
                <td/>
                <td>Scale:</td>
                <td>
                <select name="improvise_scale" id="improvise_scale">
                    <option value="cmajor" selected>C major</option>
  					<option value="dmajor">D major</option>
  					<option value="emajor">E major</option>
  					<option value="fmajor">F major</option>
  					<option value="gmajor">G major</option>
  					<option value="amajor">A major</option>
  					<option value="bmajor">B major</option>
				</select>
				</td>
			</tr>
			<tr>
			    <td/>
			    <td>Chord Progression Pattern:</td>
				<td>
				<select name="improvise_pattern" id="improvise_pattern">
                    <option value="1|4|5" selected>1 4 5</option>
  					<option value="1|5|6|4">1 5 6 4</option>
  					<option value="2|5|1">2 5 1</option>
				</select>
            </td>
        </tr>
        <tr>
			    <td/>
			    <td>Drum Selection:</td>
				<td>
				<select name="improvise_drum" id="improvise_drum">
                    <option value="pop1_70bpm.mp3" selected>Pop Track 1 (70 bpm)</option>
  					<option value="pop2_80bpm.mp3">Pop Track 2 (80 bpm)</option>
  					<option value="reggae1_90bpm.mp3">Reggae Track 1 (90 bpm)</option>
  					<option value="reggae2_95bpm.mp3">Reggae Track 2 (95 bpm)</option>
  					<option value="rnb1_90bpm.mp3">R&B Track 1 (90 bpm)</option>
  					<option value="rock2_100bpm.mp3">Rock Track 1 (100 bpm)</option>
				</select>
            </td>
        </tr>
        <tr>
        <td/>
        <td>
          <input type = "submit" value = "Play Along" />
        </td>
        </tr>
    </table>
    </form>
</body>
</html>