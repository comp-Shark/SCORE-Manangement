$(function () {
    // 页面加载时获取所有成绩
    getTeacherGradeList();

    getAllGradesStats();
});

// 获取老师成绩列表
function getTeacherGradeList() {
    $.ajax({
        url: "http://localhost:8080/Studentgrade/getTeacherGradeList",
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
                    htmlStr += "<td>" + obj.data[i].ClassName + "</td>";
                    htmlStr += "<td>" + obj.data[i].StudentName + "</td>";
                    htmlStr += "<td>" + obj.data[i].Grade + "</td>";
                    htmlStr += "<td><button class='register-btn edit-grade-btn' onclick='showEditGradeDialog(" + obj.data[i].id + ", \"" + obj.data[i].CourseId + "\", \"" + obj.data[i].StudentId + "\")'>修改</button></td>";
                    htmlStr += "</tr>";
                }
                if (htmlStr === "") {
                    htmlStr = "<tr><td colspan='6' style='text-align: center;'>暂无成绩记录</td></tr>";
                }
                $(".gradeEntryList").html(htmlStr);
            } else {
                alert(obj.data);
            }
        }
    });
}

function getAllGradesStats() {
    $.ajax({
        url: "http://localhost:8080/Studentgrade/getAllGradesStats",
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
                    htmlStr += "<td>" + obj.data[i].ClassName + "</td>";
                    htmlStr += "<td>" + obj.data[i].PassCount + "</td>";
                    htmlStr += "</tr>";
                }
                if (htmlStr === "") {
                    htmlStr = "<tr><td colspan='4' style='text-align: center;'>暂无成绩统计记录</td></tr>";
                }
                $(".gradesStatsList").html(htmlStr);
            } else {
                alert(obj.data);
            }
        }
    });
}

