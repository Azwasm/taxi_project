<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� �ۼ�</title>
</head>
<body>
	<form action="board_insert.jsp" method="post" onsubmit="return formCheck();">
		���� : <input type="text" name="title"/><br/>
		����� : <input type="text" name="start"/><br/>
		������ : <input type="text" name="dest"/><br/>
		�ð� : <input type="text" name="time"/><br/>
		�λ����� : <input type="text" name="cloth"/><br/>
		
		<input type="submit"/>
	</form>
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