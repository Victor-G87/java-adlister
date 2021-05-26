import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/count")
public class CounterServlet extends HttpServlet {

    private int count = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String reset = request.getParameter("reset");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if(reset == null){
            count++;
        } else if(reset.equalsIgnoreCase("reset")) {
            count = 1;
        }
        out.println("<h1>You have viewed this page " + count + " times!</h1>");

    }
}