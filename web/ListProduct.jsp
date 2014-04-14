<!--
  Copyright (c) 2010, Oracle. All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.

  * Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

  * Neither the name of Oracle nor the names of its contributors
    may be used to endorse or promote products derived from this software without
    specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
  THE POSSIBILITY OF SUCH DAMAGE.
-->

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<link href="<c:url value='/WEB-CONTENT/css/menu-2.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/WEB-CONTENT/js/menu.js' />" rel="javascript" type="text/javascript" />


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Products</title>
    </head>
    <body>

        <h1>List of Products currently in Database</h1>

        <table id="productsListTable" border="3">
            <tr >
                <th bgcolor=>ID</th>
                <th bgcolor=>Descrição</th>
                <th bgcolor=>Valor</th>
                <th bgcolor=>Quantidade</th>
                <th bgcolor=>Custo</th>
                <th bgcolor=>Validade</th>
            </tr>
            <c:forEach var="products" begin="0" items="${requestScope.productList}">
                <tr>
                    <td>${products.id}&nbsp;&nbsp;</td> 
                    <td>${products.descricao}&nbsp;&nbsp;</td> 
                    <td>${products.valor}&nbsp;&nbsp;</td> 
                    <td>${products.quantidade}&nbsp;&nbsp;</td> 
                    <td>${products.custo}&nbsp;&nbsp;</td> 
                    <td>${products.validade}&nbsp;&nbsp;</td> 
                </tr> 

            </c:forEach>

        </table>
        <a href="CreateProduct.jsp"><strong>Create a Product Record</strong></a>
        <a href="index.jsp"><strong>Back to Menu</strong></a>
    </body>
</html>
