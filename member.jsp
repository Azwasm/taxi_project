<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="EUC-KR">
    <title>ȸ������ ȭ��</title>
    
    <!-- css ���� �и� -->
    <!-- <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/> -->
    <script type="text/javascript">
    
    	//�˾�â ����, ID �ߺ� �˻���.
    	function idCheck(){
			var data = document.querySelector('#pId').value; 
			if(!(window.open("id_check.jsp?id="+data,"childForm","width=450, height=320 , resizable = no, scrollbars = no, status = no"))){
				return false;
			}
    	}
    
        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue(){
            if(!document.userInfo.id.value){
                alert("���̵� �Է��ϼ���.");
    	        document.userInfo.id.focus();    
                return false;
            }
            
            if(!document.userInfo.pw.value){
                alert("��й�ȣ�� �Է��ϼ���.");
                document.userInfo.pw.focus();    
                return false;
            }
            
            // ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
            if(document.userInfo.pw.value != document.userInfo.pw_chk.value ){
                alert("��й�ȣ�� ��й�ȣȮ���� ��ġ�����ʽ��ϴ�.");
                return false;
            }
            
            if(!document.userInfo.name.value){
                alert("�̸��� �Է��ϼ���.");
                document.userInfo.name.focus();    
                return false;
            }
            
            if(!document.userInfo.nickname.value){
                alert("������ �Է��ϼ���.");
                document.userInfo.nickname.focus();    
                return false;
            }
            
            if(!document.userInfo.birth_yy.value){
                alert("�׾ �ظ� �Է��ϼ���.");
                document.userInfo.birth_yy.focus();    
                return false;
            }
            
            if(!document.userInfo.birth_mm.value){
                alert("�¾ ���� �Է��ϼ���.");
                document.userInfo.birth_mm.focus();    
                return false;
            }
            
            if(!document.userInfo.birth_dd.value){
                alert("�¾ ���� �Է��ϼ���.");
                document.userInfo.birth_dd.focus();    
                return false;
            }
            
            if(!document.userInfo.mail1.value){
                alert("�̸����ּҸ� �Է��ϼ���.");
                document.userInfo.mail1.focus();    
                return false;
            }
            
            if(!document.userInfo.phone_num.value){
                alert("�޴���ȭ��ȣ�� �Է��ϼ���.");
                document.userInfo.phone_num.focus();    
                return false;
            }
            
            if(!document.userInfo.address.value){
                alert("�ּҸ� �Է��ϼ���.");
                document.userInfo.address.focus();    
                return false;
            }
            
        }
        
        // ������ �Ѱܼ� ������ ���̽��� �ִ� ȭ��.
        function goMember_insert(){
			location.href="member_insert.jsp";
		}
        // ��� ��ư Ŭ���� �α��� ȭ������ �̵�
        function goLogin(){
			location.href="taxi.jsp"; //later, change location to Login page!!
		}
    </script>
    
</head>
<body>
    <!-- div ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">ȸ������</font></b>
        <br><br><br>
        
        
        <!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
        <!-- ��(�Ķ����) ������ POST ���, ������ �������� JoinPro.jsp -->
        <form method="post" action="member_insert.jsp" name="userInfo" onsubmit="return checkValue()">
            <table>
                <tr>
                    <td id="title">���̵�</td>
                    <td>
                        <input type="text" id="pId" name="id" maxlength="50">
                        <a href = "javascript:idCheck()"> <img src = "img2.jpg"></a> 
                        <!--  <input type="button" value="�ߺ�Ȯ��" onclick="idCheck()"> -->    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">��й�ȣ</td>
                    <td>
                        <input type="password" name="pw" maxlength="50">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">��й�ȣ Ȯ��</td>
                    <td>
                        <input type="password" name="pw_chk" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">�̸�</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">����</td>
                    <td>
                        <input type="text" name="nickname" maxlength="50">
                    </td>
                </tr>
                <tr>
                    <td id="title">����</td>
                    <td>
                        <input type="radio" name="gender" value="��" checked>��
                        <input type="radio" name="gender" value="��" checked>��
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">����</td>
                    <td>
                        <input type="text" name="birth_yy" maxlength="4" placeholder="0000" size="6" >
                        <select name="birth_mm">
                            <option value="">��</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birth_dd" maxlength="2" placeholder="��" size="4" >
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">�̸���</td>
                    <td>
                        <input type="text" name="mail1" maxlength="50">@
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">�޴���ȭ</td>
                    <td>
                        <input type="text" name="phone_num" />
                    </td>
                </tr>
                <tr>
                    <td id="title">�ּ�</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="����"/>  
            <input type="button" value="���" onclick="goLogin()">
        </form>
    </div>
</body>
</html>
