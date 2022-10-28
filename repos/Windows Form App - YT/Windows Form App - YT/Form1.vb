Public Class Form1
    Private Sub btn_clickMe_Click(sender As Object, e As EventArgs) Handles btn_clickMe.Click
        lbl_helloMessage.Text = "Nice to meet you"
    End Sub

    Private Sub btn_changeColor_Click(sender As Object, e As EventArgs) Handles btn_changeColor.Click
        lbl_helloMessage.ForeColor = Color.Red

    End Sub
End Class
