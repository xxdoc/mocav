VERSION 5.00
Begin VB.Form lainnya 
   Caption         =   "Form1"
   ClientHeight    =   8730
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   16110
   LinkTopic       =   "Form1"
   ScaleHeight     =   8730
   ScaleWidth      =   16110
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox scancepat 
      BackColor       =   &H00FFFFC0&
      BorderStyle     =   0  'None
      Height          =   1335
      Left            =   0
      ScaleHeight     =   1335
      ScaleWidth      =   7815
      TabIndex        =   2
      Top             =   0
      Visible         =   0   'False
      Width           =   7815
      Begin TugasAkhir.ShapeButton scancepat1 
         Height          =   2055
         Left            =   840
         TabIndex        =   3
         Top             =   -360
         Width           =   8775
         _ExtentX        =   15478
         _ExtentY        =   3625
         BackColorHover  =   12648384
         BorderColor     =   -2147483627
         BorderColorPressed=   -2147483628
         BorderColorHover=   -2147483627
         Caption         =   "Scan Cepat"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.PictureBox scancermat 
      BackColor       =   &H00FFFF80&
      BorderStyle     =   0  'None
      Height          =   1335
      Left            =   7800
      ScaleHeight     =   1335
      ScaleWidth      =   7695
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   7695
      Begin TugasAkhir.ShapeButton scancermat1 
         Height          =   2055
         Left            =   -2520
         TabIndex        =   1
         Top             =   -360
         Width           =   9135
         _ExtentX        =   16113
         _ExtentY        =   3625
         BackColorHover  =   16777152
         BorderColor     =   -2147483627
         BorderColorPressed=   -2147483628
         BorderColorHover=   -2147483627
         Caption         =   "Scan Cermat"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
   End
End
Attribute VB_Name = "lainnya"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False