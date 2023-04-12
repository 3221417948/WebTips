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

            $.ajax({
                url: "myServlet02.do", //访问后台servlet地址
                type: "get", //请求方式get/post
                dataType: "json", // 从后台接收数据的方式 text/json
                success: function (data) {//回到函数（该函数的执行时机是后台执行完毕后，此函数才会执行）
                    alert(data); //{object Object}

                    //以json.key形式解析json
                    alert(data.str1); // aaa

                }
            })
        })
    </script>
</head>
<body>
<button id="djBtn">点击</button>
<br/>

</body>
</html>
