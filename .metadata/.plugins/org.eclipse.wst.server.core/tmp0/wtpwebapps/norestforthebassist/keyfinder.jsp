<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/main.css" rel="stylesheet">
<script src="resources/js/findmykey.js"></script>
<title>No Rest For The Bassist</title>
</head>
<body>
<form action="keyfinder.jsp">
    <h1>No Rest For The Bassist</h1>
    <table>
        <tr>
            <td style = "width: 160px;">
                <jsp:include page="sidebar.html" flush="true"/>
            </td>
            <td style = "vertical-align: top">
                <h2>Key Finder</h2>
                <table>
                    <tr>
                        <td style = "width: 160px;">
                            Notes Hear:
                        </td>
                        <td style = "width: 160px;">
                            <select name="noteheard1" id="noteheard1">
                                <option value="Cnat" <%if(((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Cnat")) || (request.getParameter("noteheard1") == null)){ %> selected <%} %>>Note</option>
  								<option value="Cnat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Cnat")){ %> selected <%} %>>C</option>
  								<option value="Csharp" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Csharp")){ %> selected <%} %>>C#/D♭</option>
  								<option value="Dnat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Dnat")){ %> selected <%} %>>D</option>
  								<option value="Dsharp" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Dsharp")){ %> selected <%} %>>D#/E♭</option>
  								<option value="Enat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Enat")){ %> selected <%} %>>E</option>
  								<option value="Fnat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Fnat")){ %> selected <%} %>>F</option>
  								<option value="Fsharp" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Fsharp")){ %> selected <%} %>>F#/G♭</option>
  								<option value="Gnat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Gnat")){ %> selected <%} %>>G</option>
  								<option value="Gsharp" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Gsharp")){ %> selected <%} %>>G#/A♭</option>
  								<option value="Anat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Anat")){ %> selected <%} %>>A</option>
  								<option value="Asharp" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Asharp")){ %> selected <%} %>>A#/B♭</option>
  								<option value="Bnat" <%if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Bnat")){ %> selected <%} %>>B</option>
							</select>
							<!--  <input type="hidden" id="selectednote" name="selectednote" value="">-->
                        </td>
                        <td style = "width: 160px;">
                            <select name="noteheard2" id="noteheard2">
                                <option value="null" <%if(((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Cnat")) || (request.getParameter("noteheard2") == null)){ %> selected <%} %>>Note</option>
  								<option value="Cnat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Cnat")){ %> selected <%} %>>C</option>
  								<option value="Csharp" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Csharp")){ %> selected <%} %>>C#/D♭</option>
  								<option value="Dnat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Dnat")){ %> selected <%} %>>D</option>
  								<option value="Dsharp" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Dsharp")){ %> selected <%} %>>D#/E♭</option>
  								<option value="Enat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Enat")){ %> selected <%} %>>E</option>
  								<option value="Fnat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Fnat")){ %> selected <%} %>>F</option>
  								<option value="Fsharp" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Fsharp")){ %> selected <%} %>>F#/G♭</option>
  								<option value="Gnat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Gnat")){ %> selected <%} %>>G</option>
  								<option value="Gsharp" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Gsharp")){ %> selected <%} %>>G#/A♭</option>
  								<option value="Anat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Anat")){ %> selected <%} %>>A</option>
  								<option value="Asharp" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Asharp")){ %> selected <%} %>>A#/B♭</option>
  								<option value="Bnat" <%if((request.getParameter("noteheard2") != null) && request.getParameter("noteheard2").equals("Bnat")){ %> selected <%} %>>B</option>
							</select>
							<!--  <input type="hidden" id="selectednote" name="selectednote" value="">-->
                        </td>
                        <td style = "width: 160px;">
                            <select name="noteheard3" id="noteheard3">
                                <option value="null" <%if(((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Cnat")) || (request.getParameter("noteheard3") == null)){ %> selected <%} %>>Note</option>
  								<option value="Cnat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Cnat")){ %> selected <%} %>>C</option>
  								<option value="Csharp" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Csharp")){ %> selected <%} %>>C#/D♭</option>
  								<option value="Dnat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Dnat")){ %> selected <%} %>>D</option>
  								<option value="Dsharp" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Dsharp")){ %> selected <%} %>>D#/E♭</option>
  								<option value="Enat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Enat")){ %> selected <%} %>>E</option>
  								<option value="Fnat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Fnat")){ %> selected <%} %>>F</option>
  								<option value="Fsharp" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Fsharp")){ %> selected <%} %>>F#/G♭</option>
  								<option value="Gnat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Gnat")){ %> selected <%} %>>G</option>
  								<option value="Gsharp" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Gsharp")){ %> selected <%} %>>G#/A♭</option>
  								<option value="Anat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Anat")){ %> selected <%} %>>A</option>
  								<option value="Asharp" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Asharp")){ %> selected <%} %>>A#/B♭</option>
  								<option value="Bnat" <%if((request.getParameter("noteheard3") != null) && request.getParameter("noteheard3").equals("Bnat")){ %> selected <%} %>>B</option>
							</select>
							<!--  <input type="hidden" id="selectednote" name="selectednote" value="">-->
                        </td>
                        <td style = "width: 160px;">
                            <select name="noteheard4" id="noteheard4">
                                <option value="null" <%if(((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Cnat")) || (request.getParameter("noteheard4") == null)){ %> selected <%} %>>Note</option>
  								<option value="Cnat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Cnat")){ %> selected <%} %>>C</option>
  								<option value="Csharp" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Csharp")){ %> selected <%} %>>C#/D♭</option>
  								<option value="Dnat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Dnat")){ %> selected <%} %>>D</option>
  								<option value="Dsharp" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Dsharp")){ %> selected <%} %>>D#/E♭</option>
  								<option value="Enat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Enat")){ %> selected <%} %>>E</option>
  								<option value="Fnat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Fnat")){ %> selected <%} %>>F</option>
  								<option value="Fsharp" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Fsharp")){ %> selected <%} %>>F#/G♭</option>
  								<option value="Gnat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Gnat")){ %> selected <%} %>>G</option>
  								<option value="Gsharp" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Gsharp")){ %> selected <%} %>>G#/A♭</option>
  								<option value="Anat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Anat")){ %> selected <%} %>>A</option>
  								<option value="Asharp" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Asharp")){ %> selected <%} %>>A#/B♭</option>
  								<option value="Bnat" <%if((request.getParameter("noteheard4") != null) && request.getParameter("noteheard4").equals("Bnat")){ %> selected <%} %>>B</option>
							</select>
							<!--  <input type="hidden" id="selectednote" name="selectednote" value="">-->
                        </td>
                        <td style = "width: 160px;">
                            <select name="noteheard5" id="noteheard5">
                                <option value="null" <%if(((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Cnat")) || (request.getParameter("noteheard5") == null)){ %> selected <%} %>>Note</option>
  								<option value="Cnat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Cnat")){ %> selected <%} %>>C</option>
  								<option value="Csharp" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Csharp")){ %> selected <%} %>>C#/D♭</option>
  								<option value="Dnat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Dnat")){ %> selected <%} %>>D</option>
  								<option value="Dsharp" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Dsharp")){ %> selected <%} %>>D#/E♭</option>
  								<option value="Enat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Enat")){ %> selected <%} %>>E</option>
  								<option value="Fnat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Fnat")){ %> selected <%} %>>F</option>
  								<option value="Fsharp" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Fsharp")){ %> selected <%} %>>F#/G♭</option>
  								<option value="Gnat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Gnat")){ %> selected <%} %>>G</option>
  								<option value="Gsharp" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Gsharp")){ %> selected <%} %>>G#/A♭</option>
  								<option value="Anat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Anat")){ %> selected <%} %>>A</option>
  								<option value="Asharp" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Asharp")){ %> selected <%} %>>A#/B♭</option>
  								<option value="Bnat" <%if((request.getParameter("noteheard5") != null) && request.getParameter("noteheard5").equals("Bnat")){ %> selected <%} %>>B</option>
							</select>
							<!--  <input type="hidden" id="selectednote" name="selectednote" value="">-->
                        </td>
                    </tr>
                    <tr>
                    <td>
                    Find my Key
                    </td>
                    <td colspan="5">
                     <input type = "submit" value = "GO" />
                    </td>
                    <td/>
                    </tr>
                    <tr>
                    
                   <%
                   System.out.println("testing what is: " + request.getParameter("noteheard1"));
                   if(((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Cnat")) || (request.getParameter("noteheard1") == null)){ System.out.println("testing cnat note");} 
                   if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Cnat")){ System.out.println("testing cnat");}
  				   if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Csharp")){ System.out.println("testing csharp note");} 
  				   if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Dnat")){ System.out.println("testing dnat note");} 
  				   if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Dsharp")){ System.out.println("testing dsharp note");} 
  				   if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Enat")){ System.out.println("testing enat note");} 
  				   if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Fnat")){System.out.println("testing fnat note");} 
  					if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Fsharp")){ System.out.println("testing fsharp note");} 
  					if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Gnat")){ System.out.println("testing gnat note");} 
  					if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Gsharp")){ System.out.println("testing cnat note");} 
  					if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Anat")){ System.out.println("testing anat note");} 
  					if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Asharp")){ System.out.println("testing asharp note");} 
  					if((request.getParameter("noteheard1") != null) && request.getParameter("noteheard1").equals("Bnat")){System.out.println("testing bnat note");} 
                    %>
                    
                    
                    
                    <%
                    String reqnote = request.getParameter("noteheard1");
                    System.out.println("reqnote =" +reqnote);
                    String noteClause = "all_notes like '%Cnat%'";
                    if(reqnote != null){
                        System.out.println("not null");
                        noteClause = "all_notes like '%"+reqnote+"%'";
                        
                        String secondNote = request.getParameter("noteheard2");
                        if(secondNote != null && !secondNote.equals("null")){
                        	noteClause += " and all_notes like '%"+secondNote+"%'";
                        }
                        String thirdNote = request.getParameter("noteheard3");
                        if(thirdNote != null && !thirdNote.equals("null")){
                        	noteClause += " and all_notes like '%"+thirdNote+"%'";
                        }
                        
                        String forthNote = request.getParameter("noteheard4");
                        if(forthNote != null && !forthNote.equals("null")){
                        	noteClause += " and all_notes like '%"+forthNote+"%'";
                        }
                        
                        String fifthNote = request.getParameter("noteheard5");
                        if(fifthNote != null && !fifthNote.equals("null")){
                        	noteClause += " and all_notes like '%"+fifthNote+"%'";
                        }
                    }
                    System.out.println("note =" +noteClause);
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/norestforthebassist", "root", "Ilike2playbass$");
Statement stmt = conn.createStatement();
ResultSet rsNotes = stmt.executeQuery("select key_name from notes where " + noteClause);
ResultSetMetaData resMetaData = rsNotes.getMetaData();
boolean keyFound = false;
%>
                      <td style = "width: 160px;">
                           Scales it could be:
                       </td>
                       <td style = "width: 160px;" colspan="5">
                           <div id="scalesitcouldbe">
                           <%
                           
                           while(rsNotes.next()) {
                        	   keyFound = true;
                        	   //out.print(""+nCols);
                        	   out.print(rsNotes.getString("key_name"));
                        	   if(!rsNotes.isLast()){
                        		   out.print(", ");
                        	   }
                        	   //for (int kCol=1; kCol < nCols; kCol++){
                        	//	        out.print("kCol" +kCol);
                        	//		   	out.print(rsNotes.getString(kCol));
                        	//		   }
                           }
                           System.out.println("keyFound:" + keyFound);
                           if(!keyFound){
                        	   out.print("No specific key found, perhaps hearing chromatics.");
                           }
                           %>
                        			   </div>
                       </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>