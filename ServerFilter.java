import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

@WebFilter(filterName = "ServerFilter")
public class ServerFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        config.getServletContext().log("Filter Started");

    }

    public void destroy() {
    }

    public void doFilter(ServletRequest request,ServletResponse response, FilterChain chain) throws ServletException, IOException {

        boolean invalid = false;
        Map params = request.getParameterMap();

        if(params != null){
            Iterator iter = params.keySet().iterator();
            while(iter.hasNext()){
                String key = (String) iter.next();
                String[] values = (String[]) params.get(key);

                for(int i=0; i < values.length; i++){
                    if(checkChars(values[i])){
                        invalid = true;
                        break;
                    }
                }
                if (invalid) {break;}
            }
        }

        if(invalid){
            try{
                RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
                request.setAttribute("message", "Invalid characters");
                dispatcher.forward(request, response);
            }
            catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/account.jsp");
            request.setAttribute("message", "Success");
            dispatcher.forward(request, response);
        }
    }


    public static boolean checkChars(String value) {
        boolean invalid = false;
        String[] badChars = { "<", ">", "!", "{", "}", "insert" ,"into", "where", "script", "delete", "input" };

        for(int i = 0; i < badChars.length; i++){
            if(value.indexOf(badChars[i]) >=0){
                invalid = true;
                break;
            }
        }
        return invalid;
    }


}
