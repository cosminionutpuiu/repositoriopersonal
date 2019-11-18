import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.GeneralSecurityException;

import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.*;
import org.apache.commons.net.util.TrustManagerUtils;

public class FTPConnectAndLoginDemo {

	public static void main(String[] args) throws IOException, GeneralSecurityException {


		String server = "10.226.132.227";
		int port = 990;
		String user = "user";
		String pass = "pass";
		String origen="/tmp/prueba.txt";
		String destino="/descargas/prueba.txt";

		//true = isImplicit
		//Protocol versions SSLv2, SSLv3, TLSv1, TLSv1.1, TLSv1.2
		FTPSClient ftpClient = new FTPSClient("TLS",true);


		//Muestra toda la conversacion entre cliente y servidor por consola para depuracion
		ftpClient.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));
		


		//ftpClient.setTrustManager(null);
		//ftpClient.setTrustManager(TrustManagerUtils.getValidateServerCertificateTrustManager());
		//ftpClient.setTrustManager(TrustManagerUtils.getAcceptAllTrustManager());


		ftpClient.setEnabledProtocols(new String[] {"SSLv3"});


		try {
			ftpClient.connect(server, port);


			ftpClient.setControlEncoding("UTF-8");

			
			int replyCode = ftpClient.getReplyCode();
			if (!FTPReply.isPositiveCompletion(replyCode)) {
				System.out.println("ERROR. SERVER REPLY CODE: " + replyCode);
				return;
			}

			boolean success = ftpClient.login(user, pass);

			if (!success) {
				System.out.println("NO SE HA PODIDO REALIZAR EL LOGADO EN EL SERVIDOR");
				return;
			} else {
				System.out.println("LOGADO EN EL SERVIDOR");
				// Establecer proteccion tamaño bufer
				ftpClient.execPBSZ(0);
				// Set data channel protection to private
				ftpClient.execPROT("P");
				//FTP.ASCII_FILE_TYPE para ASCII FTP.BINARY_FILE_TYPE para binario
				ftpClient.setFileType(FTP.ASCII_FILE_TYPE);
				ftpClient.enterLocalPassiveMode();
				ftpClient.setControlKeepAliveTimeout(300); //Cinco minutos

				subidaFichero(origen,destino,ftpClient);
				bajadaFichero("/descargas/prueba.txt","/tmp/descargado.txt",ftpClient);
				borrarFichero(destino,ftpClient);

				ftpClient.noop();
				ftpClient.logout();


			}


		} catch (IOException ex) {
			System.out.println("ERROR NO IDENTIFICADO");
			ex.printStackTrace();
		}
	}

	static boolean subidaFichero (String origen, String destino, FTPSClient ftpClient) {
		boolean operacionOk = false;

		InputStream fichero;


		try {
			fichero = new FileInputStream(origen);
			ftpClient.storeFile(destino, fichero);
			fichero.close();
            
			//Similar a ejecutar completePendingCommand
			int replyCode = ftpClient.getReplyCode();
			if (FTPReply.isPositiveCompletion(replyCode)) {
				operacionOk=true;
			}


		} catch (FileNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

		return operacionOk;
	}

	static boolean bajadaFichero(String origen, String destino, FTPSClient ftpClient){
		boolean operacionOk=false;

		OutputStream fichero;

		try {
			fichero = new FileOutputStream(destino);
			ftpClient.retrieveFile(origen, fichero);
			int replyCode = ftpClient.getReplyCode();
			if (FTPReply.isPositiveCompletion(replyCode)) {
				operacionOk=true;
			}
			fichero.close();

		} catch (FileNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}


		return operacionOk;
	}

	static boolean borrarFichero(String destino, FTPSClient ftpClient){
		boolean operacionOk=false;

		try {
			ftpClient.deleteFile(destino);
			int replyCode = ftpClient.getReplyCode();
			if (FTPReply.isPositiveCompletion(replyCode)) {
				operacionOk=true;
			}

		} catch (IOException e) {
			System.out.println("No se ha podido borrar el fichero");
			e.printStackTrace();
		}

		return operacionOk;
	}
}