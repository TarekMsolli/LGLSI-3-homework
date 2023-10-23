package App1Serveur;


import java.io.*;
import java.net.Socket;

public class ThreadCalcul extends Thread{
	Socket s;
	BufferedReader in;
	PrintWriter out;

	public ThreadCalcul(Socket s) {
		this.s=s;
		try {
			in= new BufferedReader (new InputStreamReader(s.getInputStream()));
			out =new PrintWriter(s.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void run() {
		
		while (true) {
		try {
			
			String N1 = in.readLine();
		
		if(N1.equals("0"))
		{s.close();
		break;}
		String N2 = in.readLine();
		int n1=Integer.parseInt(N1);
		int n2=Integer.parseInt(N2);
		String op = in.readLine();
		switch (op){
		case "+": out.println(N1+" + "+N2+" = "+(n1+n2));break;
		case "-": out.println(N1+" - "+N2+" = "+(n1-n2));break;
		case "*": out.println(N1+" * "+N2+" = "+n1*n2);break;
		case "/": out.println(N1+" / "+N2+" = "+n1/n2);break;
		default:  out.println("opératur non valide!");		
		
		}
System.out.println("opération effectuée au "+Thread.currentThread().getName());
		out.flush();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}}
	}

}
