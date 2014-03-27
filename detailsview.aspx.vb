
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delRecipe As String = e.Values("recipeName").ToString

        Response.Write("The record ")
        Response.Write("<span class=deletedrecipeshighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been deleted from the database. ")

        Response.AddHeader("REFRESH", "3;URL=./gridview.aspx")

        ' Response.Write("The record has been deleted from the database")


    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./gridview.aspx")
    End Sub

End Class
