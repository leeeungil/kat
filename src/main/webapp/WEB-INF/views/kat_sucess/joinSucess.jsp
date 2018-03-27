<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="join_kat">
	<div id="agree_align">
		<span id="join_size_1">회원가입 완료</span><br>
		<br> <span id="agree">On Table 회원이 되신걸 진심으로 축하드립니다.</span>
		<table id="tabe_align">
			<tr>
				<td><br> <br> <textarea rows="20" cols="120" id="join_agreeinfo" readonly style="resize: none">
							              
  ※ 회원가입 완료
    
 ${joinName.name} 님 회원 가입이 정상적으로 완료 되었습니다.
                                    
 On Table 웹사이트 회원으로 가입해 주셔서 감사 드리며, 고객님들에게 유익하고 다양한 서비스를 드리기 위해 항상 노력 하겠습니다.
    
  감사합니다.
                            </textarea><br> <br> <br> <br> <a
					href="<%=request.getContextPath()%>/kat_main.do" id="joinhome">
						메인 페이지로 </a></td>
			</tr>
		</table>
	</div>
</div>