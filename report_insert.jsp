<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("report_id");
	String content = request.getParameter("report_content"); 
	
	if(id == "" || id == null) out.println("id�� null�Դϴ�");
	if(id == "" || content == null) out.println("content�� null�Դϴ�");
try {
	String driverName = "oracle.jdbc.driver.OracleDriver"; 
	 
    String url = "jdbc:oracle:thin:@localhost:1521:root";
    
    ResultSet rs = null;
    
    Class.forName(driverName);

    Connection con = DriverManager.getConnection(url,"MEMBER_","member_"); //url + id + pw

    out.println("Oracle �����ͺ��̽� db�� ���������� �����߽��ϴ�");
    
    String sql= "UPDATE MEMBER_LIST SET ISBLACKLIST = 1 WHERE ID="+id;
    
    Statement stmt = con.createStatement();            // SQL ������ ���������� Statement ��ü ����
    
    rs = stmt.executeQuery(sql);
    
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