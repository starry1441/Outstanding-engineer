package servlet.student.queeryClub;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "apply",urlPatterns = "/apply")
public class apply extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * @Description: 学生申请加入社团
         *@param request 浏览器申请信息
         *@param response 服务器返回信息
         * @return: void
         * @Date: 2021/1/13
         */
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String Cname=request.getParameter("Cname");
        HttpSession session=request.getSession();
        PrintWriter out=response.getWriter();
        String Sno=session.getAttribute("Sno").toString();
        //String Sno="01";
        String sql="insert sapply(Sno,Cname) values('"+Sno+"','"+Cname+"')";
        int i=new Dao.Apply.applyMessage().insertApply(sql);
        out.println("<script language='javascript'>alert('申请已提交，请等候!');</script>");
        response.sendRedirect(request.getContextPath()+ "/student/queeryClub/right_check.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
