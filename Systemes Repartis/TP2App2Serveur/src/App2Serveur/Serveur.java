package App2Serveur;

import java.io.IOException;
import java.net.ServerSocket;

public class Serveur{
	static void main(String [] args) throws IOException{
		ServerSocket ss1= new ServerSocket(2020);
		ServerSocket ss2= new ServerSocket(2021);
		ThreadS1 s1=new ThreadS1(ss1);
		s1.start();
		ThreadS2 s2= new ThreadS2(ss2);
		s2.start();
	}
}
