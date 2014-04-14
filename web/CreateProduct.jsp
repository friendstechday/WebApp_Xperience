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


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value='/css/menu-1.css' />" rel="stylesheet" type="text/css" />
        <link href="<c:url value='/css/menu-2.css' />" rel="stylesheet" type="text/css" />
        <jsp:include page="header.jspf"/>
        <title>Create a Product Record</title>
    </head>
    <body>
        <div id="indexLeftColumn">
            <div id="welcomeText">
                <h1>Create a Product record</h1>
                <form id="createProductForm" action="CreateProduct" method="post">
                    <table>
                        <tr><td align="left">Descrição</td><td><input type="text" id = "descricao" name="descricao" /></td></tr>
                        <tr><td align="left">Valor</td><td><input type="text" id = "valor" name="valor" /></td></tr>
                        <tr><td align="left">Quantidade</td><td><input type="text" id = "quantidade" name="quantidade" /></td></tr>
                        <tr><td align="left">Custo</td><td><input type="text" id = "custo" name="custo" /></td></tr>
                        <tr><td align="left">Validade</td><td><input type="text" id = "validade" name="validade" /></td></tr>
                    </table>
                    <input type="submit" id="CreateRecord" value="CreateRecord" />
                </form>
                <ul id="sddm">
                    <li><a href="ListProduct"><strong>Go to List of products</strong></a></li>
                    <li><a href="index.jsp"><strong>Back to Menu</strong></a></li>
                </ul>
            </div>
        </div>        
    </body>
    <footer>
        <jsp:include page="footer.jspf"/>
    </footer>
</html>
