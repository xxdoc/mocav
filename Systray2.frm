VERSION 5.00
Begin VB.Form Systray2 
   Caption         =   "Form1"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   120
      Picture         =   "Systray2.frx":0000
      Top             =   120
      Width           =   1920
   End
End
Attribute VB_Name = "Systray2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Type IconeTray
    cbSize As Long
    hWnd As Long
    uID As Long
    uFlags As Long
    uCallbackMessage As Long
    hIcon As Long
    szTip As String * 64
End Type

Dim IconeT As IconeTray

Private Const AJOUT = &H0
Private Const MODIF = &H1
Private Const SUPPRIME = &H2
Private Const MouseMove = &H200
Private Const MESSAGE = &H1
Private Const Icone = &H2
Private Const TIP = &H4

Private Const DOUBLE_CLICK_GAUCHE = &H203
Private Const BOUTON_GAUCHE_POUSSE = &H201
Private Const BOUTON_GAUCHE_LEVE = &H202
Private Const DOUBLE_CLICK_DROIT = &H206
Private Const BOUTON_DROIT_POUSSE = &H204
Private Const BOUTON_DROIT_LEVE = &H205

'API
Private Declare Function Shell_NotifyIcon Lib "shell32" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, pnid As IconeTray) As Boolean

Public Sub ToTray()
  IconeT.cbSize = Len(IconeT)
  IconeT.hWnd = Me.hWnd
  IconeT.uID = 1&
  IconeT.uFlags = Icone Or TIP Or MESSAGE
  IconeT.uCallbackMessage = MouseMove
  IconeT.hIcon = Image1.Picture
  IconeT.szTip = "Antivirus TA (Minimize)" & Chr$(0)
  Shell_NotifyIcon AJOUT, IconeT
  Me.Hide
  App.TaskVisible = True
End Sub

Public Sub ClearTray()
  IconeT.cbSize = Len(IconeT)
  IconeT.hWnd = Me.hWnd
  IconeT.uID = 1&
  Shell_NotifyIcon SUPPRIME, IconeT
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Static rec As Boolean, msg As Long
    msg = X / Screen.TwipsPerPixelX
    If rec = False Then
        rec = True
        Select Case msg
            Case DOUBLE_CLICK_GAUCHE:
             UI.WindowState = 0
                    
                    Load UI
                    UI.Show
                    ClearTray
                
            Case BOUTON_GAUCHE_POUSSE:
            Case BOUTON_GAUCHE_LEVE:
            Case DOUBLE_CLICK_DROIT:
            Case BOUTON_DROIT_POUSSE:
            Case BOUTON_DROIT_LEVE:
        End Select
        rec = False
    End If
End Sub


