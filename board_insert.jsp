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
	String title = request.getParameter("title");
	String start = request.getParameter("start"); 
	String dest = request.getParameter("dest");
	String time = request.getParameter("time");
	String cloth = request.getParameter("cloth");
	
	if(title == "" || title == null) out.println("title�� null�Դϴ�");
	if(start == "" || start == null) out.println("start�� null�Դϴ�");
	if(dest == "" || dest == null) out.println("dest�� null�Դϴ�");
	if(time == "" || time == null) out.println("time�� null�Դϴ�");
	if(cloth == "" || cloth == null) out.println("cloth�� null�Դϴ�");
try {
 
     String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
     String url = "jdbc:oracle:thin:@localhost:1521:root";
     
     Class.forName(driverName);
 
     Connection con = DriverManager.getConnection(url,"BOARD","board"); //url + id + pw
 
     out.println("Oracle �����ͺ��̽� db�� ���������� �����߽��ϴ�");
     Statement stmt = con.createStatement();            // SQL ������ ���������� Statement ��ü ����
     
     String sql = "INSERT INTO BOARD "+"(IDX, TITLE, START_, DEST_, TIME_, CLOTH_) "+"VALUES (board_seq.nextval, '"+title+"', '"+start+"', '"+dest+"', '"+time+"', '"+cloth+"')";
     
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