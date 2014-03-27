<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
     <link rel="StyleSheet" type="text/css" href="./StyleSheet.css" />
</head>

<body>

     <!--Menue -->   
      <div id="header">  
    <h1 class="textCenter"> Wicked Easy Reciepes </h1>
        
    <h3 class="textCenter"> Using 5 Ingredients or Less </h3>
        
        </div>
        
        <div id="nav">
	<ul>
		<li> <a href="gridview.aspx">Home</a>  </li> 
		<li> <a href="NewReciepe.aspx">Add New Reciepe</a> </li> 
        <li> <a href="about.aspx">About</a> </li> 
		<li> <a href="default.aspx">Contact Us</a> </li>
	</ul>
        </div>
       <!--Menue End  -->

    <form id="form1" runat="server">

        <div class="manualCenter">
        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
</div>
    </form>
</body>
</html>
