VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "http://rapta.net"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   3  'Align Left
      Height          =   3195
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1005
      _ExtentX        =   1773
      _ExtentY        =   5636
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   2
            Object.Width           =   2469
            MinWidth        =   2469
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub MDIForm_DragDrop(Source As Control, X As Single, Y As Single)
If X > (MDIForm1.Width - 1000) Then
StatusBar1.Align = 4
StatusBar1.Width = 1005
End If
If X < 1000 Then
StatusBar1.Align = 3
StatusBar1.Width = 1005
End If
If Y < 1000 Then
StatusBar1.Align = 1
StatusBar1.Height = 1005
End If
If Y > (MDIForm1.Height - 1000) Then
StatusBar1.Align = 2
StatusBar1.Height = 1005
End If


End Sub

Private Sub MDIForm_Load()
StatusBar1.Panels(1).Text = "rapta.net"

End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
End

End Sub

Private Sub StatusBar1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
StatusBar1.Drag
End Sub

Private Sub StatusBar1_PanelDblClick(ByVal Panel As MSComctlLib.Panel)
StatusBar1.Visible = False
Form2.Show
Call SetWindowPos(Form2.hwnd, HWND_TOPMOST, 0&, 0&, 0&, 0&, FLAGS)
End Sub
