package application.cursojsp.servlets;

import application.cursojsp.model.ModelLogin;
import jakarta.servlet.RequestDispatcher;
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
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ModelLogin modelLogin = new ModelLogin();
        String login = req.getParameter("login");
        String senha = req.getParameter("senha");

        if (!login.isBlank() && !senha.isBlank()) {
            modelLogin.setLogin(login);
            modelLogin.setSenha(senha);
        } else {
            RequestDispatcher redirecionar = req.getRequestDispatcher("index.jsp");
            req.setAttribute("msg", "Login ou senha inválido.");
            redirecionar.forward(req, res);
        }
    }
}
