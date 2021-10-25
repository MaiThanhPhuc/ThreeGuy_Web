package murach_ex7.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.util.ArrayList;

import murach_ex7.data.ProductIO;
import murach_ex7.business.Product;
@WebServlet(urlPatterns = {"/loadProducts"})
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/index_73.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}

