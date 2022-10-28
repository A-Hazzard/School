<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.btn_clickMe = New System.Windows.Forms.Button()
        Me.lbl_helloMessage = New System.Windows.Forms.Label()
        Me.btn_changeColor = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'btn_clickMe
        '
        Me.btn_clickMe.Location = New System.Drawing.Point(203, 71)
        Me.btn_clickMe.Name = "btn_clickMe"
        Me.btn_clickMe.Size = New System.Drawing.Size(75, 23)
        Me.btn_clickMe.TabIndex = 0
        Me.btn_clickMe.Text = "Click Me"
        Me.btn_clickMe.UseVisualStyleBackColor = True
        '
        'lbl_helloMessage
        '
        Me.lbl_helloMessage.AutoSize = True
        Me.lbl_helloMessage.Location = New System.Drawing.Point(218, 113)
        Me.lbl_helloMessage.Name = "lbl_helloMessage"
        Me.lbl_helloMessage.Size = New System.Drawing.Size(0, 13)
        Me.lbl_helloMessage.TabIndex = 1
        '
        'btn_changeColor
        '
        Me.btn_changeColor.Location = New System.Drawing.Point(332, 71)
        Me.btn_changeColor.Name = "btn_changeColor"
        Me.btn_changeColor.Size = New System.Drawing.Size(75, 23)
        Me.btn_changeColor.TabIndex = 2
        Me.btn_changeColor.Text = "Change color"
        Me.btn_changeColor.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(572, 450)
        Me.Controls.Add(Me.btn_changeColor)
        Me.Controls.Add(Me.lbl_helloMessage)
        Me.Controls.Add(Me.btn_clickMe)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents btn_clickMe As Button
    Friend WithEvents lbl_helloMessage As Label
    Friend WithEvents btn_changeColor As Button
End Class
