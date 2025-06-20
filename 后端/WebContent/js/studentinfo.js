$(function () {
    // 从缓存中获取用户ID
    var studentId = localStorage.getItem("StudentId");
    // console.log(localStorage)
    // console.log(studentId)
    if (studentId) {
        // 加载个人信息
        loadUserInfo(studentId);
    } 
     getAllCourses();
});

// 加载个人信息
function loadUserInfo(studentId) {
    $.ajax({
        url: "http://localhost:8080/Studentgrade/getStudentInfo",
        type: "post",
        data: "studentId=" + studentId,
        success: function (msg) {
            var obj = JSON.parse(msg);
            if (obj.flag == "success") {
                console.log(obj)
                // 回显个人信息
                $(".studentName").text(obj.data.Name);
                $(".studentId").text(obj.data.StudentId);
                $(".class").text(obj.data.ClassName);
                $(".gender").text(obj.data.Gender);
                $(".identity").text(obj.data.roleId == 1 ? "学生" : "老师");
                $(".email").text(obj.data.email);
                $(".phone").text(obj.data.phone);
                $(".birthdate").text(obj.data.BirthDate);
               
            } else {
                alert(obj.data);
            }
        }
    });



   
}

// 获取所有课程信息
function getAllCourses() {
    $.ajax({
        url: "http://localhost:8080/Studentgrade/getAllCourses",
        type: "post",
        success: function (msg) {
            var obj = JSON.parse(msg);
            if (obj.flag == "success") {
                 console.log(obj)
                var htmlStr = "";
                for (var i = 0; i < obj.data.length; i++) {
                    htmlStr += "<tr>";
                    htmlStr += "<td>" + obj.data[i].CourseId + "</td>";
                    htmlStr += "<td>" + obj.data[i].CourseName + "</td>";
                    htmlStr += "<td>" + obj.data[i].CourseCredit + "</td>";
                    htmlStr += "<td>" + obj.data[i].TeacherName + "</td>";
                    
                    // 判断选课状态
                    if (obj.data[i].IsSelected) {
                        htmlStr += "<td class='status-selected'>已注册</td>";
                        htmlStr += "<td><button class='register-btn' disabled>已注册</button></td>";
                    } else {
                        htmlStr += "<td class='status-available'>未注册</td>";
                        htmlStr += "<td><button class='register-btn' onclick='selectCourse(\"" + obj.data[i].CourseId + "\")'>注册</button></td>";
                    }
                    
                    htmlStr += "</tr>";
                }
                if (htmlStr === "") {
                    htmlStr = "<tr><td colspan='6' style='text-align: center;'>暂无课程记录</td></tr>";
                }
                $(".courseList").html(htmlStr);
            } else {
                alert(obj.data);
            }
        }
    });
}