package App1Serveur;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Serveur {
	
	public static void main(String []args) {
		int i=0;
		try {
			ServerSocket ss=new ServerSocket(2020);
			while(true){ 
				Socket s=ss.accept();
				i++;
				ThreadCalcul c=new ThreadCalcul(s);
				c.start();
				System.out.println("Client" +i+ "connecté au Thread"+Thread.currentThread().getName());	
			}
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
	}
}