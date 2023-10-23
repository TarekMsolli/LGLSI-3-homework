package App2Client2;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

public class Client2{
	public static void main(String[]args) throws UnknownHostException, IOException {
		Socket s=new Socket(InetAddress.getLocalHost(),2021);
	}
}
