import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name ="MarcoHelloWorld", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    //PUT doget doPost methods in here
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.getWriter().println("<h1>Hello World from the Marco cohort!</h1>");

        response.getWriter().println("<h1>copacetic</h1>");

        response.getWriter().println("<h1>not copacetic</h1>");
    }

}


