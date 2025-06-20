$(function(){
    $(".logout-container").click(function(){
        //1.清缓存
        localStorage.setItem("user","");
        //2.跳转首页
        location.href = "Login.html";
    })


})