<%@ Page Title="" Language="VB" MasterPageFile="~/Swimmers.master" AutoEventWireup="false" CodeFile="ViewDefault.aspx.vb" Inherits="ViewDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW7 %>" DeleteCommand="DELETE FROM [saabbas_HW7] WHERE [swimmerID] = @swimmerID" InsertCommand="INSERT INTO [saabbas_HW7] ([First_Name], [Last_Name], [Age], [Primary_Stroke], [Hometown], [College], [Olympic_Medals]) VALUES (@First_Name, @Last_Name, @Age, @Primary_Stroke, @Hometown, @College, @Olympic_Medals)" SelectCommand="SELECT * FROM [saabbas_HW7] WHERE ([swimmerID] = @swimmerID)" UpdateCommand="UPDATE [saabbas_HW7] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Age] = @Age, [Primary_Stroke] = @Primary_Stroke, [Hometown] = @Hometown, [College] = @College, [Olympic_Medals] = @Olympic_Medals WHERE [swimmerID] = @swimmerID">
        <DeleteParameters>
            <asp:Parameter Name="swimmerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="Primary_Stroke" Type="String" />
            <asp:Parameter Name="Hometown" Type="String" />
            <asp:Parameter Name="College" Type="String" />
            <asp:Parameter Name="Olympic_Medals" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="swimmerID" QueryStringField="swimmerID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="Primary_Stroke" Type="String" />
            <asp:Parameter Name="Hometown" Type="String" />
            <asp:Parameter Name="College" Type="String" />
            <asp:Parameter Name="Olympic_Medals" Type="String" />
            <asp:Parameter Name="swimmerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="swimmerID" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" Width="125px">
        <Fields>
            <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Primary_Stroke" HeaderText="Primary Stroke" SortExpression="Primary_Stroke" />
            <asp:BoundField DataField="Hometown" HeaderText="Hometown" SortExpression="Hometown" />
            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            <asp:BoundField DataField="Olympic_Medals" HeaderText="Olympic Medals" SortExpression="Olympic_Medals" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

