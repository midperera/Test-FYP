<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="WebApplicationFYP.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        
        <asp:Label ID="Label1" runat="server" Text="ImageId"></asp:Label>
        <asp:TextBox ID="txtdestintion" runat="server" OnTextChanged="txtdestintion_TextChanged"></asp:TextBox>
        
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect1 %>" SelectCommand="SELECT * FROM [FYP]"></asp:SqlDataSource>
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="check" />
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                <asp:BoundField DataField="Similarity" HeaderText="Similarity" SortExpression="Similarity" />
            </Columns>
        </asp:GridView>--%>
        <br />
        <br />
        
    </div>
    </form>
</body>
</html>
