package Mail;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author josue
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
            String Name = request.getParameter("user_name");
            String NameAP = request.getParameter("user_nameAP");
            String NameAM = request.getParameter("user_nameAM");
            String Pass = request.getParameter("user_pass");
            String mail = request.getParameter("user_email");
            String Bol = request.getParameter("Boleta");
		String resultMessage = "";
                int longitud = 6;
                String cadenaAleatoria = "";
long milis = new java.util.GregorianCalendar().getTimeInMillis();
Random r = new Random(milis);
int i = 0;
while ( i < longitud){
char c = (char)r.nextInt(255);
if ( (c >= '0' && c <='9') || (c >='A' && c <='Z') ){
cadenaAleatoria += c;
i ++;
}
}
String Mensaje = cadenaAleatoria+"\n"+"Ingresa este codigo en la pagina, para poder continuar con el registro";
		try {
			EmailUtility.sendEmail("smtp.gmail.com", "587", "josue.sanchez.batiz.9@gmail.com", "edmundocsgo", mail, "Confirmación de Correo Electronico",
					Mensaje);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
                        request.setAttribute("Name", Name);
                        request.setAttribute("AP", NameAP);
                        request.setAttribute("AM", NameAM);
                        request.setAttribute("Pass", Pass);
                        request.setAttribute("Bol", Bol);
                        request.setAttribute("Veri", cadenaAleatoria);
                        request.setAttribute("Correo", mail);
			getServletContext().getRequestDispatcher("/JSP/VeriVIIP.jsp").forward(
					request, response);
		}
	}
}
