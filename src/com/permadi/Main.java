package com.permadi;

//import scanner
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
//		scanner option perintah		
			Scanner input = new Scanner(System.in);
			System.out.println("1. Soal Nomor 1");
			System.out.println("2. Soal Nomor 2");
			System.out.println("3. Soal Nomor 3");
			System.out.println("4. Soal Nomor 4");
			System.out.print("Masukkan Perintah SQL : ");
			
			//	menangkap int perintah		
			int p = input.nextInt();
			//	object baru database akses
			DatabaseAkses db = new DatabaseAkses();
			//	switch case berdasarkan nilai p (nilai yang user pilih)
			switch (p) {
			
			case 1:
				try {
					db.view1();
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
				
			case 2:
				try {
					db.view2();
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
				
			case 3:
				try {
					db.view3();
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
				
			case 4:
				try {
					db.view4();
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
				
			//	jika user memasukkan nilai selain yang ditentukan
			default:
				System.out.println("perintah tidak terdaftar");
				break;
			}

	}

}
