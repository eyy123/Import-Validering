<%@ Page Language="C#" UnobtrusiveValidationMode ="None" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 195px;
        }
        .auto-style4 {
            width: 46%;
            height: 64px;
        }
    </style>
<script src="Javascript.js">
    Search_Gridview();
</script> 
    
  
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" Height="39px" Width="180px" />
    <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Ladda upp" Width="97px" CausesValidation="False" />
        
     <%--<button onclick="alerttest()" style="width: 86px">Alerttest</button>--%>
    <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" placeholder="Sök specifika radvärden" onkeyup="Search_Gridview(this, 'Gridview1')"></asp:TextBox><br /> <%-- Textboxen för sökning av värden, kopplad till gridview1--%>
     <asp:GridView ID="Gridview1" autogeneratecolumns="true"  runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="335px" Width="823px" AllowSorting="True"> <%-- OnRowDataBound="Gridview1_RowDataBound -- lägg till detta för att RowDataBound funktionen ska fungera."--%>
      
       <columns>
       </columns>    
       </asp:GridView>

   
        <%--<h2>Lista med felaktiga saker</h2>
		<ul id="felaktigaSaker">
		</ul>--%>
        <%--<button onclick="klicka()">tryck här</button>
        <asp:TextBox ID="UserInputValue1" runat="server"></asp:TextBox>

        <asp:TextBox ID="UserInputValue2" runat="server"></asp:TextBox>

        <asp:TextBox ID="UserInputValue3" runat="server"></asp:TextBox>--%>
     
        <%--<asp:TextBox ID="Name" runat="server"></asp:TextBox>--%>

       <%-- <asp:DropDownList runat="server"></asp:DropDownList>
        <button onclick="enbartTelenummer()">0735</button>
        <h2>kastar in en funktion så ni kan lägga till items i webben istället för html:</h2>
				<input type="text" value="" id="erInput"/>
				<button onclick="addListItem()">Lägg till</button>--%>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        </form>

</body>
</html>
