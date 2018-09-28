
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.util.Arrays;

@WebServlet("/servletProc")
public class servletProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public servletProc() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet() 호출");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // 내장객체
		//*************중요하니까 꼭!!!!!!!!**********************
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		//****************모든 페이지에 넣어주는게 좋을껄?**************
		
		System.out.println("doPost() 호출");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String hobby[] = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String idol = request.getParameter("idol");
		
//		for(int i=0; i<hobby.length;i++) {
//			System.out.println(hobby[i]);
//		}
		// System.out.println("ID : "+id);
		// System.out.println("PW : "+pw);
		PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("아이디 : " + id + "<br>");
		out.println("패스워드 : " + pw + "<br>");
		out.println("이름 : " + name + "<br>");
		out.println("취미 : " + Arrays.toString(hobby)+"<br>");
		out.println("과목 : " + major +"<br>");
		out.println("좋아하는 아이돌 : " + idol +"<br>");
		
		out.println("</body></html");
	}

}
