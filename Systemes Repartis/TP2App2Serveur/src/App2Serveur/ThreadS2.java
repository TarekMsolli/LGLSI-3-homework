package App2Serveur;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

class ThreadS2 extends Thread{
	ServerSocket ss1;
	ThreadS2(ServerSocket ss) {
		ss1=ss;
	}
	
	public void run(){ 
		while(true){
			try {
				Socket s=ss1.accept();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}