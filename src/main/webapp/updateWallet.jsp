<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String amountStr = request.getParameter("amount");
    int amount = (amountStr != null && !amountStr.isEmpty()) ? Integer.parseInt(amountStr) : 0;

    if (amount > 0) {
        Integer walletBalance = (Integer) session.getAttribute("walletBalance");
        if (walletBalance == null) {
            walletBalance = 0;
        }
        walletBalance += amount;
        session.setAttribute("walletBalance", walletBalance);
    }

    response.sendRedirect("Homepg.jsp");
%>
