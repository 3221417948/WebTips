package servlet;

import domain.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Service;
import java.io.IOException;
import java.io.PrintWriter;

//模板模式 ***
public class MyServlet05 extends HttpServlet  {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入了MyServlet05");

        //取得url-pattern
        String path=request.getServletPath();
        //System.out.println(path);
        if ("/student/save.do".equals(path)){
            save(request,response);

        }else if ("/student/update.do".equals(path)){
            update(request,response);

        } else if ("/student/delete.do".equals(path)) {
            delete(request,response);

        }else if ("/student/select.do".equals(path)){
            select(request,response);

        }


    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("执行删除操作");
    }

    private void select(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("执行查询操作");
        
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("执行更新操作");
        
    }

    public void save(HttpServletRequest request, HttpServletResponse response){
        System.out.println("执行添加操作");

    }
}
