<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� �ۼ�</title>
</head>
<table border = "0" cellspacing = "1" cellpadding = "0" width = "400" align = "center">
	<body topmargin = "0" leftmargin="0" marginwidth="0" marginheight="0">
		<div align = "center" >
		<form action="board_insert.jsp" method="post" onsubmit="return formCheck();">
			<tr align = "right">
				<td width = "25%" style ="font-family: Tahoma; font-size : 15pt">
					<b>���� :</b> 
				</td>
				<td align = "left"  style ="font-family: Tahoma; font-size : 15pt">
						<input type="text" name="title"/><br/>
				</td>
			</tr>
			
			<tr align = "right " style ="font-family: Tahoma; font-size : 15pt" >
				<td >
					<b>����� :</b> 
				</td>
				<td align = "left">
						<input type="text" name="start"/><br/>
				</td>
			</tr>
			<tr align = "right" style ="font-family: Tahoma; font-size : 15pt">
				<td>
					<b>������ :</b>
				</td>
				<td align = "left">
						<input type="text" name="dest"/><br/>
				</td>
			</tr>
			<tr align = "right" style ="font-family: Tahoma; font-size :15pt">
				<td>
					<b>�ð� :</b> 
				</td>
				<td align = "left">
						<input type="text" name="time"/><br/>
				</td>
			</tr>
			<tr align = "right" style ="font-family: Tahoma; font-size : 15pt">
				<td>
					<b>�λ����� :</b> 
				</td>
				<td align = "left" >
						<input type="text" name="cloth"/><br/>
				</td>
			</tr>
		
		
			<tr>
				<td align = "right" colspan="2" >
					<input type="submit"/>
				</td>
			</tr>
		
			
			
		</form>
		</div>
	</table>
	
	<script>
	function formCheck() {
		 
	    var title = document.forms[0].title.value;
	    var start = document.forms[0].start.value; 
	    var dest = document.forms[0].dest.value;
	    var time = document.forms[0].time.value;
	    var cloth = document.forms[0].cloth.value;
	 
	    if (title == null || title == ""){                                    // null���� ���� ��
	        alert('������ �Է��ϼ���');                                   // ���â�� ����
	        document.forms[0].title.focus();                           // �ش��±׿� ��Ŀ���� �ص�
	        return false;                                                     // false�� �����մϴ�.
	    }
	 
	    if (start == null ||  start  == ""){          
	        alert('������� �Է��ϼ���'); 
	        document.forms[0].start.focus();                      
	        return false;               
	    }
	 
	    if (dest == null || dest == "" ){                            
	 
	        alert('�������� �Է��ϼ���');   
	        document.forms[0].dest.focus();                      
	        return false;            
	    }
	    if (time == null || time == "" ){                            
	   	 
	        alert('�ð��� �Է��ϼ���');   
	        document.forms[0].time.focus();                      
	        return false;            
	    }
	    if (cloth == null || cloth == "" ){                            
	   	 
	        alert('�λ����Ǹ� �Է��ϼ���');   
	        document.forms[0].cloth.focus();                      
	        return false;            
	    }
	 
	}
	</script>
</body>
</html>