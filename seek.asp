<html>
<% 
dim one
dim two
'one=request.form("name")
'two=request.form("address")
'three=request.form("email")
'four=request.form("contact")
'five=request.form("comments")
one=request.form("name")
two=request.form("address")
three=request.form("phone")
four=request.form("email")
five=request.form("information")
six=request.form("comments")


'mail details
dim mailadd
mailadd="info@gurudevsprings.com"
dim objmail
set objmail=Server.CreateObject("CDONTS.Newmail")
objmail.To = mailadd
objmail.From = four
objmail.Subject="feed back  Form "
objmail.Body=  "Name :" & " " & one & "," & " " & "Address :" & two & "," & " " &  "Phone :" & three & "," & " " & "E-mail Address :" & four & "," & " " & "Information :" & five & ","  & "Comments By Visitor :" & six & "."
objmail.Send
''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''
set objmail=Server.CreateObject("CDONTS.Newmail")
objmail.To = four
objmail.From = mailadd
objmail.Subject="no-reply-mres"
objmail.Body=  "The Following Details were submited by you in http://www.gurudevsprings.com This is an auto generated reply. Do not reply incase the details are correct.Name :" & " " & one & "," & " " & "Address :" & two & "," & " " &  "Phone :" & three & "," & " " & "E-mail Address :" & four & "," & " " & "Information :" & five & ","  & "Comments By Visitor :" & six & "."
set objmail = nothing

%><body bgcolor="#FFCC00">

<h3 align="center">&nbsp;</h3>
<h3 align="center">&nbsp;</h3>
<div align="center"></div>
<table width="58%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#336699"> 
    <td colspan="2"><p><font size="2" face="Arial, Helvetica, sans-serif"><strong><font color="#FFFFFF">We 
        appreciate the intrest you have shown in our Services. Our Sales Team 
        will respond back for your queries.</font></strong></font></p>
      <p><font color="#FFFFFF"><strong><font size="2" face="Arial, Helvetica, sans-serif">Your 
        e-mail has been successfully delivered.</font></strong></font></p>
      <p><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif">Delivery 
        confirmation has been sent to<strong> 
        <%response.Write(four) %>
        </strong> </font></p>
      <p align="right"><font size="2" face="ARIAL"><a style="cursor: hand; text-decoration: none; color: #000000" onMouseOver="javascript:this.style.textDecoration='underline'" onMouseOut="javascript:this.style.textDecoration='none'" target="_top" href="feedback.htm"><strong>Back</strong></a></font></p></td>
  </tr>
  <tr> 
    <td colspan="2"><font size="2" face="Arial, Helvetica, sans-serif">&nbsp;</font></td>
  </tr>
  <tr> 
    <td width="52%">&nbsp;</td>
    <td width="48%">&nbsp;</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td rowspan="2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>

</html>
