<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
    <head>
    	<meta charset="EUC-KR">
        <link rel = stylesheet href = "create_board.css">
    </head>

    <body>
        <div class="container">
        	<form action="board_insert.jsp" method="post" onsubmit="return formCheck();">
            <div class="row">
            <div class="col-25">
                <label for="fname">�Խ��� ����</label>
            </div>
            <div class="col-75">
                <input type="text" id="title" name="title" placeholder="�Խ��� ����">
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label for="name">�����</label>
            </div>
            <div class="col-75">
                <select id="s_country" name="s_country">
                    <option value = "����">����</option>
                    <option value = "�޼���">�޼���</option>
                    <option value = "�޼���">�޼���</option>
                    <option value = "����">����</option>
                    <option value = "�ϱ�">�ϱ�</option>
                    <option value = "����">����</option>
                    <option value = "������">������</option>
                    <option value = "�߱�">�߱�</option>
                </select>
                <input type = "text" id = "start" name="start" placeholder = "�����">
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label for="country">������</label>
            </div>
            <div class="col-75">
                <select id="d_country" name="d_country">
                <option value = "����">����</option>
                <option value = "�޼���">�޼���</option>
                <option value = "�޼���">�޼���</option>
                <option value = "����">����</option>
                <option value = "�ϱ�">�ϱ�</option>
                <option value = "����">����</option>
                <option value = "������">������</option>
                <option value = "�߱�">�߱�</option>
                </select>
                <input type = "text" id = "dest" name ="dest" placeholder = "������">
            </div>
            </div>
            <div class = "row">
                <div class = "col-25">
                    <label for = "time">�ð�</label>
                </div>
                <div class = "col-75">
                    <input type = "text" placeholder = "ex) 12:34" name="time" id = "time">
                </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label for="subject">�λ�����</label>
            </div>
            <div class="col-75">
                <textarea id="cloth" name="cloth" placeholder="�λ�����" style="height:200px"></textarea>
            </div>
            </div>
            <div class="row" style = "justify-content: flex-end;">
                <input type="submit" value = "�����">
            </div>
            </form>
        </div>
        <script>
		function formCheck() {	 
		    var title = document.forms[0].title.value;
		    var start = document.forms[0].start.value;
	    	var dest = document.forms[0].dest.value;
	   		var time = document.forms[0].time.value;
		    var cloth = document.forms[0].cloth.value;
	 
		    if (title == null || title == ""){                                 
	    	    alert('������ �Է��ϼ���');                                
	       		document.forms[0].title.focus();                        
	        	return false;                                                 
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
		    
		    if (time.match(/^(\d+)[:](\d+)$/ig) == null){                            
		        alert('�ð�(00:00)�� �Է��ϼ���');   
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