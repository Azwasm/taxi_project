<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>e</title>
</head>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String gender = request.getParameter("gender");
	String birth_yy = request.getParameter("birth_yy");
	String birth_mm = request.getParameter("birth_mm");
	String birth_dd = request.getParameter("birth_dd");
	
	String birth = null;
	
	String mail1 = request.getParameter("mail1");	//mail = mail1 + @ + mail2
	String mail2 = request.getParameter("mail2");
	
	String phone_num = request.getParameter("phone_num");
	
	String address = request.getParameter("address");
	
	if(id == "" || id == null) out.println("id�� null�Դϴ�");
	if(pw == "" || pw == null) out.println("pw�� null�Դϴ�");
	if(name == "" || name== null) out.println("name�� null�Դϴ�");
	if(nickname == "" || nickname == null) out.println("nickname�� null�Դϴ�");
	if(birth_yy == "" || birth_yy == null) out.println("birth_yy�� null�Դϴ�");
	if(birth_mm == "" || birth_mm == null) out.println("birth_mm�� null�Դϴ�");
	if(birth_dd == "" || birth_dd == null) out.println("birth_dd�� null�Դϴ�");
	
	if(mail1 == "" || mail1 == null) out.println("mail1�� null�Դϴ�");
	if(mail2 == "" || mail2 == null) out.println("mail2�� null�Դϴ�");
	
	if(phone_num == "" || phone_num == null) out.println("phone_num�� null�Դϴ�");
	if(address == "" || address == null) out.println("address�� null�Դϴ�");
try {
 
     String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
     String url = "jdbc:oracle:thin:@localhost:1521:root";
     
     birth = birth_yy + "/" + birth_mm + "/" + birth_dd;
     mail1 = mail1+"@"+mail2;
     
     ResultSet rs = null;
     
     Class.forName(driverName);
 
     Connection con = DriverManager.getConnection(url,"MEMBER_","member_"); //url + id + pw
 
     out.println("Oracle �����ͺ��̽� db�� ���������� �����߽��ϴ�");
     Statement stmt = con.createStatement();            // SQL ������ ���������� Statement ��ü ����
     
     //���⼭ ���̵� �ߺ� �˻� �ٽ� ��!
     
     String sql= "SELECT * FROM MEMBER_LIST WHERE ID="+id;
     
     rs = stmt.executeQuery(sql);
     
     if(rs.isBeforeFirst()){
    	 //���̵� ���Ұ���! �ߺ��� ID ������
    	 out.println("�ߺ��� ID�� �����մϴ�.");
    	 con.close();	//�������.
     }
     
     sql = null;
     
     sql = "INSERT INTO MEMBER_LIST "+
     	"(ID, PW, NAME, NICKNAME, GENDER, BIRTH, MAIL, PHONE_NUM, ADDRESS, RIGHT, ISBLACKLIST) "+
    	"VALUES ("+id+", '"+pw+"', '"+name+"', '"+nickname+"', '"+gender+"', '"+birth+"', '"+mail1+"', '"+phone_num+"', '"+address+"', '"+0+"','"+0+"')";
     
     stmt.executeUpdate(sql);
     
     con.close();
 
} catch (Exception e) {
     out.println("Oracle �����ͺ��̽� db ���ӿ� ������ �ֽ��ϴ�. <hr>");
 
     out.println(e.getMessage());
 
     e.printStackTrace();
}
finally{
    out.print("<script>location.href='taxi.jsp';</script>");
}
%>
<body>
</body>
</html>