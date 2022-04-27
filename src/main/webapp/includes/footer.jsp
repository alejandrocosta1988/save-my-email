<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.time.LocalDate" %> <%-- JSP directive. Se aplica ao JSP inteiro. --%>

<%
    LocalDate localDate = LocalDate.now();
    int currentYear = localDate.getYear();
%> <%-- JSP scriptlet. Insere um bloco de código Java. --%>

<p>
	&copy; Copyright <%= currentYear %> Alejandro Costa &amp; Ichthys Systems
</p> <%-- JSP expression. Exibe o valor em String de uma expressão --%>