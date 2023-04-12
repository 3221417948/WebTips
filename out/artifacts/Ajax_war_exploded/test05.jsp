<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>模板模式</title>
    <base href="<%=basePath%>">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script>
        /*测试js引入是否成功*/
        $(function () {
            $("#djBtn").click(function () {

                $.ajax({
                    url: "myServlet04.do", //访问后台servlet地址
                    type: "get", //请求方式get/post
                    dataType: "json", // 从后台接收数据的方式 text/json
                    success: function (data) {//回到函数（该函数的执行时机是后台执行完毕后，此函数才会执行）
                        // alert(data);


                    }
                })
            })


        })
    </script>
</head>
<body>


<h3>学生信息管理系统</h3>

<br/>
<br/>

<a href="student/save.do">添加操作</a>
<br/>
<br/>
<a href="student/update.do">更新操作</a>
<br/>
<br/>
<a href="student/delete.do">删除操作</a>
<br/>
<br/>
<a href="student/select.do">查询操作</a>
<br/>
<br/>

</body>
</html>
