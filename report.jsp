<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <script type="text/javascript">
        function checkValue(){
            if(!document.reportInfo.report_id.value){
                alert("�Ű��� ���̵� �Է��ϼ���.");
    	        document.reportInfo.report_id.focus();    
                return false;
            }
            
            if(!document.reportInfo.report_content.value){
                alert("������ �Է��ϼ���.");
                document.reportInfo.report_content.focus();    
                return false;
            }        
        }    
    </script>
    <!-- ���⿡ �α����� �ȵ������� �α��� �������� �Ѿ�� ���� �����. taxi.jsp ���� ����-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body align = "center" >
<form method="post" action="report_insert.jsp" name="reportInfo" onsubmit="return checkValue()">
    <p>
        �Ű� ��� ID: <input type="text" id="report_id" name="report_id">
    </p>
    <p  align = "center"> 
        <left>
            ����
        </left>
    </p>
    <p>
        <textarea name="report_content" id="report_content" rows="20" cols="60">
        </textarea>
    </p>
    <input type="submit" value="����">
</form>
</body>
</html>