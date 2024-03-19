package application.cursojsp.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/ServletLogin") //Mapeamento que vem da tela
public class ServletLogin extends HttpServlet {
    public ServletLogin() {
        super();
    }

    //recebe os dados pela URL em parâmetros
    protected void doGet(HttpServletRequest req, HttpServletResponse res){

    }

    //recebe os dados enviados pelo formulário
    protected void doPost(HttpServletRequest req, HttpServletResponse res) {
        System.out.println(req.getParameter("nome"));
        System.out.println(req.getParameter("idade"));

    }
}
