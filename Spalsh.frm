VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Splash 
   BorderStyle     =   0  'None
   ClientHeight    =   4545
   ClientLeft      =   210
   ClientTop       =   1365
   ClientWidth     =   9000
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Spalsh.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4545
   ScaleWidth      =   9000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrStart 
      Interval        =   10
      Left            =   360
      Top             =   480
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   4080
      TabIndex        =   0
      Top             =   3720
      Visible         =   0   'False
      Width           =   3135
      _ExtentX        =   5530
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   0
   End
   Begin VB.Label lblVersion 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Version"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   405
      Left            =   4440
      TabIndex        =   2
      Top             =   1920
      Width           =   885
   End
   Begin VB.Label lblLoad 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4080
      TabIndex        =   1
      Top             =   4200
      Width           =   5775
   End
   Begin VB.Image splash 
      Height          =   4560
      Left            =   0
      Picture         =   "Spalsh.frx":000C
      Top             =   0
      Width           =   9000
   End
End
Attribute VB_Name = "Splash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'///////////////////////////////////////////////////////Splash UI Code//////////////////////////////////////////////////////////////
Option Explicit
Public Sub Form_Load()
Dim a As String
On Error Resume Next
Open App.path & "\version.txt" For Input As #2
Input #2, a
lblVersion.Caption = a
Close #2
End Sub

'Private Sub splash_Click()
 '   Me.Hide
  '  Unload Me
   ' Load UI
    'UI.Show
'End Sub

Private Sub tmrStart_Timer()
With ProgressBar1
        If .value < 100 Then
            DoEvents
            .value = .value + 0.25
            If .value = 10 Then
                lblLoad.Caption = "Memulai Aplikasi...":
            End If
            If .value = 20 Then
                lblLoad.Caption = "Mengecheck Database..":
                    If Dir(App.path & "\database.db") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\database.db''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                    End If
                    If Dir(App.path & "\databese.db") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\databese.db''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                    End If
            End If
            If .value = 25 Then
                lblLoad.Caption = "Memuat Database...":
            End If
            If .value = 30 Then
                lblLoad.Caption = "Memindai Pengaturan...":
                If Dir(App.path & "\version.txt") = "" Then
                       MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\version.txt''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                       End
                End If
                If Dir(App.path & "\startup.txt") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\startup.txt''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                End If
                If Dir(App.path & "\scanwith.txt") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\scanwith.txt''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                End If
            End If
            If .value = 35 Then
                lblLoad.Caption = "Memuat Pengaturan...":
            End If
            If .value = 40 Then
                lblLoad.Caption = "Memuat File lain...":
                If Dir(App.path & "\karantinafile0.jpg") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\karantinafile0.jpg''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                End If
                If Dir(App.path & "\karantinafile.jpg") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\karantinafile.jpg''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                End If
                If Dir(App.path & "\scanner.jpg") = "" Then
                        MsgBox "Maaf..." & vbCrLf & "File ''" & App.path & "\scanner.jpg''" & " Tidak ditemukan." & vbCrLf & "Program tak dapat dijalankan." & vbCrLf, 0 + vbExclamation, "Error"
                        End
                End If
            End If
            If .value = 70 Then
                lblLoad.Caption = "Hampir Selesai...":
            End If
            If .value = 90 Then
                lblLoad.Caption = "Sedikit lagi...":
            End If
            If .value = 99 Then
                lblLoad.Caption = "Loading Complete...."
            End If
        Else
            .value = 100
            Me.Hide
            Unload Me
            Load UI
            UI.Show
        End If
    End With
End Sub



