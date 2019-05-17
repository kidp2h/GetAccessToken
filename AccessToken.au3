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
#include<_HttpRequest.au3>
#include<MD5.au3>
			Func _AccessToken($user,$pass)
			$ios = '62f8ce9f74b12f84c123cc23437a4a32'
			$sig=md5('api_key=882a8490361da98702bf97a021ddc14demail='&$user&'format=JSONlocale=vi_vnmethod=auth.loginpassword='&$pass&'return_ssl_resources=0v=1.0'&$ios)
			$token=_HttpRequest(2, 'https://api.facebook.com/restserver.php', 'api_key=882a8490361da98702bf97a021ddc14d&email=' &$user& '&format=JSON&locale=vi_vn&method=auth.login&password=' &$pass& '&return_ssl_resources=0&v=1.0&sig=' & $sig)
			$result=StringRegExp($token,'"access_token":"(.*?)"', 3)
			If Not IsArray($result) Then
		       MsgBox(0,'Failed','Wrong account or password !!')
			Else
			   Return $result[0]
			EndIf
EndFunc
