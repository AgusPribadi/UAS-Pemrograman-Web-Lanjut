/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nama = request.getParameter("nama");
        int jumlahPesanan = Integer.parseInt(request.getParameter("jumlahPesanan"));
        String alamat = request.getParameter("alamat");
        String kodeDiskon = request.getParameter("kodeDiskon");

        
        double hargaSatuan = 1000000;
        double diskon = 0;
        if (kodeDiskon != null && kodeDiskon.equals("DISKON10")) {
            diskon = 0.1; // Diskon 10% untuk kode diskon "DISKON10"
        }
        double totalHarga = hargaSatuan * jumlahPesanan * (1 - diskon);

        
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();

        
        out.println("<html><body>");
        out.println("Terima kasih, " + nama + ".<br>");
        out.println("Pesananmu sebesar Rp. " + String.format("%.2f", totalHarga) + " atas promo diskon "
                + (diskon * 100) + "% akan dikirim ke " + alamat + ".");
        out.println("</body></html>");

        out.close();
    }
}
