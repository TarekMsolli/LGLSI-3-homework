package App1Client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Scanner;

public class Client {
	public static void main(String []args)
	{
		try {
			Socket s=new Socket(InetAddress.getLocalHost(),2020);

			BufferedReader in= new BufferedReader (new InputStreamReader(s.getInputStream()));
			PrintWriter out =new PrintWriter(s.getOutputStream());
			Scanner sc=new Scanner(System.in);
			while(true) {
				System.out.println("donner N1");
			int N1=sc.nextInt();
			out.println(N1);
			out.flush();
			
			if(N1==0) {s.close(); break;}
			
			System.out.println("donner N2");
			int N2=sc.nextInt();
			 sc=new Scanner(System.in);
			System.out.println("donner op");
		
			String op=sc.nextLine();
			out.println(N2);
			out.println(op);
			out.flush();
			
			System.out.println(in.readLine());
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
