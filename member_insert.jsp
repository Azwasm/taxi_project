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
	String nickname = request.getParameter("nickname");
	String birth_date = request.getParameter("birth_date");
	
	if(id == "" || id == null) out.println("id�� null�Դϴ�");
	if(pw == "" || pw == null) out.println("pw�� null�Դϴ�");
	if(nickname == "" || nickname == null) out.println("nickname�� null�Դϴ�");
	if(birth_date == "" || birth_date == null) out.println("birth_date�� null�Դϴ�");
try {
 
     String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
     String url = "jdbc:oracle:thin:@localhost:1521:root";
     
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
     	"(ID, PW, NICKNAME, BIRTHDATE, RIGHT, ISBLACKLIST) "+
    	"VALUES ("+id+", '"+pw+"', '"+nickname+"', '"+birth_date+"', '"+1+"','"+0+"')";
     
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