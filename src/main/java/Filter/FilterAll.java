package Filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebFilter(filterName = "FilterAll")
public class FilterAll implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

       request.setCharacterEncoding("utf8");
       response.setCharacterEncoding("utf8");
        chain.doFilter(request, response);
    }
}
