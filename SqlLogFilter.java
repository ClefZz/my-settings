package sagan;

import org.springframework.stereotype.Component;
import org.springframework.web.filter.GenericFilterBean;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@Component
public class SqlLogFilter extends GenericFilterBean {

    private static String ignoreTypes[] = {
        ".js",
        ".html",
        ".css",
        ".jpg",
        ".png",
        ".gif",
        ".woff",
        ".woff2",
        ".ico"
    };
    private static boolean ignore(String uri) {
        for (String type : ignoreTypes) {
            if (uri.endsWith(type)) {
                return true;
            }
        }
        return false;
    }

//    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws InterruptedException {
        if (ignore(request.getRequestURI())) {
//            Thread.sleep(200);
            return true;
        }
        System.out.println("================Start================");
        System.out.println(request.getMethod() + " URL:" + request.getRequestURI());
        System.out.println("================Start================");

        StringBuilder sb = new StringBuilder();
        sb.append("================START:")
            .append(request.getMethod())
            .append(" URL:")
            .append(request.getRequestURI())
            .append("================");

        logFlag(sb);
        return true;

    }

//    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        if (ignore(request.getRequestURI())) {
            return;
        }
        System.out.println("================END================");
        System.out.println("URL:" + request.getRequestURI());
        System.out.println("================END================");

        StringBuilder sb = new StringBuilder();
        sb.append("================END:")
                .append(request.getRequestURI())
                .append("================");
        logFlag(sb);
    }

    private void logFlag(StringBuilder sb) {
        try {
            final Process p =
                    Runtime.getRuntime()
                            .exec(new String[]{"bash", "-c", "echo " + sb.toString() + " >> /home/cleveland/mysqld/query.log"});
            p.waitFor();
            final int i = p.waitFor();
            System.out.println("Echo res : " + i);

            BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
            BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

            // Read the output from the command
            System.out.println("Here is the standard output of the command:");
            String s = null;
            while ((s = stdInput.readLine()) != null) {
                System.out.println(s);
            }

            // Read any errors from the attempted command
            System.out.println("Here is the standard error of the command (if any):");
            while ((s = stdError.readLine()) != null) {
                System.out.println(s);
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        System.out.println("FILTER BEGIN\n");
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        if (!ignore(httpServletRequest.getRequestURI())) {
            System.out.println("================Start================");
            System.out.println(httpServletRequest.getMethod() + " URL:" + httpServletRequest.getRequestURI());
            System.out.println("================Start================");

            StringBuilder sb = new StringBuilder();
            sb.append("================START:")
                .append(httpServletRequest.getMethod())
                .append(" URL:")
                .append(httpServletRequest.getRequestURI())
                .append("================");

            logFlag(sb);
        }
        chain.doFilter(request, response);
//        System.out.println("FILTER END\n");
        if (ignore(httpServletRequest.getRequestURI())) {
            return;
        }
        System.out.println("================END================");
        System.out.println("URL:" + httpServletRequest.getRequestURI());
        System.out.println("================END================");

        StringBuilder sb = new StringBuilder();
        sb.append("================END:")
            .append(httpServletRequest.getRequestURI())
            .append("================");
        logFlag(sb);
    }
}
