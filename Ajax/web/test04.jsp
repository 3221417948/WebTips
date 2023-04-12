<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>Json</title>
    <base href="<%=basePath%>">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script>
        /*测试js引入是否成功*/
        $(function () {
            $("#djBtn").click(function (){

                $.ajax({
                    url: "myServlet04.do", //访问后台servlet地址
                    type: "get", //请求方式get/post
                    dataType: "json", // 从后台接收数据的方式 text/json
                    success: function (data) {//回到函数（该函数的执行时机是后台执行完毕后，此函数才会执行）
                        // alert(data);

                        $("#id1").html(data.s1.id);
                        $("#name1").html(data.s1.name);
                        $("#age1").html(data.s1.age);

                        $("#id2").html(data.s2.id);
                        $("#name2").html(data.s2.name);
                        $("#age2").html(data.s2.age);


                    }
                })
            })


        })
    </script>
</head>
<body>
<button id="djBtn">点击</button>
<br/><br/>

学员1：<br/>
编号：<span id="id1"></span><br/>
姓名：<span id="name1"></span><br/>
年龄：<span id="age1"></span><br/>

<br/>
<br/>

学员2：<br/>
编号：<span id="id2"></span><br/>
姓名：<span id="name2"></span><br/>
年龄：<span id="age2"></span><br/>

</body>
</html>
