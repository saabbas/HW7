<%@ Page Title="" Language="VB" MasterPageFile="~/Swimmers.master" AutoEventWireup="false" CodeFile="NewAthlete.aspx.vb" Inherits="Admin_NewAthlete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW7 %>" DeleteCommand="DELETE FROM [saabbas_HW7] WHERE [swimmerID] = @swimmerID" InsertCommand="INSERT INTO [saabbas_HW7] ([First_Name], [Last_Name], [Age], [Primary_Stroke], [Hometown], [College], [Olympic_Medals]) VALUES (@First_Name, @Last_Name, @Age, @Primary_Stroke, @Hometown, @College, @Olympic_Medals)" SelectCommand="SELECT * FROM [saabbas_HW7]" UpdateCommand="UPDATE [saabbas_HW7] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Age] = @Age, [Primary_Stroke] = @Primary_Stroke, [Hometown] = @Hometown, [College] = @College, [Olympic_Medals] = @Olympic_Medals WHERE [swimmerID] = @swimmerID">
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="swimmerID" DataSourceID="SqlDataSource1" DefaultMode="Insert" HorizontalAlign="Center">
        <EditItemTemplate>
         
        </EditItemTemplate>
        <InsertItemTemplate>
           
            <table>
                <tr>
                    <td style="text-align:right;">
                       First Name:
                    </td>
                    <td style="text-align:left;">
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("First_Name") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                       Last Name:
                    </td>
                    <td style="text-align:left;">
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Last_Name") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                       Age:
                    </td>
                    <td style="text-align:left;">
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Age") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                      Primary Stroke: 
                    </td>
                    <td style="text-align:left;">
                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Primary_Stroke") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                      Hometown:
                    </td>
                    <td style="text-align:left;">
                         <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Hometown") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                      College: 
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("College") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                      Olympic Medals 
                    </td>
                    <td style="text-align:left;">
                         <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Olympic_Medals") %>' />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:right;">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
                    </td>
                    <td style="text-align:left;">
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>
            
            
           
        </InsertItemTemplate>
        <ItemTemplate>
          
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

