//页面加载时初始化
$(function(){
    $(".loginButton").click(function(){
        var email = $(".email").val();
        var password = $(".password").val();

        $.ajax({
            url:"http://localhost:8080/Studentgrade/login",
            type:"post",
            data:"email="+email+"&password="+password,
            success:function(msg){
                var obj = JSON.parse(msg);
                if(obj.flag = "success"){
                    var user = obj.data;
                    localStorage.setItem("user",JSON.stringify(user));
                    localStorage.setItem("StudentId", user.StudentId); // 单独缓存 userId
                    localStorage.setItem("JobId", user.JobId); 
                    localStorage.setItem("roleId", user.RoleId); // 缓存角色信息

                     
                    jump(user);
                }else{  
                    $(".alertInfo").text(obj.data);
                }
            }
        })
    })

    function jump(user){
        if(user.RoleId == 1){   //学生
            location.href = "StudentManager.html";
        }else if(user.RoleId == 2){   //老师
            location.href = "TeacherManager.html";
        }
    }
})
