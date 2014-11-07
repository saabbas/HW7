
Partial Class Search
    Inherits System.Web.UI.Page
    Protected Sub searchTextBox_TextChanged(sender As Object, e As EventArgs) Handles searchTextBox.TextChanged

        Dim searchWord As String
        searchWord = "Select * From saabbas_HW7 where (First_Name Like'%" + searchTextBox.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub
End Class
