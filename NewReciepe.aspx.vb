
Partial Class detailsview
    Inherits System.Web.UI.Page


    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Response.Write("The reciepe has been deleted from the database")
    End Sub


    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./gridview.aspx")
    End Sub


End Class
