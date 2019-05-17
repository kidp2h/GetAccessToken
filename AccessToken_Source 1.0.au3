#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=fb.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Description=GetAccessToken
#AutoIt3Wrapper_Res_Fileversion=1.0
#AutoIt3Wrapper_Res_ProductName=AccessToken
#AutoIt3Wrapper_Res_ProductVersion=1.0
#AutoIt3Wrapper_Res_CompanyName=KidDeepTry
#AutoIt3Wrapper_Res_LegalCopyright=KidDeepTry
#AutoIt3Wrapper_Res_LegalTradeMarks=KidDeepTry
#AutoIt3Wrapper_Res_Language=1066
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#EndRegion
#EndRegion
#EndRegion
#cs
	[CWAutCompFileInfo]
	Company=
	Copyright=
	Description=
	Version=1.0.0.0
	ProductName=1.0.0.0
	ProductVersion=1.0.0.0
#ce
#include <_HttpRequest.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include<AccessToken.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Access Token", 379, 151, 340, 197)
$usr = GUICtrlCreateInput("", 72, 24, 190, 21)
$pw = GUICtrlCreateInput("", 72, 56, 190, 21,$ES_PASSWORD)
$GET = GUICtrlCreateButton("GET", 290, 40, 75, 25, $WS_GROUP)
$Label1 = GUICtrlCreateLabel("User", 32, 24, 36, 17)
$Label2 = GUICtrlCreateLabel("Password", 32, 56, 36, 17)
$rs = GUICtrlCreateInput("Access token in here", 24, 96, 257, 21)
$Copy = GUICtrlCreateButton("Copy", 288, 96, 75, 25, $WS_GROUP)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 Case $GET
			$user = GUICtrlRead($usr)
			$pass = GUICtrlRead($pw)
			If $user = '' Or $pass = '' Then
		         MsgBox(0,'Failed','Type user or password')
				ContinueLoop
			Else
				$kq=_AccessToken($user,$pass)
				GUICtrlSetData($rs,$kq)
			EndIf
		 Case $Copy
			$kq=GUICtrlRead($rs)
			GUICtrlSetData($rs,$kq)
			ClipPut($kq)
			MsgBox(0,'Success','Copied')
	EndSwitch
WEnd
#EndRegion
