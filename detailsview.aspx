<%@ Page Language="VB" AutoEventWireup="false" CodeFile="detailsview.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="StyleSheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    
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
        
        <div class="manualCenter">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_recipeWebsite %>" DeleteCommand="DELETE FROM [reccTable] WHERE [rId] = @rId" InsertCommand="INSERT INTO [reccTable] ([recipeName], [submittedBy], [Ingrediant1], [Ingrediant2], [Ingrediant3], [Ingrediant4], [Ingrediant5], [Preparation], [Notes]) VALUES (@recipeName, @submittedBy, @Ingrediant1, @Ingrediant2, @Ingrediant3, @Ingrediant4, @Ingrediant5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [reccTable] WHERE ([rId] = @rId)" UpdateCommand="UPDATE [reccTable] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingrediant1] = @Ingrediant1, [Ingrediant2] = @Ingrediant2, [Ingrediant3] = @Ingrediant3, [Ingrediant4] = @Ingrediant4, [Ingrediant5] = @Ingrediant5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [rId] = @rId">
            <DeleteParameters>
                <asp:Parameter Name="rId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingrediant1" Type="String" />
                <asp:Parameter Name="Ingrediant2" Type="String" />
                <asp:Parameter Name="Ingrediant3" Type="String" />
                <asp:Parameter Name="Ingrediant4" Type="String" />
                <asp:Parameter Name="Ingrediant5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="rId" QueryStringField="rId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingrediant1" Type="String" />
                <asp:Parameter Name="Ingrediant2" Type="String" />
                <asp:Parameter Name="Ingrediant3" Type="String" />
                <asp:Parameter Name="Ingrediant4" Type="String" />
                <asp:Parameter Name="Ingrediant5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="rId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="rId" DataSourceID="SqlDataSource1" Height="92px" Width="296px" class="coralleftalign" >
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="Ingrediant1" HeaderText="Ingrediant 1" SortExpression="Ingrediant1" />
                <asp:BoundField DataField="Ingrediant2" HeaderText="Ingrediant 2" SortExpression="Ingrediant2" />
                <asp:BoundField DataField="Ingrediant3" HeaderText="Ingrediant 3" SortExpression="Ingrediant3" />
                <asp:BoundField DataField="Ingrediant4" HeaderText="Ingrediant 4" SortExpression="Ingrediant4" />
                <asp:BoundField DataField="Ingrediant5" HeaderText="Ingrediant 5" SortExpression="Ingrediant5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
