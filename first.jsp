<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" href = "firststyle.css">
    </head>
    
    <script type="text/javascript">
    function goTaxi(){
		location.href="taxi.jsp";
	}
    // ��� ��ư Ŭ���� �α��� ȭ������ �̵�
    function goLogin(){
		location.href="LoginPage.jsp";
	}
    function goJoin(){
		location.href="member.jsp";
	}
	</script>
    
	<meta charset="UTF-8">
    <body>
        <img id = "img" src = "3.jpg">
        <div class = "header">
            <div class = "menu">
                <div id = "logo">
                </div>
                <div id = "m_blank">
                </div>
                <div id = "m_link">
                    <ul>
                        <li>
                            <a href = "#"></a>
                        </li>
                        <li>
                            <a href = "#"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class = "main">
            <div class = "up">

            </div>
            <div class = "center">
                <img src = "5.png" style="height: 100px">
                <br>
                Let's take<br> a taxi
                <br>
                <button class = "button" onclick="goTaxi()"><span>�ý� Ÿ�� ����</span></button>
                <button class = "button" onclick="goLogin()"><span>�α���</span></button>
                <button class = "button" onclick="goJoin()"><span>ȸ������</span></button>
            </div>
            <div class = "down">
        
            </div>
        </div>
    </body>
</html>