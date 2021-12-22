<%@ tag pageEncoding="UTF-8" body-content="empty"%>
<%@ tag trimDirectiveWhitespaces="true" %>

<!-- 속성정의 -->
<!-- title속성은 필수, level속성의 타입은 integer이다. -->
<%@ attribute name ="title" required="true" %>
<%@ attribute name ="level" type="java.lang.Integer" %>


<!-- 스크립트 변수로 level속성을 사용 -->
<%
   String headStartTag = null;
   String headEndTag = null;
 if(level == null){
	 headStartTag ="<hl>";
	 headEndTag ="</hl>";
 }else if(level == 1){
	 headStartTag ="<hl>";
	 headEndTag ="</hl>";
 }else if(level == 2){
	 headStartTag ="<h2>";
	 headEndTag ="</h2>";
 }else if(level == 3){
	 headStartTag ="<h3>";
	 headEndTag ="</h3>";
 }

%>

<!-- EL변수로 title속성을 사용 -->
<%=headStartTag %>${title }<%=headEndTag %>