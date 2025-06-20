$(function () {
    // 从缓存中获取用户ID和角色
    var studentId = localStorage.getItem("StudentId");
    // var roleId = localStorage.getItem("RoleId");
    
    if (studentId) {
        // 加载学生成绩信息
        getGradeList(studentId);
    }
});

// 获取学生成绩列表
function getGradeList(studentId) {
    $.ajax({
        url: "http://localhost:8080/Studentgrade/getStudentGrades",
        type: "post",
        data: "studentId=" + studentId,
        success: function (msg) {
            var obj = JSON.parse(msg);
            if (obj.flag == "success") {
                 console.log(obj)
                var htmlStr = "";
                for (var i = 0; i < obj.data.length; i++) {
                    htmlStr += "<tr>";
                    htmlStr += "<td>" + obj.data[i].CourseId + "</td>";
                    htmlStr += "<td>" + obj.data[i].CourseName + "</td>";
                    htmlStr += "<td>" + obj.data[i].Grade + "</td>";
                    htmlStr += "<td>" + (obj.data[i].IsPass === "Yes" ? "合格" : "不合格") + "</td>";
                    htmlStr += "</tr>";
                }
                if (htmlStr === "") {
                    htmlStr = "<tr><td colspan='4' style='text-align: center;'>暂无成绩记录</td></tr>";
                }
                $(".gradesList").html(htmlStr);
            } else {
                alert(obj.data);
            }
        }
    });
}


