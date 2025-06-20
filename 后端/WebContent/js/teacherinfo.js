$(function () {
    // 从缓存中获取用户ID
    var JobId = localStorage.getItem("JobId");
    console.log(localStorage)
    console.log(JobId)
    if (JobId) {
        // 加载个人信息
        loadUserInfo(JobId);
         //页面加载时获取所有成绩
       
    } 

    
});

// 加载个人信息
function loadUserInfo(JobId) {
    $.ajax({
        url: "http://localhost:8080/Studentgrade/getTeacherInfo",
        type: "post",
        data: "JobId=" + JobId,
        success: function (msg) {
            var obj = JSON.parse(msg);
            if (obj.flag == "success") {
                 console.log(obj)
                // 回显个人信息
                $(".teacherName").text(obj.data.Name);
                $(".teacherId").text(obj.data.JobId);
                $(".department").text(obj.data.Department);
                $(".gender").text(obj.data.Gender);
                $(".identity").text(obj.data.RoleId == 1 ? "学生" : "老师");
                $(".email").text(obj.data.email);
                $(".phone").text(obj.data.phone);
                $(".hireDate").text(obj.data.JoinDate);
            } else {
                alert(obj.data);
            }
        }
    });
}

