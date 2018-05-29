<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="DNP1Project.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="class_name,start_date_time,end_date_time" DataSourceID="DataSource" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="class_name" HeaderText="class_name" ReadOnly="True" SortExpression="class_name" />
                    <asp:BoundField DataField="start_date_time" HeaderText="start_date_time" ReadOnly="True" SortExpression="start_date_time" />
                    <asp:BoundField DataField="end_date_time" HeaderText="end_date_time" ReadOnly="True" SortExpression="end_date_time" />
                    <asp:BoundField DataField="topic" HeaderText="topic" SortExpression="topic" />
                    <asp:BoundField DataField=" preparation" HeaderText=" preparation" SortExpression=" preparation" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DataSource %>" SelectCommand="SELECT * FROM [Schedule]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
