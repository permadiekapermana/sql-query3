package com.permadi;

//import java sql semua package
import java.sql.*;

public class DatabaseAkses {
	
	//	var koneksi, statement, resultset	
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
		
	//	method database akses	
	public DatabaseAkses() {
		//	url localhost, port mysql, database		
		String url = "jdbc:mysql://localhost:3306/query_latihan3";
		//	username localhost		
		String user = "root";
		//	password localhost		
		String password = "";
		//	exception koneksi		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {			
			System.out.println(e);
		}
	}
	
	//	method view / select data tabel	
	public static void view1() throws SQLException {
		st = con.createStatement();
		rs = st.executeQuery("SELECT * FROM karyawan ORDER BY Tanggal_masuk ASC LIMIT 3");
		
		System.out.println("Menampilkan 3 karyawan yang pertama kali masuk :");
		
		
		while(rs.next()) {
			System.out.println("\nNomor Induk Karyawan : " + rs.getString(1));
			System.out.println("Nama Karyawan : " + rs.getString(2));
			System.out.println("Alamat : " + rs.getString(3));
			System.out.println("Tanggal Lahir : " + rs.getString(4));
			System.out.println("Tanggal Masuk : " + rs.getString(5));
		}
	}
	
	//	method view / select data tabel	
	public static void view2() throws SQLException {
		st = con.createStatement();
		rs = st.executeQuery("SELECT A.Nomor_induk, A.Nama, A.Tanggal_masuk, B.Lama_cuti, B.keterangan FROM karyawan A, cuti_karyawan B "
				+ "WHERE B.nomor_induk=A.Nomor_induk");
		
		System.out.println("Menampilkan karyawan yang saat ini sedang cuti");
		
		
		while(rs.next()) {
			System.out.println("\nNomor Induk Karyawan : " + rs.getString(1));
			System.out.println("Nama Karyawan : " + rs.getString(2));
			System.out.println("Tanggal Masuk : " + rs.getString(3));
			System.out.println("Lama Cuti : " + rs.getString(4));
			System.out.println("Keterangan : " + rs.getString(5));
		}
	}
	
	//	method view / select data tabel	
	public static void view3() throws SQLException {
		st = con.createStatement();
		rs = st.executeQuery("SELECT A.Nomor_induk, A.Nama, B.Lama_cuti "
				+ "FROM karyawan A, cuti_karyawan B WHERE B.nomor_induk=A.Nomor_induk AND b.Lama_cuti > 1");
		
		System.out.println("Menampilkan karyawan yang sudah cuti lebih dari satu kali.");
		
		
		while(rs.next()) {
			System.out.println("\nNomor Induk Karyawan : " + rs.getString(1));
			System.out.println("Nama Karyawan : " + rs.getString(2));
			System.out.println("Lama Cuti : " + rs.getString(3));
		}
	}
	
	//	method view / select data tabel	
	public static void view4() throws SQLException {
		st = con.createStatement();
		rs = st.executeQuery("SELECT DISTINCT A.Nomor_induk, A.Nama, 12 - IFNULL(SUM(B.Lama_cuti), 0) AS sisa_cuti "
				+ "FROM karyawan A LEFT JOIN cuti_karyawan B ON A.Nomor_induk=B.nomor_induk GROUP BY A.Nomor_induk");
		
		System.out.println("Menampilkan sisa cuti tiap karyawan tahun ini, jatah cuti total per tahun adalah 12");
		
		
		while(rs.next()) {
			System.out.println("\nNomor Induk Karyawan : " + rs.getString(1));
			System.out.println("Nama Karyawan : " + rs.getString(2));
			System.out.println("Sisa Cuti : " + rs.getString(3));
		}
	}

}
