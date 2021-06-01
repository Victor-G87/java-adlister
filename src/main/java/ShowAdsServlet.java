
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


//servlet


@WebServlet(name = "ShowAdsServlet", urlPatterns = "/ads")
public class ShowAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
    }
}


//@WebServlet(name = "ShowAdsServlet", urlPatterns = "/ads")
//public class ShowProductsServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
//        // Use the factory to get the dao object
//        Ad AdsDao = DaoFactory.getAdsDao();
//        // Use a method on the dao to get all the products
//        // Pass the data to the jsp
//        request.setAttribute("ads", DaoFactory.getAdsDao().all()););
//        request.getRequestDispatcher("/ads/index.jsp").forward(request, resp);
//    }
//}