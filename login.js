function login(){
    var _Login_Email       = document.getElementById("InputEmail");
    var _Login_Password    = document.getElementById("InputPassword");
    var _Content_Email     = _Login_Email.value;
    var _Content_Password  = _Login_Password.value;
    //alert(_Content_Email);
    //alert(_Content_Password);
    if(_Content_Email== "admin" && _Content_Password == "admin"){
        alert("Đăng nhập thành công :)");
    }else{
        alert("Đăng nhập thất bại :'(");
    }
}