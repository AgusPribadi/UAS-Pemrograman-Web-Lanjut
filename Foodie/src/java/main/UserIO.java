/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package main;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import main.User;


/**
 *
 * @author User
 */
public class UserIO {
    public static void create(User user, String filePath) throws IOException {
        File file = new File(filePath);
        PrintWriter out = new PrintWriter(new FileWriter(file, true));
        out.println(user.getUserName() + " " + user.getPassword());
        out.close();
    }
}
