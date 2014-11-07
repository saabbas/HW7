<%@ Page Title="" Language="VB" MasterPageFile="~/Swimmers.master" AutoEventWireup="false" CodeFile="ViewDefault.aspx.vb" Inherits="ViewDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW7 %>" SelectCommand="SELECT * FROM [saabbas_HW7] WHERE ([swimmerID] = @swimmerID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="swimmerID" QueryStringField="swimmerID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="swimmerID" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" Width="180px">
        <Fields>
            <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Primary_Stroke" HeaderText="Primary Stroke" SortExpression="Primary_Stroke" />
            <asp:BoundField DataField="Hometown" HeaderText="Hometown" SortExpression="Hometown" />
            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            <asp:BoundField DataField="Olympic_Medals" HeaderText="Olympic Medals" SortExpression="Olympic_Medals" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

