<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="member_insert.jsp" method="post" onsubmit="return formCheck();">
		
		ID : <input type="text" name="id"/><br/>
		PW : <input type="text" name="pw"/><br/>
		PWȮ�� : <input type="text" name="pw_chk"/><br/>
		���� : <input type="text" name="nickname"/><br/>
		������� : <input type="text" name="birth_date"/><br/>
		<input type="submit"/>
		<script>
	function formCheck() {
		 
	    var id = document.forms[0].id.value;
	    var pw = document.forms[0].pw.value;
	    var pw_chk = document.forms[0].pw_chk.value;
	    var nickname = document.forms[0].nickname.value;
	    var birth_date = document.forms[0].birth_date.value;
	 
	    if (id == null || id == ""){					//���� ���̵� �ߺ�üũ �ؾ���   
	        alert('ID�� �Է��ϼ���');                                   
	        document.forms[0].id.focus();                           
	        return false;                                           
	    }
	 
	    if (pw == null ||  pw  == ""){          
	        alert('PW�� �Է��ϼ���'); 
	        document.forms[0].pw.focus();                      
	        return false;               
	    }
	 
	    if (pw != pw_chk){
	        alert('PW�� PWȮ���� ��ġ�����ʽ��ϴ�');   
	        document.forms[0].pw_chk.focus();                      
	        return false;            
	    }
	    if (nickname == null || nickname == "" ){		//���Ŀ� ���� �г��� Ȯ�� �ʿ�.                            
	        alert('�ð��� �Է��ϼ���');   
	        document.forms[0].time.focus();                      
	        return false;            
	    }
	    if (birth_date == null || birth_date == "" ){
	        alert('��������� �Է��ϼ���');   
	        document.forms[0].birth_date.focus();                      
	        return false;            
	    }
	 
	}
	</script>
</body>
</html>